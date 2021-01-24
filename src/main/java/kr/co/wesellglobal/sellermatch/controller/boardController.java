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
public class boardController {
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public ModelAndView board(Model model, @RequestParam(value = "boardType", required = false) String boardType) {
		if (boardType.equals("1")) {
			return new ModelAndView("boardNotice");
		}
		if (boardType.equals("2")) {
			return new ModelAndView("boardFqa");		
		}
		if (boardType.equals("4")) {
			return new ModelAndView("boardOneToOne");
		}
		return new ModelAndView("board");
	}
	
}
