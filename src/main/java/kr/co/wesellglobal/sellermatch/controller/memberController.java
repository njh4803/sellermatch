package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class memberController {
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	MemberService memberService;
	@Autowired
	ProfileService profileService;
	@Autowired
	IndusService indusService;
	
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public ModelAndView join(Model model) {
		
		return new ModelAndView("join");
	}
	
	@RequestMapping(value = "/member/myPage", method = RequestMethod.GET)
	public ModelAndView myPage(Model model, @SessionAttribute(value = "member", required = false) MemberDto member) {
		
		MemberDto output = null;
		IndusDto input = new IndusDto();
		List<IndusDto> indusList = null;
		
		
		try {
			output = memberService.getMember(member);
			indusList = indusService.getIndusList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		
		return new ModelAndView("myPage");
	}
	
	@RequestMapping(value = "/member/joinMain", method = RequestMethod.GET)
	public ModelAndView joinMain(Model model) {
		
		return new ModelAndView("joinMain");
	}
	
	// 카카오 로그인창 호출
	@RequestMapping(value = "/login/getKakaoAuthUrl")
	public @ResponseBody String getKakaoAuthUrl(HttpServletRequest request) throws Exception {
		
		String kakaoApiKey = "1dbcd212ddc07cec13bac032add76058";
		//String redirectURI = "http://127.0.0.1:8080/member/join"; //개발
		String redirectURI = "http://sellermatch.co.kr/member/join"; //운영
		String reqUrl = "https://kauth.kakao.com" + "/oauth/authorize?client_id=" + kakaoApiKey + "&redirect_uri="+ redirectURI + "&response_type=code";
		
		return reqUrl;
	}
	// 구글 로그인창 호출
	@RequestMapping(value = "/login/getGoogleAuthUrl")
	public @ResponseBody String getGoogleAuthUrl(HttpServletRequest request) throws Exception {
		
		String googleApiKey = "401148449336-dhftt4anh287l238ii4nt2655l3ifknm.apps.googleusercontent.com";
		//String redirectURI = "http://127.0.0.1:8080/member/join"; //개발
		String redirectURI = "http://sellermatch.co.kr/member/join"; //운영
		String reqUrl = "https://accounts.google.com/o/oauth2/v2/auth?client_id=" + googleApiKey + "&redirect_uri="+ redirectURI + "&response_type=code"
				+ "&scope=profile";
		
		return reqUrl;
	}
	// 네이버 로그인창 호출
	@RequestMapping(value = "/login/getNaverAuthUrl")
	public @ResponseBody String getNaverAuthUrl(HttpServletRequest request) throws Exception {
		
		String naverApiKey = "WbIQH3jGvG5OtKT_lrMr";
		//String redirectURI = "http://127.0.0.1:8080/member/join"; //개발
		String redirectURI = "http://sellermatch.co.kr/member/join"; //운영
		String reqUrl = "https://nid.naver.com/oauth2.0/authorize?client_id=" + naverApiKey + "&redirect_uri="+ redirectURI + "&response_type=code";
		
		return reqUrl;
	}
	
}
