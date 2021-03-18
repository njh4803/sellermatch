package kr.co.wesellglobal.sellermatch.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.auth.SNSLogin;
import kr.co.wesellglobal.sellermatch.auth.SnsValue;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.SnsMember;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SNSController {

	private static final Logger logger = LoggerFactory.getLogger(SNSController.class);

	@Autowired
	MemberService memberService;

	@Inject
	private SnsValue naverSns;

	@Inject
	private SnsValue googleSns;
	
	@Inject
	private SnsValue kakaoSns;
	
	@Inject
	private GoogleConnectionFactory googleConnectionFactory;

	@Inject
	private OAuth2Parameters googleOAuth2Parameters;

	@RequestMapping(value = "/auth/{snsService}/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String snsLoginCallback(@PathVariable String snsService, Model model, @RequestParam String code)
			throws Exception {

		logger.info("snsLoginCallback: service={}", snsService);
		SnsValue sns = null;
		String memSnsCh = "01";

		if (StringUtils.equals("naver", snsService)) {
			sns = naverSns;
			memSnsCh = "04";
		} else if (StringUtils.equals("kakao", snsService)) {
			sns = kakaoSns;
			memSnsCh = "02";
		} else if (StringUtils.equals("google", snsService)) {
			sns = googleSns;
			memSnsCh = "03";
		}

		// 1. code 이용하여 acess_token 받기
		// 2. access_token 이용하여 사용자 프로필 받기
		
		SNSLogin snslogin = new SNSLogin(sns);
		
		SnsMember member = snslogin.getUserProfile(code);
		
		member.setMemSnsCh(memSnsCh);

		System.out.println("profile>>>>>>>>>>>>>>>>>>>" + member);
		model.addAttribute("result", member);

		// 3. DB에 해당 유저 존재하는지 체크
		// 4. 존재시 강제 로그인, 미존재시 가입페이지로

		MemberDto input = new MemberDto();
		input.setMemId(member.getMemId());
		int result = 0;

		result = memberService.idCheckSNS(input);
		
		if (result > 0) { 
			model.addAttribute("msg", "이미 가입된 계정입니다. 로그인 후 이용해 주세요.");
			model.addAttribute("url","http://sellermatch.co.kr/temp");
		}
		return "join";
	}

	// SNS 요청
	@RequestMapping(value = "/member/joinMain", method = RequestMethod.GET)
	public ModelAndView login(Model model) throws Exception {

		SNSLogin snsLoginNaver = new SNSLogin(naverSns);
		SNSLogin snsLoginKakao = new SNSLogin(kakaoSns);
		
		model.addAttribute("naver_url", snsLoginNaver.getAuthURL());
		model.addAttribute("kakao_url", snsLoginKakao.getAuthURL());

		/* 구글code 발행을 위한 URL 생성 */
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		model.addAttribute("google_url", url);

		return new ModelAndView("joinMain");
	}

	/*
	 * // 카카오 로그인창 호출
	 * 
	 * @RequestMapping(value = "/oauth/getKakaoAuthUrl") public @ResponseBody String
	 * getKakaoAuthUrl(HttpServletRequest request) throws Exception {
	 * 
	 * String kakaoApiKey = "1dbcd212ddc07cec13bac032add76058"; String redirectURI =
	 * "http://127.0.0.1:8080/member/join"; // 개발 // String redirectURI =
	 * "http://sellermatch.co.kr/member/join"; // 운영 String reqUrl =
	 * "https://kauth.kakao.com" + "/oauth/authorize?client_id=" + kakaoApiKey +
	 * "&redirect_uri=" + redirectURI + "&response_type=code";
	 * 
	 * return reqUrl; }
	 * 
	 * // 구글 로그인창 호출
	 * 
	 * @RequestMapping(value = "/oauth/getGoogleAuthUrl") public @ResponseBody
	 * String getGoogleAuthUrl(HttpServletRequest request) throws Exception {
	 * 
	 * String googleApiKey =
	 * "401148449336-dhftt4anh287l238ii4nt2655l3ifknm.apps.googleusercontent.com";
	 * String redirectURI = "http://127.0.0.1:8080/member/join"; // 개발 // String
	 * redirectURI = "http://sellermatch.co.kr/member/join"; // 운영 String reqUrl =
	 * "https://accounts.google.com/o/oauth2/v2/auth?client_id=" + googleApiKey +
	 * "&redirect_uri=" + redirectURI + "&response_type=code" + "&scope=profile";
	 * 
	 * return reqUrl; }
	 * 
	 * // 네이버 로그인창 호출
	 * 
	 * @RequestMapping(value = "/oauth/getNaverAuthUrl") public @ResponseBody String
	 * getNaverAuthUrl(HttpServletRequest request) throws Exception {
	 * 
	 * String naverApiKey = "WbIQH3jGvG5OtKT_lrMr"; String redirectURI =
	 * "http://127.0.0.1:8080/member/join"; // 개발 // String redirectURI =
	 * "http://sellermatch.co.kr/member/join"; // 운영 String reqUrl =
	 * "https://nid.naver.com/oauth2.0/authorize?client_id=" + naverApiKey +
	 * "&redirect_uri=" + redirectURI + "&response_type=code";
	 * 
	 * return reqUrl; }
	 */

}
