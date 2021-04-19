package kr.co.wesellglobal.sellermatch.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.PageData;
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
	WebHelper webHelper;
	
	@RequestMapping(value = "/myPage/myHome", method = RequestMethod.GET)
	public ModelAndView myHome(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
		MemberDto output = null;
		IndusDto input = new IndusDto();
		List<IndusDto> indusList = null;
		
		try {
			output = memberService.getMember(member);
			indusList = indusService.getIndusList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		
		return new ModelAndView("myHome");
	}
	
	@RequestMapping(value = "/myPage/joinManage", method = RequestMethod.GET)
	public ModelAndView joinManage(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
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
	public ModelAndView profileManage(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
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
	@RequestMapping(value = "/myPage/delngManage/registDelng", method = RequestMethod.GET)
	public ModelAndView delngManage(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState,			
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 8;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
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
		
		return new ModelAndView("registDelng");
	}
	
	@RequestMapping(value = "/myPage/delngManage/applyList", method = RequestMethod.GET)
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
	
	@RequestMapping(value = "/myPage/delngManage/registDelng2", method = RequestMethod.GET)
	public Map<String, Object> myProject(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState) {
		
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
	public Map<String, Object> scrap(
			@RequestParam(value = "projIdx", required = false)int projIdx,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
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
	public Map<String, Object> scrapDupCheck(
			@RequestParam(value = "projIdx", required = false)int projIdx,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
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
	
	@RequestMapping(value = "/myPage/delngManage/scrapList", method = RequestMethod.GET)
	public ModelAndView scrapList(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState,			
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 8;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
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
		
		return new ModelAndView("scrapList");
	}
	
	@RequestMapping(value = "/myPage/delngManage/myApplyList", method = RequestMethod.GET)
	public ModelAndView myApplyList(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState,			
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 8;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
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
		
		return new ModelAndView("myApplyList");
	}
	
	
	@RequestMapping(value = "/myPage/myHome2", method = RequestMethod.GET)
	public ModelAndView myHome2(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
		MemberDto output = null;
		IndusDto input = new IndusDto();
		List<IndusDto> indusList = null;
		
		ProfileDto input2 = new ProfileDto();
		input2.setProfileMemId(member.getMemId());
		ProfileDto profile = null;
		
		if (member.getMemSort() == "1" | member.getMemSort() == "2") {
			input2.setProfileSort(member.getMemSort());
		}
		
		try {
			output = memberService.getMember(member);
			indusList = indusService.getIndusList(input);
			profile = profileService.getProfile(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("profile", profile);
		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		
		return new ModelAndView("myHome2");
	}
}
