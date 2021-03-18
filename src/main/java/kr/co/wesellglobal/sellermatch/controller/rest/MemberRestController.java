package kr.co.wesellglobal.sellermatch.controller.rest;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
			@RequestParam(value = "memAddr2", required = false) String memAddr2) {
		
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
		//input.setMemPhoto(item.getFilePath());
		input.setMemState("0");
		input.setMemIp(clientIp);
		if (memNick == "" | memNick == null) {
			String nickName = memId.substring(memId.lastIndexOf("@")+1);
			input.setMemNick(nickName);
		} else {
			input.setMemNick(memNick);
		}
		
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
		
		//String returnURL ="";
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
		webHelper.setSession("member", output);
		
		// 로그인 유지를 체크했다면
		if (continueLogin.equals("on")) {
			int amount =60 *60 *24 *7;
			
            // 쿠키를 생성하고 현재 로그인되어 있을 때 생성되었던 세션의 id를 쿠키에 저장한다.
            webHelper.setCookie("loginCookie", session.getId(), amount);// 단위는 (초)임으로 7일정도로 유효시간을 설정
            
            
            
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
		
		Object obj = webHelper.getSession("member");
		
		if (obj != null) {
			MemberDto memDto = (MemberDto)obj;
			// null이 아닐 경우 제거
			webHelper.removeAllSession(); // 세션 전체를 삭제
			String loginCookie = webHelper.getCookie("member");
			if (loginCookie != null) { // 쿠키가 존재하면
				// 쿠키의 유효시간을 0으로 설정
				webHelper.setCookie("member", null , 0);
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
		return webHelper.getJsonData(data);
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
			String content = email + "님의  초기화된 비밀번호는 " + str + "입니다. 로그인 하신 후 즉시 비밀번호 변경을 진행해주세요.";
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
	
	@RequestMapping(value = "/member/mypage/apply", method = RequestMethod.GET)
	public Map<String, Object> applyList(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyProjId", required = false)String applyProjId) {
		
		ApplyDto input = new ApplyDto();
		input.setApplyProjId(applyProjId);
		
		List<ApplyDto> output = null;
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		try {
			output = applyService.getApplyList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		data.put("output", output);
		
		return webHelper.getJsonData(data);
	}
	 
}
