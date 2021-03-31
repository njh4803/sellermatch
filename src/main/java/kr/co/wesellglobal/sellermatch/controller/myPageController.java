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

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.myPageDto;
import kr.co.wesellglobal.sellermatch.service.ApplyService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.MemberService;
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
	WebHelper webHelper;
	
	@RequestMapping(value = "/myPage/delngManage/registDelng", method = RequestMethod.GET)
	public ModelAndView delngManage(Model model, @SessionAttribute(value = "member", required = false) MemberDto member,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState) {
		
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
	
	
}
