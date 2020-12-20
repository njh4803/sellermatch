package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//산업리스트 
@Data
public class IndusDto {

	// 자동번호 
	private int indusIdx;
	
	// 산업고유번호 
	private String indusId;
	
	// 산업명 농수산물, 공산품...
	private String indusName;
	
	// 등록일시 
	private String indusRegDate;
	
}
