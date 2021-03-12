package kr.co.wesellglobal.sellermatch.auth;

import java.util.Iterator;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
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
				.scope("profile")
				.build(sns.getApi20Instance());
		
		this.sns = sns;
		
	}
	
	public String getNaverAuthURL() {
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
		System.out.println("#####################################");
		System.out.println(rootNode);
		System.out.println("#####################################");
		if (this.sns.isGoogle()) {
			String id = rootNode.get("id").asText();
			if (sns.isGoogle())
				member.setGoogleId(id);
			member.setMemNick(rootNode.get("displayName").asText());
			

			Iterator<JsonNode> iterEmails = rootNode.path("emails").elements();
			while(iterEmails.hasNext()) {
				JsonNode emailNode = iterEmails.next();
				String type = emailNode.get("type").asText();
				if (StringUtils.equals(type, "account")) {
					member.setMemId(emailNode.get("value").asText());
					break;
				}
			}
			
		} else if (this.sns.isNaver()) {
			JsonNode resNode = rootNode.get("response");
			member.setNavareId(resNode.get("id").asText());
			member.setMemNick(resNode.get("nickname").asText());
			member.setMemId(resNode.get("email").asText());
		}
		
		return member;
				
	}
}
