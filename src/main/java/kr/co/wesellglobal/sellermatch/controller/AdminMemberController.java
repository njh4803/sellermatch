package kr.co.wesellglobal.sellermatch.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemList;
import kr.co.wesellglobal.sellermatch.model.Users;
import kr.co.wesellglobal.sellermatch.service.MemListService;
import kr.co.wesellglobal.sellermatch.service.TestService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminMemberController {
	
	@Autowired
	TestService testService;
	@Autowired
	MemListService memListService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/admin/member", method = RequestMethod.GET)
	public ModelAndView adminMember(Model model) {
		Users input = new Users();
		input.setId(1);
		Users output = null;
		
		try {
			output = testService.getUsers(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/member_add");
	}
	
	@RequestMapping(value = "/admin/memberList", method = RequestMethod.GET)
	public ModelAndView adminMemberList(Model model) {
		MemList input = new MemList();
		
		//목록조회
		
		List<MemList> output = null;
		try {
			output = memListService.getMemberList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/member_list");
	}
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
	
	@RequestMapping(value = "/admin/member/sendAuthEmail", method = RequestMethod.POST)
	public Map<String, Object> sendAuthEmail(HttpSession session,
			@RequestParam(value = "memEmail", required = false) String memEmail) {
		
		// 인증번호를 위한 난수 생성
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

		String str = "";

		int idx = 0;
		for (int i = 0; i < 10; i++) {
			idx = (int) (charSet.length * Math.random());
			str += charSet[idx];
		}

		String content = "인증번호는 " + str +"입니다";
		String subject = "셀러매치 이메일 인증번호";
		// 인증번호를 세션에 저장
		webHelper.setSession("emailAuth", str, 60*5);
		
		try {
			mailHelper.sendMail(memEmail, subject, content);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/admin/member/authConfirm", method = RequestMethod.POST)
	public Map<String, Object> authConfirm(@RequestParam(value = "auth_confirm", required = false) String auth_confirm) {
		
		String result = "0";
		
		if (auth_confirm == webHelper.getSession("emailAuth")) {
			webHelper.removeSession("emailAuth");
			result = "1";
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("result", result);
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/admin/member/join", method = RequestMethod.POST)
	public ModelAndView join(@RequestParam(value = "memPhoto") MultipartFile memPhoto,
			@RequestParam(value = "memId", required = false) String memId,
			@RequestParam(value = "memPw_confirm", required = false) String memPw,
			@RequestParam(value = "memName") String memName,
			@RequestParam(value = "memNick", required = false) String memNick,
			@RequestParam(value = "memTel", required = false) String memTel,
			@RequestParam(value = "memRname") String memRname,
			@RequestParam(value = "memIndus") String memIndus,
			@RequestParam(value = "memCountry") String memCountry,
			@RequestParam(value = "memPost", required = false) String memPost,
			@RequestParam(value = "memAddr", required = false) String memAddr,
			@RequestParam(value = "memAddr2") String memAddr2) {
		
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		
		try {
			item = webHelper.saveMultipartFile(memPhoto);
		} catch (NullPointerException e) {
			e.printStackTrace();
			return webHelper.redirect(null, e.getLocalizedMessage());
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		MemList input = new MemList();
		input.setMemId(memId);
		input.setMemPw(memPw);
		input.setMemName(memName);
		input.setMemNick(memNick);
		input.setMemTel(memTel);
		input.setMemRname(memRname);
		input.setMemClass("0");
		input.setMemSort("일반");
		input.setMemIndus(memIndus);
		input.setMemCountry(memCountry);
		input.setMemPost(memPost);
		input.setMemAddr(memAddr);
		input.setMemAddr2(memAddr2);
		input.setMemPhoto(item.getFilePath());
		input.setMemState("0");
		input.setMemIp("49.247.0.132");
		input.setMemXxx("");
		
		try {
			memListService.addMember(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		

		

		/** 4) 결과 표시 */
		return new ModelAndView("admin/admin_main");
	}
}
