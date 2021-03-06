package kr.co.wesellglobal.sellermatch.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.ApplyService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
public class memberController {
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	MemberService memberService;
	@Autowired
	ProfileService profileService;
	@Autowired
	IndusService indusService;
	@Autowired
	ProjectService projectService;
	@Autowired
	ApplyService applyService;
	
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public ModelAndView join(Model model
			, @SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member != null) {
			return webHelper.redirect("/", "로그아웃 후 이용해 주세요.");
		}		
		return new ModelAndView("join");
	}
	
	@RequestMapping(value = "/member/myPage", method = RequestMethod.GET)
	public ModelAndView myPage(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
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
		
		return new ModelAndView("myPage");
	}


	@RequestMapping(value = "/member/joinMain", method = RequestMethod.GET)
	public ModelAndView joinMain(Model model
			, @SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member != null) {
			return webHelper.redirect("/", "로그아웃 후 이용해 주세요.");
		}
		return new ModelAndView("joinMain"); 
	}

	@RequestMapping(value = "/member/joinComplete", method = RequestMethod.GET)
	public ModelAndView joinComplete(Model model) {

		return new ModelAndView("joinComplete"); 
	}
}
