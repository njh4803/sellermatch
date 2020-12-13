package kr.co.wesellglobal.sellermatch.controller.rest;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
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
	
	/** 아이디 중복검사 (jQuery Form Validate 플러그인용) */
	// controller에서 out 객체의 출력결과를 웹브라우저에게 전달할 수 있게 하는 옵션
	@ResponseBody
	@RequestMapping(value = "/admin/member/idCheck", method = RequestMethod.POST)
	public void idUniqueCheckjQuery(HttpServletResponse response,
			// 아이디
			@RequestParam(value = "memId", required = false) String memId) {

		MemList input = new MemList();
		input.setMemId(memId);
		String result = "true";

		try {
			memListService.idCheck(input);
		} catch (Exception e) {
			result = "false";
		}

		// out객체를 생성하여 문자열을 직접 출력함
		try {
			response.getWriter().print(result);
		} catch (IOException e) {
		}
	}
	
	@RequestMapping(value = "/admin/member/idCheck", method = RequestMethod.POST)
	public Map<String, Object> join(@RequestParam(value = "memPhoto", defaultValue = "user.png") MultipartFile memPhoto){
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		
		try {
			item = webHelper.saveMultipartFile(memPhoto);
		} catch (NullPointerException e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		//Map<String, Object> data = new HashMap<String, Object>();
		//data.put("item", item);

		/** 4) 결과 표시 */
		return webHelper.getJsonData();
	}
}
