package kr.co.wesellglobal.sellermatch.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class TempController {
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/temp", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		
		return new ModelAndView("main");
	}
	
	@RequestMapping(value = "/usageFee", method = RequestMethod.GET)
	public ModelAndView usageFee(Model model) {
		
		return new ModelAndView("usageFee");
	}
	
	@RequestMapping(value = "/howUse", method = RequestMethod.GET)
	public ModelAndView howUse(Model model) {
		
		return new ModelAndView("howUse");
	}
}
