package kr.co.wesellglobal.sellermatch.auth;

public interface SnsUrls {
	
	//토큰을 가져오는 URL
	static final String NAVER_ACCESS_TOKEN = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
	static final String NAVER_AUTH = "https://nid.naver.com/oauth2.0/authorize";

	//프로필을 가져오는 URL
	static final String GOOGLE_PROFILE_URL = "https://www.googleapis.com/plus/v1/people/me";
	static final String NAVER_PROFILE_URL = "https://openapi.naver.com/v1/nid/me";
}
