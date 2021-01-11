package kr.co.wesellglobal.sellermatch.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminMainController {
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminMain(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		if (!member.getMemSort().equals("3")) {
			return webHelper.redirect(null, "관리자만 접근 가능합니다.");
		}
		
		return new ModelAndView("admin/admin_main");
	}
	
}
