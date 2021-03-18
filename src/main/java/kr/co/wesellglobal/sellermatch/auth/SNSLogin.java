 package kr.co.wesellglobal.sellermatch.auth;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

import kr.co.wesellglobal.sellermatch.model.SnsMember;

public class SNSLogin {
	
	private OAuth20Service oauthService;
	private SnsValue sns;
	
	public SNSLogin(SnsValue sns) {
		this.oauthService = new ServiceBuilder(sns.getClientId())
					.apiSecret(sns.getClientSecret())
					.callback(sns.getRedirectUrl())
					.build(sns.getApi20Instance());
			
		this.sns = sns;
	}

	public String getAuthURL() {
		return this.oauthService.getAuthorizationUrl();
	}
	
	public SnsMember getUserProfile(String code) throws Exception {
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		
		OAuthRequest request = new OAuthRequest(Verb.GET, this.sns.getProfileUrl());
		oauthService.signRequest(accessToken, request);
		
		Response response = oauthService.execute(request);
		
		return parseJson(response.getBody());
	}
	
	private SnsMember parseJson(String body) throws Exception {
		SnsMember member = new SnsMember();
		
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(rootNode);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@");
		if (this.sns.isGoogle()) {
			
			String email = rootNode.get("email").asText();
			member.setMemId(email);
			member.setGoogleId(email);
			
		} else if (this.sns.isNaver()) {
			JsonNode resNode = rootNode.get("response");
			member.setMemNick(resNode.get("nickname").asText());
			member.setMemId(resNode.get("email").asText());
			member.setNaverId(member.getMemId());
		} else if (this.sns.isKakao()) {
			member.setMemNick((rootNode.get("properties").get("nickname")).asText());
			member.setMemId((rootNode.get("kakao_account").get("email")).asText());
			member.setKakaoId(member.getMemId());
		}
		
		return member;
				
	}
}
