package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//공급상품리스트 
@Data
public class ProdList {
	    // 자동번호 
	    private int prodIdx;

	    // 상품고유번호 산업분류 &  date & sessiomid
	    private String prodNum;

	    // 상품명 
	    private String prodName;

	    // 상품가격 
	    private int prodPrice;

	    // 상품 개수 보유한(판매 가능한) 상품 개수 - 100
	    private int prodQty;

	    // 상품 상세내용 html editer  사용
	    private String prodDetail;

	    // 상품 대표사진 파일명 자동생성(기본 Null값 이미지)
	    private String prodPhoto;

	    // 상품 상세이미지 파일명 자동생성
	    private String prodDetailImg;

	    // 상품 키워드 소분류 - 해시태그+키워드
	    private String prodKeyword;

	    // 상품상태 정상(1), 중지(0)
	    private String prodState;

	    // 상품 등록일 
	    private String prodRegDate;

	    // 상품 종료일 상품구매 모집마감일
	    private String prodEndDate;

	    // 공급자 회원아이디 회원테이블과 연결
	    private String prodMemId;

	    // 산업 분류 A 대분류
	    private String prodIndusA;

	    // 산업 분류 B 중분류
	    private String prodIndusB;

	    // 산업 분류 C 소분류
	    private String prodIndusC;

	    // 예비컬럼 
	    private String prodXxx;
}
