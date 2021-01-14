package kr.co.wesellglobal.sellermatch.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class memberController {
	
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public ModelAndView join(Model model) {
		
		return new ModelAndView("join");
	}
	
	@RequestMapping(value = "/member/joinMain", method = RequestMethod.GET)
	public ModelAndView joinMain(Model model) {
		
		return new ModelAndView("joinMain");
	}
}
