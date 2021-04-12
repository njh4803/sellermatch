package kr.co.wesellglobal.sellermatch.interceptor;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.wesellglobal.sellermatch.auth.SNSLogin;
import kr.co.wesellglobal.sellermatch.auth.SnsValue;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AppInterceptor extends HandlerInterceptorAdapter{
	long startTime =0, endTime=0;
	
	@Autowired
	WebHelper webHelper;
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
	
	/**
	 * Controller 실행 요청 전에 수행되는 메서드
	 * 클라이언트의 요청을 컨트롤러에 전달하기 전에 호출된다.
	 * return 값으로 boolean값을 전달하는데 false인경우 controller를 실행 시키지 않고 요청을 종료한다.
	 * 보통 이곳에서 각종 체크작업과 로그를 기록하는 작업을 진행한다.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		log.debug("AppInterceptor.preHandle 실행됨");
		
		webHelper.init(request, response);
		
		// login처리를 담당하는 사용자 정보를 담고 있는 객체를 가져옴
        Object loginSession = webHelper.getSession("member");
        
		
		 if (loginSession == null) { // 로그인된 세션이 없는 경우
			// 우리가 만들어 논 쿠키 loginCookie의 값을 꺼내온다 -> 저장해놓은 세션ID 
		 	String loginCookie = webHelper.getCookie("loginCookie");
			 if (loginCookie != null) { 
				 // 쿠키가 존재하는 경우(이전에 로그인떄 생성된 쿠키가 존재한다는 것) 
				 String sessionId = loginCookie;
			 
			 MemberDto input = new MemberDto(); 
			 input.setSessionKey(sessionId);
			 
			 // 세션Id를 checkUserWithSessionKey에 전달해 이전에 로그인한적이 있는지 체크하는 메서드를 거쳐서
			 // 유효시간이 > now() 인 즉 아직 유효시간이 지나지 않으면서 해당 sessionId 정보를 가지고 있는 사용자 정보를 반환한다. 
			 MemberDto member = memberService.checkUserWithSessionKey(input);
			 
			 	if (member != null) { 
				 //세션 생성 
				 webHelper.setSession("member", member); 
				 }
			 }
		 
		 }
        
		//컨트롤러 실행 직전에 현재 시각을 저장한다.
		startTime = System.currentTimeMillis();
		/** 1) 클라이언트의 요청 정보 확인하기 */
        // 현재 URL 획득
        String url = request.getRequestURL().toString();

        // GET방식인지, POST방식인지 조회한다.
        String methodName = request.getMethod();

        // URL에서 "?"이후에 전달되는 GET파라미터 문자열을 모두 가져온다.
        String queryString = request.getQueryString();

        // 가져온 값이 있다면 URL과 결합하여 완전한 URL을 구성한다.
        if (queryString != null) {
            url = url + "?" + queryString;
        }

        // 획득한 정보를 로그로 표시한다.
        log.debug(String.format("[%s] %s", methodName, url));

        /** 2) 클라이언트가 전달한 모든 파라미터 확인하기 */
        Map<String, String[]> params = request.getParameterMap();

        for (String key : params.keySet()) {
            String[] value = params.get(key);
            log.debug(String.format("(p) <-- %s = %s", key, String.join(",", value)));
        }

        /** 3) 클라이언트가 머물렀던 이전 페이지와 이전 페이지에 머문 시간 확인하기 */
        // 이전에 머물렀던 페이지
        String referer = request.getHeader("referer");

        // 이전 종료 시간이 0보다 크다면 새로운 시작시간과의 차이는 이전 페이지에 머문 시간을 의미한다.
        if (referer != null && endTime > 0) {
            log.debug(String.format("- REFERER : time=%d, url=%s", startTime - endTime, referer));
        }

        return super.preHandle(request, response, handler);
	}

	/**
	 * view단으로 forward 되기전에 수행
	 * 컨트롤러 로직이 실행된 이후 호출된다.
	 * 컨트롤러 단에서 에러 발생 시 해당 메서드는 수행되지 않는다.
	 * request로 넘어온 데이터 가공 시 많이 사용된다.
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		log.debug("AppInterceptor.postHandle 실행됨");
		
		/* 로그인 인증 URL 생성하여 뿌려줌*/
    	SNSLogin snsLoginNaver = new SNSLogin(naverSns);
    	SNSLogin snsLoginKakao = new SNSLogin(kakaoSns);
    	OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
    	String googleUrl = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
    	
        request.getSession().setAttribute("naver_url", snsLoginNaver.getAuthURL());
        request.getSession().setAttribute("kakao_url", snsLoginKakao.getAuthURL());
        request.getSession().setAttribute("google_url", googleUrl);
		
		//컨트롤러 종료시의 시각을 지운다.
		endTime = System.currentTimeMillis();
		
		//시작시간과 종료시간 사이의 차이를 구하면 페이지의 실행시간을 구할 수 있다
		log.debug(String.format("running time : %d(ms)\n", endTime-startTime));
		super.postHandle(request, response, handler, modelAndView);
	}

	/**
	 * 컨트롤러 종료 후 view가 정상적으로 랜더링 된 후 제일 마지막에 실행되는 메서드
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.debug("AppInterceptor.afterCompletion 실행됨");
		super.afterCompletion(request, response, handler, ex);
	}

	/**
	 * Servlet 3.0부터 비동기 요청이 가능해짐에 따라 비동기 요청 시
	 * PostHandle와 afterCompletion메서드를 수행하지 않고 이 메서드를 수행하게 된다.
	 * 거의 사용 안함
	 */
	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.debug("AppInterceptor.afterConcurrentHandlingStarted 실행됨");
		super.afterConcurrentHandlingStarted(request, response, handler);
	}
	
}
