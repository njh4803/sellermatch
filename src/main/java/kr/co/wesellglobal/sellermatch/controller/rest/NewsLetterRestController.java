package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.NewsLetterDto;
import kr.co.wesellglobal.sellermatch.service.NewsLetterService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class NewsLetterRestController {
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	NewsLetterService newsLetterService;
	
	@RequestMapping(value = "/newsLetter", method = RequestMethod.POST)
	public Map<String, Object> addNewsLetter(
			@RequestParam(value = "email1", required = false) String email1,
			@RequestParam(value = "email2", required = false) String email2) throws Exception {
		
		NewsLetterDto input = new NewsLetterDto();
		
		input.setNewsLetterEmail(email1+"@"+email2);
		input.setNewsLetterAgreeYN("Y");
		
		try {
			newsLetterService.addNewsLetter(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		return webHelper.getJsonData(data);
	}
}
