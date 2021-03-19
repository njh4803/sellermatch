package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

@Data
public class SnsMember {

	private int memIdx;		// 회원번호  
	private String memId;	// 회원고유번호 이메일 계정 
	private String memPw;	// 비밀번호
	private String memNick;	// 닉네임
	
	private String googleId;	//구글아이디
	private String naverId;	//네이버아이디
	private String kakaoId;		//카카오아이디
	
	private String memSnsCh;	//가입 SNS채널
	private String Mem_sns_ch_tkn;	//가입 SNS 토큰
	
	private String naver_url;
	private String kakao_url;
	private String google_url;
	
}
