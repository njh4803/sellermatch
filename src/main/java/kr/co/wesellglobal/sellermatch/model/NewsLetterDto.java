package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

@Data
public class NewsLetterDto {
	
	// 자동번호 
	private int newsLetterIdx;
	
	private String newsLetterEmail;
	private String newsLetterAgreeYN;
	
	private String newsLetterRegDate;
	private String newsLetterEditDate;

}
