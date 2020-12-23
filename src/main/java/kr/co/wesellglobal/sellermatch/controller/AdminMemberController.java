package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminMemberController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;

	
	@RequestMapping(value = "/admin/memberList", method = RequestMethod.GET)
	public ModelAndView adminMemberList(Model model,  @SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		MemberDto input = new MemberDto();
		
		//목록조회
		
		List<MemberDto> output = null;
		try {
			output = memberService.getMemberList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/member_list");
	}
}
