package kr.co.wesellglobal.sellermatch.model;


import lombok.Data;

//게시판리스트
@Data
public class HashTagListDto {
	
	// 해시태그 아이디 
	private int hashId;
	
	// 해시태그 이름 
	private String hashNm;
	
	// 최초등록관리자
	private String frstRegistMngr;
	
	// 최초등록일시
	private String frstRegistDt;
	
	// 최종수정관리자
	private String lastRegistMngr;
	
	// 최종수정일시
	private String lastRegistDt;
}
