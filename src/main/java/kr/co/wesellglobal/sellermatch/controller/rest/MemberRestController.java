package kr.co.wesellglobal.sellermatch.controller.rest;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.FileDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.ApplyService;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class MemberRestController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	ProfileService profileService;
	@Autowired
	ProjectService projectService;
	@Autowired
	ApplyService applyService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;

	
	/** 아이디 중복검사 (jQuery Form Validate 플러그인용) */
	// controller에서 out 객체의 출력결과를 웹브라우저에게 전달할 수 있게 하는 옵션
	@ResponseBody
	@RequestMapping(value = "/member/idCheck", method = RequestMethod.POST)
	public void idUniqueCheckjQuery(HttpServletResponse response,
			// 아이디
			@RequestParam(value = "memberId", required = false) String memId) {

		MemberDto input = new MemberDto();
		input.setMemId(memId);
		String result = "true";

		try {
			memberService.idCheck(input);
		} catch (Exception e) {
			result = "false";
		}

		// out객체를 생성하여 문자열을 직접 출력함
		try {
			response.getWriter().print(result);
		} catch (IOException e) {
		}
	}

	/** 닉네임 중복검사 */
	@ResponseBody
	@RequestMapping(value = "/member/nickCheck", method = RequestMethod.POST)
	public void nickUniqueCheckjQuery(HttpServletResponse response,
			// 닉네임
			@RequestParam(value = "memNick", required = false) String memNick) {

		MemberDto input = new MemberDto();
		input.setMemNick(memNick);
		String result = "true";

		try {
			memberService.nickCheck(input);
		} catch (Exception e) {
			result = "false";
		}

		// out객체를 생성하여 문자열을 직접 출력함
		try {
			response.getWriter().print(result);
		} catch (IOException e) {
		}
	}	
	
	@RequestMapping(value = "/member/join", method = RequestMethod.POST)
	public Map<String, Object> adminJoin(HttpServletRequest request, 
			@RequestParam(value = "memPhoto", required = false) MultipartFile memPhoto,
			@RequestParam(value = "memberId", required = false) String memId,
			@RequestParam(value = "memPw_confirm", required = false) String memPw,
			@RequestParam(value = "memName", required = false) String memName,
			@RequestParam(value = "memNick", required = false) String memNick,
			@RequestParam(value = "memTel", required = false) String memTel,
			@RequestParam(value = "memRname", required = false) String memRname,
			@RequestParam(value = "memCountry", required = false) String memCountry,
			@RequestParam(value = "memNation", required = false) String memNation,
			@RequestParam(value = "memSort", required = false) String memSort,
			@RequestParam(value = "memPost", required = false) String memPost,
			@RequestParam(value = "memAddr", required = false) String memAddr,
			@RequestParam(value = "memAddr2", required = false) String memAddr2,
			@RequestParam(value = "memSnsCh", required = false) String memSnsCh,
			@RequestParam(value = "googleId", required = false) String googleId,
			@RequestParam(value = "naverId", required = false) String naverId,
			@RequestParam(value = "kakaoId", required = false) String kakaoId
			) {
		
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		
		String clientIp = webHelper.getClientIP(request);
		
		try {
			//item = webHelper.saveMultipartFile(memPhoto);
		} catch (NullPointerException e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		
		
		MemberDto input = new MemberDto();
		input.setMemId(memId);
		input.setMemPw(memPw);
		input.setMemName(memName);
		input.setMemTel(memTel);
		input.setMemRname(memRname);
		input.setMemClass("0");
		input.setMemSort(memSort);
		input.setMemCountry(memCountry);
		input.setMemNation(memNation);
		input.setMemPost(memPost);
		input.setMemAddr(memAddr);
		input.setMemAddr2(memAddr2);
		input.setMemRname("1");
		//input.setMemPhoto(item.getFilePath());
		input.setMemState("0");
		input.setMemIp(clientIp);
		if (memNick == "" | memNick == null) {
			String nickName = memId.substring(memId.lastIndexOf("@")+1);
			input.setMemNick(nickName);
		} else {
			input.setMemNick(memNick);
		}
		//SNS 회원가입 추가
		input.setGoogleId(googleId);//구글아이디
		input.setNaverId(naverId);//네이버아이디
		input.setKakaoId(kakaoId);//카카오아이디
		input.setMemSnsCh(memSnsCh);	//가입 SNS채널
		
		
		// 프로필
		ProfileDto input2 = new ProfileDto();
		input2.setProfileId(webHelper.getUniqueId("PF-", Integer.parseInt(memSort)));
		input2.setMemNick(input.getMemNick());
		input2.setProfileMemId(memId);
		input2.setProfileGrade("1");
		input2.setProfileChChk("0");
		input2.setProfileCareer("0");
		input2.setProfileSaleChk("0");
		input2.setProfileBizCerti("0");
		input2.setProfileState("1");
		input2.setProfileSort(memSort);
		
		
		try {
			memberService.addMember(input);
			profileService.addProfile(input2);

			String content = 
				"<div style='margin:auto;padding:0;width:700px;'>"
				+ "<table width='700' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;border:1px solid #bcbcbc;text-align:centen;'>"
			    + "<tbody><tr><td style='padding:0;margin:0;'>"
			    + "<table width='698' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
			    + "<tbody><tr><td width='37' style='padding:0;margin:0;'></td><td width='624' style='padding:0;margin:0;'>"
			    + "<table width='624' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
			    + "<tbody><tr><td style='padding:32px 0;margin:0;text-align:right;'><img style='padding:0;margin:0;vertical-align:top;' src='https://sellermatch.co.kr/assets/img/sellermatch_logo.png' alt='샐러매치' width='250px' loading='lazy'></td></tr>"
			    + "<tr><td style='padding:35px 0 0;margin:0;border-top:1px solid #999ea3;'>"
			    + "<p style='padding:0;margin:0 0 20px;text-align:center;font-size:34px;color:#333e48;line-height:45px;font-family:'Malgun Gothic';letter-spacing:-2px;'>셀러매치 가입을 환영합니다.</p>"
			    + "<p style='padding:0;margin:0 0 35px;text-align:center;font-size:15px;color:#333e48;font-family:'Malgun Gothic';letter-spacing:-1px;font-weight: bold;'>회원가입 안내</p>"
			    + "<table width='624' border='0' cellspacing='0' cellpadding='0' style='margin:0;padding:0;'>"
			    + "<tbody><tr><td style='padding:40px 25px 40px 40px;margin:0;text-align:left;background:#f5f5f6;'>"
			    + "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>@@@@@@@@@ 님 안녕하세요.<br>셀러매치 가입을 진심으로 환영합니다!</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>판매자와 공급자를 잇는 공간,</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>셀러매치는 단순한 도매사이트가 아닙니다.</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>거래처 매칭 1회만 등록하면</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>가장 쉽고, 빠르고, 효율적인 거래를 할 수 있습니다.<br><br>- 돈되는, 팔만한 물건 찾기 OK</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>- 잘파는, 검증된 판매자 찾기 OK</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>- 조건에 맞는 공급제안 받기 OK</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>- 한 번 등록, 간편한 제안서 보내기 OK</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><b><span style='font-size: 14pt;'>불필요한 시간을 절약하세요</span></b></p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>"
			    + "<b><span style='font-size: 14pt;'>커머스의 즐거움! 셀러매치가 함께합니다</span></b></p>"
			    + "</td></tr></tbody></table>"
			    + "</td></tr><tr><td style='padding:0 0 35px;margin:0;'>"
			    + "<p style='margin:35px 0 0;padding:0;text-align:center;color:#989ea3;font-size:11px;line-height:16px;font-family:'Malgun Gothic';letter-spacing:-1px;'>본 메일은 발신 전용 메일입니다.<br></p>"
			    + "</td></tr></tbody></table>"
			    + "</td><td width='37' style='padding:0;margin:0;'></td></tr></tbody></table>"
			    + "</td></tr><tr><td style='padding:25px 0 25px;margin:0;background:#f5f5f6;text-align:center;'>"
			    + "<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>위셀글로벌(주)</span></p>"
			    + "<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>서울특별시 강남구 언주로 147길 43 (호성빌딩 1층)</span></p>"
			    + "<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>TEL. 02-515-0923&nbsp; &nbsp; FAX. 0303-3445-2236</span></p>"
			    + "<p style='margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>"
			    + "</span></p><p style='text-align: left; margin-top: 10px; color: rgb(152, 158, 163); font-size: 11px; font-family: Malgun Gothic; letter-spacing: -0.5px; margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>Copyright WeSellGlobal All Rights Reserved.</span></p>"
			    + "</td></tr></tbody></table></div>";
			
			String subject = "셀러매치 가입을 환영합니다.";
			mailHelper.sendMail(memId, subject, content);	

		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/** 4) 결과 표시 */
		return webHelper.getJsonData();
	}

	
	@RequestMapping(value = "/member/editOk", method = RequestMethod.POST)
	public Map<String, Object> editOk(@RequestParam(value = "memPhoto", required = false) MultipartFile memPhoto,
			@RequestParam(value = "memId", required = false) String memId,
			@RequestParam(value = "memPw_confirm", required = false) String memPw,
			@RequestParam(value = "memName", required = false) String memName,
			@RequestParam(value = "memNick", required = false) String memNick,
			@RequestParam(value = "memTel", required = false) String memTel,
			@RequestParam(value = "memRname", required = false) String memRname,
			@RequestParam(value = "memCountry", required = false) String memCountry,
			@RequestParam(value = "memNation", required = false) String memNation,
			@RequestParam(value = "memSort", required = false) String memSort,
			@RequestParam(value = "memPost", required = false) String memPost,
			@RequestParam(value = "memAddr", required = false) String memAddr,
			@RequestParam(value = "memAddr2") String memAddr2) {
		
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
			
		try {
			if (memPhoto != null && memPhoto.getSize() != 0) {
				item = webHelper.saveMultipartFile(memPhoto);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		MemberDto input = new MemberDto();
		if (memPhoto != null && memPhoto.getSize() != 0) {
			input.setMemPhoto(item.getFilePath());
		}
		input.setMemId(memId);
		// 공백이나 null이 아니면
		if (regexHelper.isValue(memPw)) {
			input.setMemPw(memPw);
		}
		input.setMemName(memName);
		input.setMemNick(memNick);
		input.setMemTel(memTel);
		input.setMemRname(memRname);
		input.setMemSort(memSort);
		input.setMemCountry(memCountry);
		input.setMemNation(memNation);
		input.setMemPost(memPost);
		input.setMemAddr(memAddr);
		input.setMemAddr2(memAddr2);
		
		try {
			memberService.editMember(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/** 4) 결과 표시 */
		return webHelper.getJsonData();
	}
	
	
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public Map<String, Object> adminLogin(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "memId", required = false) String memId,
			@RequestParam(value = "memPw", required = false) String memPw,
			@RequestParam(value = "continueLogin", defaultValue = "off") String continueLogin) {
		
		if (!regexHelper.isValue(memId)) {
			return webHelper.getJsonWarning("아이디를 입력하세요.");
		}
		if (!regexHelper.isValue(memPw)) {
			return webHelper.getJsonWarning("비밀번호를 입력하세요.");
		}
		
		
        if ( session.getAttribute("member") !=null ){
            // 기존에 member 세션 값이 존재한다면
        	session.removeAttribute("member");// 기존값을 제거해 준다.
        }
		
		// 이전페이지 주소 가져오기
		String referer = request.getHeader("referer");
		
		MemberDto input = new MemberDto();
		input.setMemId(memId);
		input.setMemPw(memPw);
		
		MemberDto output = null;
		
		ProfileDto input2 = new ProfileDto();
		
		ProfileDto profile = null;
		
		try {
			output = memberService.login(input);
			
			input2.setProfileSort(input.getMemSort());
			input2.setProfileMemId(memId);
			profile = profileService.getProfile(input2);

		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		// 세션 저장
		session.setAttribute("member", output);
		session.setAttribute("profile", profile);
		
		session.setAttribute("profileId", profile.getProfileId());
		
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
			
			input.setSessionLimit(sessionLimit);
			input.setSessionKey(session.getId());
			try {
				memberService.keepLogin(input);
			} catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}
		}		

		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("referer", referer);
		data.put("profile", profile);
		data.put("output", output);

		return webHelper.getJsonData(data);
	}
	/** 로그아웃 */
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public Map<String, Object> logout(HttpSession session,HttpServletRequest request, 
			HttpServletResponse response) {
		
		Object obj = session.getAttribute("member");
		
		if (obj != null) {
			MemberDto memDto = (MemberDto)obj;
			// null이 아닐 경우 제거
			session.removeAttribute("member");
            session.invalidate();// 세션 전체를 날려버림
            //쿠키를 가져와보고
            Cookie loginCookie = WebUtils.getCookie(request,"loginCookie");
			
			
			 if (loginCookie != null) { // 쿠키가 존재하면 
				// null이 아니면 존재하면
				loginCookie.setPath("/");
				// 쿠키는 없앨 때 유효시간을 0으로 설정 invalidate같은거 없음.
				loginCookie.setMaxAge(0);
				// 쿠키 설정을 적용한다.
				response.addCookie(loginCookie);
				 
				// 회원 테이블에서도 유효기간을 현재시간으로 다시 세팅 
				Date date =new Date(System.currentTimeMillis());
			 
				MemberDto input = new MemberDto();
				input.setMemId(memDto.getMemId());
				input.setSessionKey(session.getId());
				input.setSessionLimit(date);
				 
				try {
					memberService.keepLogin(input);
				} catch (Exception e) {
					e.printStackTrace(); 
				} 
			}
		}
		
		// 이전페이지 주소 가져오기
		String referer = request.getHeader("referer");
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("referer", referer);
		return null;
	}
	
	/** id 찾기 */
	@RequestMapping(value = "/idFind", method = RequestMethod.GET)
	public Map<String, Object> idFind(@RequestParam(value = "memTel", required = false) String memTel) {
		MemberDto input = new MemberDto();
		input.setMemTel(memTel);
		
		String result = null;
		
		try {
			result = memberService.idFindService(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("result", result);

		return webHelper.getJsonData(data);
	}
	
	
	/** 비밀번호 찾기*/
	@RequestMapping(value = "/pwFind", method = RequestMethod.POST)
	public Map<String, Object> pwFind(@RequestParam(value = "memId", required = false) String email) {
		if (!regexHelper.isEmail(email)) {
			return webHelper.getJsonWarning("이메일이 잘못되었습니다.");
		}
		MemberDto input = new MemberDto();
		input.setMemId(email);
		
		// 임시 비밀번호를 위한 난수 생성
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

		String str = "";

		int idx = 0;
		for (int i = 0; i < 10; i++) {
			idx = (int) (charSet.length * Math.random());
			str += charSet[idx];
		}
		//
		
		input.setMemPw(str);
		
		try {
			memberService.pwChangeService(input);
			String content = 
					"<div style='margin:auto;padding:0;width:700px;'>"
					+"<table width='700' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;border:1px solid #bcbcbc;text-align:centen;'>"
					+"<tbody><tr><td style='padding:0;margin:0;'>"
					+"<table width='698' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
					+"<tbody><tr><td width='37' style='padding:0;margin:0;'></td><td width='624' style='padding:0;margin:0;'>"
			        +"<table width='624' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
	                +"<tbody><tr><td style='padding:32px 0;margin:0;text-align:right;'>"
	                +"<img style='padding:0;margin:0;vertical-align:top;' src='https://sellermatch.co.kr/assets/img/sellermatch_logo.png' alt='샐러매치' width='250px' loading='lazy'>"
	                +"</td></tr><tr><td style='padding:35px 0 0;margin:0;border-top:1px solid #999ea3;'>"
	                +"<p style='padding:0;margin:0 0 35px;text-align:center;font-size:34px;color:#333e48;line-height:45px;font-family:'Malgun Gothic';letter-spacing:-2px;font-weight: bold;'>비밀번호 찾기</p>"
                    +"<table width='624' border='0' cellspacing='0' cellpadding='0' style='margin:0;padding:0;'>"
                    +"<tbody><tr><td style='padding: 40px 40px 40px 40px;margin:0;text-align:left;background:#f5f5f6;'>"
			        +"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>안녕하세요, 셀러매치입니다.</p>"
			        +"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>회원님의 임시 비밀번호를 발급해드리오니</p>"
			        +"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>로그인 후 비밀번호를 변경하여 주십시오.</p>"
			        +"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p>"
			        +"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p>"
			        +"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>"
			        +"<span style='font-size: 18pt;'><b>임시 비밀번호&nbsp; &nbsp;"+str+"</b></span></p>"
	                +"</td></tr></tbody></table>"
			        +"</td></tr><tr><td style='padding:0 0 35px;margin:0;'>" 
	                +"<p style='margin:35px 0 0;padding:0;text-align:center;color:#989ea3;font-size:11px;line-height:16px;font-family:'Malgun Gothic';letter-spacing:-1px;'>본 메일은 발신 전용 메일입니다.<br></p>"
			        +"</td></tr></tbody></table>"
			        +"</td><td width='37' style='padding:0;margin:0;'></td></tr></tbody></table>"
			        +"</td></tr><tr><td style='padding: 25px 0 25px;margin:0;background:#f5f5f6;text-align:center;'>"
			        +"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>위셀글로벌(주)</span></p>"
			        +"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>서울특별시 강남구 언주로 147길 43 (호성빌딩 1층)</span></p>"
			        +"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>TEL. 02-515-0923&nbsp; &nbsp; FAX. 0303-3445-2236</span></p>"
			        +"<p style='margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>"
			        +"</span></p><p style='text-align: left; margin-top: 10px; color: rgb(152, 158, 163); font-size: 11px; font-family: Malgun Gothic; letter-spacing: -0.5px; margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>Copyright WeSellGlobal All Rights Reserved.</span></p>"
			        +"</td></tr></tbody></table></div>";
			String subject = "SellerMatch 비밀번호 찾기 메일";
			mailHelper.sendMail(email, subject, content);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}
	
	
	@RequestMapping(value = "/member/mypage/profile", method = RequestMethod.GET)
	public Map<String, Object> myProfile(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(member.getMemId());
		
		ProfileDto output = null;
		Map<String, Object> data = new HashMap<String, Object>();
		
		if (member.getMemSort() == "1" | member.getMemSort() == "2") {
			input.setProfileSort(member.getMemSort());
		}
		
		try {
			output = profileService.getProfile(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		data.put("output", output);
		
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/member/mypage/joinInfo", method = RequestMethod.GET)
	public Map<String, Object> myJoinInfo(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		MemberDto input = new MemberDto();
		input.setMemId(member.getMemId());
		
		MemberDto output = null;
		Map<String, Object> data = new HashMap<String, Object>();
		
		try {
			output = memberService.getMember(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		data.put("output", output);
		
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/member/mypage/project", method = RequestMethod.GET)
	public Map<String, Object> myProject(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState) {
		
		ProjectDto input = new ProjectDto();
		input.setProjMemId(member.getMemId());
		
		List<ProjectDto> output = null;
		
		ApplyDto input2 = new ApplyDto();
		input2.setApplyMemId(member.getMemId());
		input2.setApplyType(applyType);
		input2.setApplyProjState(applyProjState);
		
		List<ApplyDto> output2 = null;
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		try {
			output = projectService.getProjectList(input);
			output2 = applyService.getApplyList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}

		data.put("output", output);
		data.put("output2", output2);
		data.put("memSort", member.getMemSort());
		
		return webHelper.getJsonData(data);
	}
	 
}
