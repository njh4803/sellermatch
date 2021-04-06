package kr.co.wesellglobal.sellermatch.model;


import lombok.Data;

//게시판리스트
@Data
public class HashTagDto {
	// 해시태그테이블 번호
	private int no;
	
	// 아이디		프로젝트, 프로필 고유번호
	private String id;
	
	// 타입  		1- 프로젝트, 2 - 프로필
	private char hashType;
	
	// 해시태그1
	private int hashTag1;
	
	// 해시태그2
	private int hashTag2;
	
	// 해시태그3
	private int hashTag3;
	
	// 해시태그4
	private int hashTag4;
	
	// 해시태그5
	private int hashTag5;
	
	// 최초등록관리자
	private String frstRegistMngr;
	
	// 최초등록일시
	private String frstRegistDt;
	
	// 최종수정관리자
	private String lastRegistMngr;
	
	// 최종수정일시
	private String lastRegistDt;
}
