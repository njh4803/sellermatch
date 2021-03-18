package kr.co.wesellglobal.sellermatch.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
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
@Controller
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
	public String snsLoginCallback(HttpSession session, HttpServletResponse response, @PathVariable String snsService, Model model, @RequestParam String code)
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

		// 4. 존재시 강제 로그인, 미존재시 가입페이지로
		if(result== null) {
		/*if(result.getGoogleId() == null && result.getKakaoId() == null && result.getNaverId() == null) {*/
			//미존재 회원가입 필요
			if(memSnsCh=="03") {	//구글
				model.addAttribute("msg", "구글계정을 통한 회원가입 후 이용해 주세요");
			} else if (memSnsCh=="04"){ 	//네이버
				model.addAttribute("msg", "네이버계정을 통한 회원가입 후 이용해 주세요");
			} else if (memSnsCh=="02"){ 	//카카오
				model.addAttribute("msg", "카카오계정을 통한 회원가입 후 이용해 주세요");
			}
			return "join";
			
		} else {
			//존재 시 강제 로그인
			
	        if ( session.getAttribute("member") !=null ){
	            // 기존에 member 세션 값이 존재한다면
	            session.removeAttribute("member");// 기존값을 제거해 준다.
	    		
	        }
	        
	    	ProfileDto input2 = new ProfileDto();
	    	ProfileDto profile = null;
			/* profile = profileService.getProfile(input2); */
	    	
	    	// 세션 저장
	    	webHelper.setSession("member", result);
	        
			Map<String, Object> data = new HashMap<String, Object>();
			
			data.put("profile", profile);
			data.put("output", result);

			return "main";

		}
	}

}
