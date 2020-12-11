package kr.co.wesellglobal.sellermatch.controller.rest;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemList;
import kr.co.wesellglobal.sellermatch.model.Users;
import kr.co.wesellglobal.sellermatch.service.MemListService;
import kr.co.wesellglobal.sellermatch.service.TestService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminMemberRestController {
	
	@Autowired
	TestService testService;
	@Autowired
	MemListService memListService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value = "/admin/member/idCheck", method = RequestMethod.POST)
	public Map<String, Object> idCheck(@RequestParam(value = "memId", required = false) String memId) {

		if (!regexHelper.isValue(memId)) {
			return webHelper.getJsonWarning("아이디를 입력하세요.");
		}
		if (!regexHelper.isEmail(memId)) {
			return webHelper.getJsonWarning("아이디는 이메일만 입력 가능합니다.");
		}

		MemList input = new MemList();
		input.setMemId(memId);

		try {
			memListService.idCheck(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}
}
