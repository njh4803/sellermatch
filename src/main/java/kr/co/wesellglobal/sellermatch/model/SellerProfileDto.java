package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//판매자프로필 
@Data
public class SellerProfileDto {

	 // 자동번호 
	 private int sellerIdx;
	
	 // 프로필고유번호 
	 private String sellerId;
	
	 // 회원고유번호 
	 private String sellerMemId;
	
	 // 판매회원 등급 
	 private String sellerGrade;
	
	 // 자기소개 
	 private String sellerIntro;
	
	 // 채널 검증 미검증(0),검증(1)
	 private String sellerChChk;
	
	 // 채널검증일 
	 private String sellerChChkDate;
	
	 // 판매 경력 경력없음(0)1개월이상(1), 3개월이상(3),6개월이상(6),1년이상(9)
	 private String sellerCareer;
	
	 // 매출 검증 미검증(0),검증(1)
	 private String sellerSaleChk;
	
	 // 판매자지역 국번
	 private String sellerNation;
	
	 // 사업자번호 
	 private String sellerBizNum;
	
	 // 사업자분류 법인사업자(1), 개인사업자(2), 간이과세자(3), 개인(4), 기타(5)
	 private String sellerBizSort;
	
	 // 사업자인증 미인증(0), 인증완료(1)
	 private String sellerBizCerti;
	
	 // 판매채널 
	 private String sellerCh;
	
	 // 산업분류 vChar(10) : 01~9 ( 농수산물-1, 공산품-2,……..) , 별도 분류 테이블
	 private String sellerIndus;
	
	 // 판매자소개이미지 멀티이미지(5장)
	 private String sellerPhoto;
	
	 // 판매자 상태 중지(0), 정상(1)
	 private String sellerState;
	
	 // 판매자 등록일 
	 private String sellerRegDate;
	
	 // 판매자정보 수정일 
	 private String sellerEditDate;

	// 상품분류 문자로 치환
	 private String sellertIndusName;
	 
	// 사진 리스트
	 private String[] sellerPhotoList;
	 
	 public String getSellertIndusName() {
			return sellertIndusName;
	 }
	 
	 public void setSellerPhotoList(String sellerPhoto) {
		 this.sellerPhotoList = sellerPhoto.split(",");
	 }
			
	 public String[] getSellerPhotoList() {
		 return this.sellerPhotoList;
	 }
	 
	 public String getSellerChChkName() {
		 if (this.sellerChChk.equals("0")) {
			 return "미검증";
		 }
		 if (this.sellerChChk.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getSellerCareerName() {
		 if (this.sellerCareer.equals("0")) {
			 return "경력없음";
		 }
		 if (this.sellerCareer.equals("1")) {
			 return "1개월 이상";
		 }
		 if (this.sellerCareer.equals("3")) {
			 return "3개월 이상";
		 }
		 if (this.sellerCareer.equals("6")) {
			 return "6개월 이상";
		 }
		 if (this.sellerCareer.equals("9")) {
			 return "1년 이상";
		 }
		 return "";
	 }
	 
	 public String getSellerSaleChkName() {
		 if (this.sellerSaleChk.equals("0")) {
			 return "미검증";
		 }
		 if (this.sellerSaleChk.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getSellerNationName() {
		 if (this.sellerNation.equals("02")) {
			 return "서울";
		 }
		 if (this.sellerNation.equals("031")) {
			 return "경기";
		 }
		 if (this.sellerNation.equals("032")) {
			 return "인천";
		 }
		 return "해외";
	 }
	 
	 public String getSellerBizSortName() {
		 if (this.sellerBizSort.equals("1")) {
			 return "법인사업자";
		 }
		 if (this.sellerBizSort.equals("2")) {
			 return "개인사업자";
		 }
		 if (this.sellerBizSort.equals("3")) {
			 return "간이과세자";
		 }
		 if (this.sellerBizSort.equals("4")) {
			 return "개인";
		 }
		 if (this.sellerBizSort.equals("5")) {
			 return "기타";
		 }
		 return "";
	 }
	 
	 public String getSellerBizCertiName() {
		 if (this.sellerBizCerti.equals("0")) {
			 return "미인증";
		 }
		 if (this.sellerBizCerti.equals("1")) {
			 return "인증";
		 }
		 return "";
	 }
	 
	 public String getSellerStateName() {
		 if (this.sellerState.equals("0")) {
			 return "중지";
		 }
		 if (this.sellerState.equals("1")) {
			 return "정상";
		 }
		 return "";
	 }
}