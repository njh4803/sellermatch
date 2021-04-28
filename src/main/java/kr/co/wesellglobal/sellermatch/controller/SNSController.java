package kr.co.wesellglobal.sellermatch.controller;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.auth.SNSLogin;
import kr.co.wesellglobal.sellermatch.auth.SnsValue;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.SnsMember;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class SNSController {

	private static final Logger logger = LoggerFactory.getLogger(SNSController.class);

	@Autowired
	MemberService memberService;
	@Autowired
	ProfileService profileService;
	@Autowired
	WebHelper webHelper;
	@Inject
	private SnsValue naverSns;
	@Inject
	private SnsValue googleSns;
	@Inject
	private SnsValue kakaoSns;

	@RequestMapping(value = "/auth/{snsService}/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView snsLoginCallback(HttpSession session, HttpServletResponse response, 
			@PathVariable String snsService, Model model, 
			@RequestParam String code,
			@RequestParam(value = "continueLogin", defaultValue = "on") String continueLogin)
			throws Exception {

		logger.info("snsLoginCallback: service={}", snsService);
		SnsValue sns = null;
		String memSnsCh = "01";

		if (StringUtils.equals("naver", snsService)) {
			sns = naverSns;
			memSnsCh = "04";
		} else if (StringUtils.equals("kakao", snsService)) {
			sns = kakaoSns;
			memSnsCh = "02";
		} else if (StringUtils.equals("google", snsService)) {
			sns = googleSns;
			memSnsCh = "03";
		}

		// 1. code 이용하여 acess_token 받기
		// 2. access_token 이용하여 사용자 프로필 받기

		SNSLogin snslogin = new SNSLogin(sns);
		SnsMember member = snslogin.getUserProfile(code);
		member.setMemSnsCh(memSnsCh);

		model.addAttribute("result", member);

		// 3. DB에 해당 유저 존재하는지 체크
		MemberDto input = new MemberDto();
		input.setMemId(member.getMemId());
		MemberDto result;
		result = memberService.loginSNS(input);
		
		if(result.getMemState().equals("1")) {
			response.setContentType("text/html; charset=euc-kr");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('" + "탈퇴한 회원입니다." + "'); location.href='" + "/" + "';</script> ");
	        out.flush();

		return new ModelAndView("Main");
		}
		
		// 4. 존재시 강제 로그인, 미존재시 가입페이지로
		if(result!= null) {
			//존재 시 강제 로그인
	        if ( session.getAttribute("member") !=null ){
	            // 기존에 member 세션 값이 존재한다면
	            session.removeAttribute("member");// 기존값을 제거해 준다.
	        } 

	        if (!result.getMemSnsCh().equals(memSnsCh)) {
	        	//접근한 SNS 채널이 달라서 로그인 실패
	        	model.addAttribute("failLogin", "가입했던 SNS를 확인해주세요.");
	        	
	        } else {
	        	
		        ProfileDto input2 = new ProfileDto();
				ProfileDto profile = null;
				input2.setProfileSort(input.getMemSort());
				input2.setProfileMemId(member.getMemId());
				profile = profileService.getProfile(input2);
				
				// 세션 저장
		    	session.setAttribute("member", result);
		    	session.setAttribute("profile", profile);
		    	
				log.debug("member 세션 생성 완료 = " + webHelper.getSession("member"));
				// 로그인 유지를 체크했다면
				if (continueLogin.equals("on")) {
					int amount =60 *60 *24 *7;
		            // 쿠키를 생성하고 현재 로그인되어 있을 때 생성되었던 세션의 id를 쿠키에 저장한다.
					Cookie cookie =new Cookie("loginCookie", session.getId());
		            // 쿠키를 찾을 경로를 컨텍스트 경로로 변경해 주고...
		            cookie.setPath("/");
		            cookie.setMaxAge(amount);// 단위는 (초)임으로 7일정도로 유효시간을 설정해 준다.
		            // 쿠키를 적용해 준다.
		            response.addCookie(cookie);
		            //webHelper.setCookie("loginCookie", session.getId(), amount);// 단위는 (초)임으로 7일정도로 유효시간을 설정
		            log.debug("loginCookie 쿠키 생성 완료 = " + cookie.getName());
		            
		            
		            // currentTimeMills()가 1/1000초 단위임으로 1000곱해서 더해야함
		            Date sessionLimit =new Date(System.currentTimeMillis() + (1000*amount));
					
		            System.out.println("~~~~~~~~~~~~~~");
					input.setSessionLimit(sessionLimit);
					input.setSessionKey(session.getId());
					try {
						memberService.keepLogin(input);
					} catch (Exception e) {
						return new ModelAndView ("main");
					}
				}
	        }
	    	
	        return new ModelAndView ("main");
		} else {
			//미존재 회원가입 필요
			if(memSnsCh=="03") {	//구글
				model.addAttribute("msg", "구글로 회원가입 후<br>이용해 주세요");
			} else if (memSnsCh=="04"){ 	//네이버
				model.addAttribute("msg", "네이버로 회원가입 후<br>이용해 주세요");
			} else if (memSnsCh=="02"){ 	//카카오
				model.addAttribute("msg", "카카오로 회원가입 후<br>이용해 주세요");
			}
			return new ModelAndView("join");
		}
	}

}
