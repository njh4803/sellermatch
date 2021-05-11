package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.NewsLetterDto;
import kr.co.wesellglobal.sellermatch.service.NewsLetterService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminNewsLetterRestController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	NewsLetterService newsLetterService;
	
	@RequestMapping(value = "/admin/newsLetterList", method = RequestMethod.GET)
	public ModelAndView adminNewsLetter() {
		
		return new ModelAndView("/admin/newsLetterList");
	}
	
	@RequestMapping(value = "/admin/newsLetterList2", method = RequestMethod.POST)
	public Map<String, Object> adminNewsLetterList() {
		List<NewsLetterDto> result = null;
		NewsLetterDto input = new NewsLetterDto();
		
		try {
		result = newsLetterService.getNewsLetterList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("data", result);
		
		return webHelper.getJsonData(data);
	}

}
