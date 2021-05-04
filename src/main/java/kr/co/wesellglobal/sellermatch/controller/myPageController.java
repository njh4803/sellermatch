package kr.co.wesellglobal.sellermatch.controller;

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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.myPageDto;
import kr.co.wesellglobal.sellermatch.service.ApplyService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.myPageService;

@RestController
public class myPageController {

	@Autowired
	MemberService memberService;
	@Autowired
	IndusService indusService;
	@Autowired
	ApplyService applyService;
	@Autowired
	myPageService myPageService;
	@Autowired
	ProfileService profileService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;

	@RequestMapping(value = "/myPage/joinManage", method = RequestMethod.GET)
	public ModelAndView joinManage(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}

		MemberDto output = null;

		try {
			output = memberService.getMember(member);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("output", output);

		return new ModelAndView("joinManage");
	}

	@RequestMapping(value = "/myPage/profileManage", method = RequestMethod.GET)
	public ModelAndView profileManage(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(member.getMemId());

		ProfileDto output = null;

		if (member.getMemSort() == "1" | member.getMemSort() == "2") {
			input.setProfileSort(member.getMemSort());
		}
		try {
			output = profileService.getProfile(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		model.addAttribute("member", member);

		return new ModelAndView("profileManage");
	}

	@RequestMapping(value = "/myPage/delngManage/applyList", method = RequestMethod.GET)
	public Map<String, Object> applyList(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyProjId", required = false) String applyProjId) {

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
		data.put("memSort", member.getMemSort());

		return webHelper.getJsonData(data);
	}

	@RequestMapping(value = "/myPage/delngManage/registDelng2", method = RequestMethod.GET)
	public Map<String, Object> myProject(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false) String applyType,
			@RequestParam(value = "applyProjState", required = false) String applyProjState) {

		myPageDto input = new myPageDto();
		input.setProjMemId(member.getMemId());

		List<myPageDto> output = null;

		ApplyDto input2 = new ApplyDto();
		input2.setApplyMemId(member.getMemId());
		input2.setApplyType(applyType);
		input2.setApplyProjState(applyProjState);

		List<ApplyDto> output2 = null;

		Map<String, Object> data = new HashMap<String, Object>();

		try {
			output = myPageService.getMyProjectList(input);
			output2 = applyService.getApplyList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}

		data.put("output", output);
		data.put("output2", output2);
		data.put("memSort", member.getMemSort());

		return webHelper.getJsonData(data);
	}

	@RequestMapping(value = "/myPage/scrap", method = RequestMethod.POST)
	public Map<String, Object> scrap(@RequestParam(value = "projIdx", required = false) int projIdx,
			@SessionAttribute(value = "member", required = false) MemberDto member) {

		myPageDto input = new myPageDto();
		input.setProjIdx(projIdx);
		input.setMemIdx(member.getMemIdx());
		input.setMemId(member.getMemId());

		try {
			myPageService.addScrap(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}

	@RequestMapping(value = "/myPage/scrapDupCheck", method = RequestMethod.GET)
	public Map<String, Object> scrapDupCheck(@RequestParam(value = "projIdx", required = false) int projIdx,
			@SessionAttribute(value = "member", required = false) MemberDto member) {

		myPageDto input = new myPageDto();
		input.setProjIdx(projIdx);
		input.setMemIdx(member.getMemIdx());
		input.setMemId(member.getMemId());

		int result;
		try {
			result = myPageService.scrapDupCheck(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		Map<String, Object> data = new HashMap<String, Object>();
		data.put("result", result);

		return webHelper.getJsonData(data);
	}

	@RequestMapping(value = "/myPage/scrapList", method = RequestMethod.GET)
	public ModelAndView scrapList(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 8; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		myPageDto input = new myPageDto();
		input.setMemId(member.getMemId());
		input.setProjMemId(member.getMemId());

		List<myPageDto> scrapList = null;
		myPageDto myProjectCount = null;

		try {
			scrapList = myPageService.selectScrapList(input);
			myProjectCount = myPageService.selectpMyProjectCount(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("scrapList", scrapList);
		model.addAttribute("myProjectCount", myProjectCount);
		model.addAttribute("memSort", member.getMemSort());

		return new ModelAndView("scrapList2");
	}

	@RequestMapping(value = "/myPage/myApplyList", method = RequestMethod.GET)
	public ModelAndView myApplyList(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 8; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		myPageDto input = new myPageDto();
		input.setMemId(member.getMemId());
		input.setProjMemId(member.getMemId());

		List<myPageDto> myApplyList = null;
		myPageDto myProjectCount = null;

		try {
			myApplyList = myPageService.selectMyApplyList(input);
			myProjectCount = myPageService.selectpMyProjectCount(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("myApplyList", myApplyList);
		model.addAttribute("myProjectCount", myProjectCount);
		model.addAttribute("memSort", member.getMemSort());

		return new ModelAndView("myApplyList2");
	}

	@RequestMapping(value = "/myPage/myHome", method = RequestMethod.GET)
	public ModelAndView myHome2(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {

		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		
		MemberDto output = null;
		IndusDto input = new IndusDto();
		List<IndusDto> indusList = null;

		ProfileDto input2 = new ProfileDto();
		input2.setProfileMemId(member.getMemId());
		ProfileDto output2 = null;

		if (member.getMemSort() == "1" | member.getMemSort() == "2") {
			input2.setProfileSort(member.getMemSort());
		}

		myPageDto input3 = new myPageDto();
		input3.setProjMemId(member.getMemId());

		List<myPageDto> registedProjectList = null;
		myPageDto myProjectCount = null;

		try {
			output = memberService.getMember(member);
			indusList = indusService.getIndusList(input);
			output2 = profileService.getProfile(input2);
			registedProjectList = myPageService.selectpRegistedProjectList(input3);
			myProjectCount = myPageService.selectpMyProjectCount(input3);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("output2", output2);
		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		model.addAttribute("registedProjectList", registedProjectList);
		model.addAttribute("myProjectCount", myProjectCount);

		return new ModelAndView("myHome");
	}

	@RequestMapping(value = "/myPage/registDelng", method = RequestMethod.GET)
	public ModelAndView delngManage2(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 8; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		myPageDto input = new myPageDto();
		input.setProjMemId(member.getMemId());

		List<myPageDto> registedProjectList = null;
		myPageDto myProjectCount = null;

		try {
			registedProjectList = myPageService.selectpRegistedProjectList(input);
			myProjectCount = myPageService.selectpMyProjectCount(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("registedProjectList", registedProjectList);
		model.addAttribute("myProjectCount", myProjectCount);
		model.addAttribute("memSort", member.getMemSort());

		return new ModelAndView("registDelng2");
	}

	@RequestMapping(value = "/myPage/applyAccept", method = RequestMethod.POST)
	public Map<String, Object> apply(@RequestParam(value = "applyProjId", required = false) String applyProjId,
			@RequestParam(value = "applyId", required = false) String applyId,
			@RequestParam(value = "applyType", required = false) String applyType,
			@RequestParam(value = "applyProjState", required = false) String applyProjState,
			@SessionAttribute(value = "member", required = false) MemberDto member) {

		ApplyDto input = new ApplyDto();
		input.setApplyProjId(applyProjId);
		input.setApplyId(applyId);
		input.setApplyProjState(applyProjState);
		
		ApplyDto outputForMail = new ApplyDto();
		
		try {
			applyService.updateApply(input);
			
			outputForMail = applyService.getAcceptedProjectOwner(input);
			String memSortName = "";
			String email = "";
			
			email = outputForMail.getMemId();
			if(outputForMail.getMemSort() == "1") {
				memSortName = "판매자";
			} else {
				memSortName = "공급자";
			}
			
			//승인 시 상대방에게 메일 발송
			String content =  "<div style='margin:auto;padding:0;width:700px;'>"
					+"<table width='700' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;border:1px solid #bcbcbc;text-align:centen;'> "
					+"<tbody><tr><td style='padding:0;margin:0;'> "
					+"<table width='698' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'> "
					+"<tbody><tr><td width='37' style='padding:0;margin:0;'></td><td width='624' style='padding:0;margin:0;'> "
					+"<table width='624' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'> "
					+"<tbody><tr><td style='padding:32px 0;margin:0;text-align:right;'> "
					+"<img style='padding:0;margin:0;vertical-align:top;' src='https://sellermatch.co.kr/assets/img/sellermatch_logo.png' alt='샐러매치' width='250px' loading='lazy'> "
					+"</td></tr><tr><td style='padding:35px 0 0;margin:0;border-top:1px solid #999ea3;'> "
					+"<p style='padding:0;margin:0 0 35px;text-align:center;font-size:34px;color:#333e48;line-height:45px;font-family:'Malgun Gothic';letter-spacing:-2px;font-weight: bold;'>거래매칭 승인 알림</p> "
					+"<table width='624' border='0' cellspacing='0' cellpadding='0' style='margin:0;padding:0;'> "
					+"<tbody><tr><td style='padding: 40px 40px 40px 40px;margin:0;text-align:left;background:#f5f5f6;'> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>안녕하세요, 셀러매치입니다.</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>회원님이 지원하신 ["+ outputForMail.getProjTitle() +"] 매칭이 <br>승인되어 안내드립니다.</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>셀러매치에 접속하시어 ["+ memSortName +"] 분의 연락처를 확인하여</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>거래를 진행해 보세요!</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'> <a href='https://sellermatch.co.kr'>https://sellermatch.co.kr</a> <br></p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'> "
					+"</td></tr></tbody></table>   </td></tr><tr><td style='padding:0 0 35px;margin:0;'>  "
					+"<p style='margin:35px 0 0;padding:0;text-align:center;color:#989ea3;font-size:11px;line-height:16px;font-family:'Malgun Gothic';letter-spacing:-1px;'>본 메일은 발신 전용 메일입니다.<br></p> "
					+"</td></tr></tbody></table> "
					+"</td><td width='37' style='padding:0;margin:0;'></td></tr></tbody></table> "
					+"</td></tr><tr><td style='padding: 25px 0 25px;margin:0;background:#f5f5f6;text-align:center;'> "
					+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>위셀글로벌(주)</span></p> "
					+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>서울특별시 강남구 언주로 147길 43 (호성빌딩 1층)</span></p> "
					+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>TEL. 02-515-0923&nbsp; &nbsp; FAX. 0303-3445-2236</span></p> "
					+"<p style='margin-left: 40px;'><span style='color: rgb(154, 154, 154);'> "
					+"</span></p><p style='text-align: left; margin-top: 10px; color: rgb(152, 158, 163); font-size: 11px; font-family: Malgun Gothic; letter-spacing: -0.5px; margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>Copyright WeSellGlobal All Rights Reserved.</span></p> "
					+"</td></tr></tbody></table></div> ";
			String subject = "SellerMatch 거래매칭 승인 결과 발송 메일";
			mailHelper.sendMail(email, subject, content);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}

	@RequestMapping(value = "/myPage/withdraw", method = RequestMethod.GET)
	public ModelAndView withdraw(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {

		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(member.getMemId());

		ProfileDto output = null;

		if (member.getMemSort() == "1" | member.getMemSort() == "2") {
			input.setProfileSort(member.getMemSort());
		}
		try {
			output = profileService.getProfile(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("output", output);
		model.addAttribute("member", member);

		return new ModelAndView("withdraw");
	}

	/** 회원탈퇴 이메일 발송 */
	@RequestMapping(value = "/sendWithdrawMail", method = RequestMethod.POST)
	public Map<String, Object> sendWithdrawMail(@SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "memId", required = false) String email) {

		if (!regexHelper.isEmail(email)) {
			return webHelper.getJsonWarning("이메일이 잘못되었습니다.");
		}

		if (!member.getMemId().equals(email)) {
			return webHelper.getJsonWarning("가입했던 이메일을 작성해주세요.");
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

		input.setWithdrawAuthCode(str);
		try {
			memberService.withDrawAuthCodeUpdate(input);
			String content = "<div style='margin:auto;padding:0;width:700px;'>"
					+ "<table width='700' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;border:1px solid #bcbcbc;text-align:centen;'>"
					+ "<tbody><tr><td style='padding:0;margin:0;'>"
					+ "<table width='698' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
					+ "<tbody><tr><td width='37' style='padding:0;margin:0;'></td><td width='624' style='padding:0;margin:0;'>"
					+ "<table width='624' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
					+ "<tbody><tr><td style='padding:32px 0;margin:0;text-align:right;'>"
					+ "<img style='padding:0;margin:0;vertical-align:top;' src='https://sellermatch.co.kr/assets/img/sellermatch_logo.png' alt='샐러매치' width='250px' loading='lazy'>"
					+ "</td></tr><tr><td style='padding:35px 0 0;margin:0;border-top:1px solid #999ea3;'>"
					+ "<p style='padding:0;margin:0 0 35px;text-align:center;font-size:34px;color:#333e48;line-height:45px;font-family:'Malgun Gothic';letter-spacing:-2px;font-weight: bold;'>회원탈퇴 인증코드</p>"
					+ "<table width='624' border='0' cellspacing='0' cellpadding='0' style='margin:0;padding:0;'>"
					+ "<tbody><tr><td style='padding: 40px 40px 40px 40px;margin:0;text-align:left;background:#f5f5f6;'>"
					+ "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>안녕하세요, 셀러매치입니다.</p>"
					+ "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>회원님의 탈퇴를 위한 인증코드를 발급해드리오니</p>"
					+ "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>인증코드를 복사하여 탈퇴절차를 완료해 주세요.</p>"
					+ "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p>"
					+ "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><br></p>"
					+ "<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>"
					+ "<span style='font-size: 18pt;'><b>인증코드&nbsp; &nbsp;" + str + "</b></span></p>"
					+ "</td></tr></tbody></table>" + "</td></tr><tr><td style='padding:0 0 35px;margin:0;'> "
					+ "<p style='margin:35px 0 0;padding:0;text-align:center;color:#989ea3;font-size:11px;line-height:16px;font-family:'Malgun Gothic';letter-spacing:-1px;'>본 메일은 발신 전용 메일입니다.<br></p>"
					+ "</td></tr></tbody></table>"
					+ "</td><td width='37' style='padding:0;margin:0;'></td></tr></tbody></table>"
					+ "</td></tr><tr><td style='padding: 25px 0 25px;margin:0;background:#f5f5f6;text-align:center;'>"
					+ "<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>위셀글로벌(주)</span></p>"
					+ "<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>서울특별시 강남구 언주로 147길 43 (호성빌딩 1층)</span></p>"
					+ "<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>TEL. 02-515-0923&nbsp; &nbsp; FAX. 0303-3445-2236</span></p>"
					+ "<p style='margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>"
					+ "</span></p><p style='text-align: left; margin-top: 10px; color: rgb(152, 158, 163); font-size: 11px; font-family: Malgun Gothic; letter-spacing: -0.5px; margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>Copyright WeSellGlobal All Rights Reserved.</span></p>"
					+ "</td></tr></tbody></table></div>";
			String subject = "SellerMatch 회원탈퇴 인증코드 발송 메일";
			mailHelper.sendMail(email, subject, content);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}

	// 탈퇴인증코드 확인
	@RequestMapping(value = "/sendAuthConfirm", method = RequestMethod.POST)
	public Map<String, Object> sendAuthConfirm(@SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "authCodeText", required = false) String authCodeText) {
		int result = 0;

		MemberDto input = new MemberDto();
		input.setWithdrawAuthCode(authCodeText);
		input.setMemId(member.getMemId());

		try {
			result = memberService.authConfirm(input);

		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		Map<String, Object> data = new HashMap<String, Object>();

		if (result == 0) {
			return webHelper.getJsonError("인증에 실패했습니다.");
		} else {
			return webHelper.getJsonData(data);
		}

	}

	// 탈퇴처리
	@RequestMapping(value = "/withdraw", method = RequestMethod.POST)
	public Map<String, Object> withdraw(HttpSession session,
			HttpServletRequest request,
			HttpServletResponse response,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			@SessionAttribute(value = "profile", required = false) ProfileDto profile,
			@RequestParam(value = "withdrawReason", required = false) String withdrawReason,
			@RequestParam(value = "withdrawReasonText", required = false) String withdrawReasonText) throws Exception {
		int result = 0;

		MemberDto input = new MemberDto();
		input.setWithdrawReason(withdrawReason);
		input.setWithdrawReasonText(withdrawReasonText);
		input.setMemIdx(member.getMemIdx());
		input.setMemId(member.getMemId());
		input.setMemState("1");
	
		result = memberService.withdraw(input);

		if (result != 0) {
			// 탈퇴 시 세션 전부 날림
			session.removeAttribute("member"); 
			session.removeAttribute("profile");
			session.invalidate();

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
			 
				input.setMemId(input.getMemId());
				input.setSessionKey(session.getId());
				input.setSessionLimit(date);
				 
				try {
					memberService.keepLogin(input);
				} catch (Exception e) {
					e.printStackTrace(); 
				} 
			}

			return webHelper.getJsonData();
		} else {
			return webHelper.getJsonError("탈퇴에 실패했습니다.");
		}
	}
	
	@RequestMapping(value = "/delSession", method = RequestMethod.GET)
	public ModelAndView delSession(HttpSession session, Model model) {
		
		// 탈퇴 시 세션 전부 날림
		session.removeAttribute("member"); 
		session.removeAttribute("profile");
		session.invalidate();
		
		return new ModelAndView("main");
	}
	
	@RequestMapping(value = "/myPage/projectEndList", method = RequestMethod.GET)
	public ModelAndView projectEndList(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 8; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		myPageDto input = new myPageDto();
		input.setProjMemId(member.getMemId());

		List<myPageDto> projectEndList = null;
		myPageDto myProjectCount = null;

		try {
			projectEndList = myPageService.projectEndList(input);	//바꿔야댐
			myProjectCount = myPageService.selectpMyProjectCount(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("projectEndList", projectEndList);				//바꿔야댐
		model.addAttribute("myProjectCount", myProjectCount);
		model.addAttribute("memSort", member.getMemSort());

		return new ModelAndView("projectEndList");
	}
	
	@RequestMapping(value = "/myPage/recommandList", method = RequestMethod.GET)
	public ModelAndView recommandList(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		if (member == null) {
			return webHelper.redirect("/", "로그인 후 이용해 주세요.");
		}
		
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 8; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		myPageDto input = new myPageDto();
		input.setMemId(member.getMemId());
		input.setProjMemId(member.getMemId());

		List<myPageDto> recommandList = null;
		myPageDto myProjectCount = null;

		try {
			if(member.getMemSort().equals("1")) {
				recommandList = myPageService.selectRecommandListForPro(input);	//공급자 제안한 거래
			} else {
				recommandList = myPageService.selectRecommandListForSell(input); //판매자 제안받은 거래
			}
			myProjectCount = myPageService.selectpMyProjectCount(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("recommandList", recommandList);
		model.addAttribute("myProjectCount", myProjectCount);
		model.addAttribute("memSort", member.getMemSort());

		return new ModelAndView("recommandList");
	}
	
	@RequestMapping(value = "/myPage/recommandAccept", method = RequestMethod.POST)
	public Map<String, Object> recommand(@RequestParam(value = "applyProjId", required = false) String applyProjId,
			@RequestParam(value = "applyId", required = false) String applyId,
			@RequestParam(value = "applyType", required = false) String applyType,
			@RequestParam(value = "applyProjState", required = false) String applyProjState,
			@SessionAttribute(value = "member", required = false) MemberDto member) {

		ApplyDto input = new ApplyDto();
		input.setApplyProjId(applyProjId);
		input.setApplyId(applyId);
		input.setApplyProjState(applyProjState);
		ApplyDto outputForMail = new ApplyDto();
		
		try {
			applyService.updateRecommand(input);
			
			outputForMail = applyService.getAcceptedRecommandOwner(input);
			String memSortName = "판매자";
			String email = "";
			
			email = outputForMail.getMemId();

			
			//승인 시 상대방에게 메일 발송
			String content =  "<div style='margin:auto;padding:0;width:700px;'>"
					+"<table width='700' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;border:1px solid #bcbcbc;text-align:centen;'> "
					+"<tbody><tr><td style='padding:0;margin:0;'> "
					+"<table width='698' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'> "
					+"<tbody><tr><td width='37' style='padding:0;margin:0;'></td><td width='624' style='padding:0;margin:0;'> "
					+"<table width='624' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'> "
					+"<tbody><tr><td style='padding:32px 0;margin:0;text-align:right;'> "
					+"<img style='padding:0;margin:0;vertical-align:top;' src='https://sellermatch.co.kr/assets/img/sellermatch_logo.png' alt='샐러매치' width='250px' loading='lazy'> "
					+"</td></tr><tr><td style='padding:35px 0 0;margin:0;border-top:1px solid #999ea3;'> "
					+"<p style='padding:0;margin:0 0 35px;text-align:center;font-size:34px;color:#333e48;line-height:45px;font-family:'Malgun Gothic';letter-spacing:-2px;font-weight: bold;'>거래제안 승인 알림</p> "
					+"<table width='624' border='0' cellspacing='0' cellpadding='0' style='margin:0;padding:0;'> "
					+"<tbody><tr><td style='padding: 40px 40px 40px 40px;margin:0;text-align:left;background:#f5f5f6;'> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>안녕하세요, 셀러매치입니다.</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>회원님이 제안하신 ["+ outputForMail.getProjTitle() +"] 거래가 <br>승인되어 안내드립니다.</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>셀러매치에 접속하시어 ["+ memSortName +"] 분의 연락처를 확인하여</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>거래를 진행해 보세요!</p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><a href='https://sellermatch.co.kr'>https://sellermatch.co.kr</a> <br></p> "
					+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'> "
					+"</td></tr></tbody></table>   </td></tr><tr><td style='padding:0 0 35px;margin:0;'>  "
					+"<p style='margin:35px 0 0;padding:0;text-align:center;color:#989ea3;font-size:11px;line-height:16px;font-family:'Malgun Gothic';letter-spacing:-1px;'>본 메일은 발신 전용 메일입니다.<br></p> "
					+"</td></tr></tbody></table> "
					+"</td><td width='37' style='padding:0;margin:0;'></td></tr></tbody></table> "
					+"</td></tr><tr><td style='padding: 25px 0 25px;margin:0;background:#f5f5f6;text-align:center;'> "
					+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>위셀글로벌(주)</span></p> "
					+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>서울특별시 강남구 언주로 147길 43 (호성빌딩 1층)</span></p> "
					+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>TEL. 02-515-0923&nbsp; &nbsp; FAX. 0303-3445-2236</span></p> "
					+"<p style='margin-left: 40px;'><span style='color: rgb(154, 154, 154);'> "
					+"</span></p><p style='text-align: left; margin-top: 10px; color: rgb(152, 158, 163); font-size: 11px; font-family: Malgun Gothic; letter-spacing: -0.5px; margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>Copyright WeSellGlobal All Rights Reserved.</span></p> "
					+"</td></tr></tbody></table></div> ";
			String subject = "SellerMatch 거래제안 승인 결과 발송 메일";
			mailHelper.sendMail(email, subject, content);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}
}