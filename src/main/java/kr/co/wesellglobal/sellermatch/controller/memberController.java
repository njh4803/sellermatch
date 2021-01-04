package kr.co.wesellglobal.sellermatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class memberController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public ModelAndView join(Model model) {
		
		return new ModelAndView("join");
	}
	
}
