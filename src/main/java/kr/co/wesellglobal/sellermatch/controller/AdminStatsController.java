package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.AdminStatsDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.AdminStatsService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminStatsController {
	
	@Autowired
	WebHelper webHelper;


	@RequestMapping(value = "/admin/totalStats", method = RequestMethod.GET)
	public ModelAndView adminProjectList(Model model,  @SessionAttribute(value = "member", required = false) MemberDto member){
		
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		if (!member.getMemSort().equals("3")) {
			return webHelper.redirect("temp", "관리자만 접근 가능합니다.");
		}
		
		return new ModelAndView("admin/total_stats");
	}
}
