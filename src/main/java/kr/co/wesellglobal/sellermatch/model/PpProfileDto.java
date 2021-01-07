package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//공급자프로필 
@Data
public class PpProfileDto {

    // 자동번호 
    private int ppIdx;

    // 프로필고유번호 
    private String ppId;

    // 프로젝트고유번호 프로젝트 고유번호 여러개를 등록 - 구분자(,)
    private String ppProjId;

    // 회원고유번호 
    private String ppMemId;

    // 공급회원 등급 
    private String ppGrade;

    // 자기소개 
    private String ppIntro;

    // 공급자지역 국번
    private String ppNation;

    // 사업자번호 
    private String ppBizNum;

    // 사업자분류 법인사업자(1), 개인사업자(2), 간이과세자(3), 개인(4), 기타(5)
    private String ppBizSort;

    // 수익성 검증 미검증(0),검증(1)
    private String ppProfit;

    // 수익성검증일 
    private String ppProfitChkDate;

    // 사업자인증 미인증(0), 인증완료(1)
    private String ppBizCerti;

    // 산업분류 vChar(10) : 01~9 ( 농수산물-1, 공산품-2,……..) , 별도 분류 테이블
    private String ppIndus;
    
    private String ppCh;

    // 공급자소개이미지 멀티이미지(5장)
    private String ppPhoto;

    // 공급자 상태 중지(0), 정상(1)
    private String ppState;

    // 공급자 등록일 
    private String ppRegDate;

    // 공급자정보 수정일 
    private String ppEditDate;
    
 	// 프로젝트 등록 여부 등록(1), 미등록(0)
 	private String ppXxx;

	// 상품분류 문자로 치환
	 private String ppIndusName;
	 
	// 사진 리스트
	 private String[] ppPhotoList;
	 
	 public String getPpIndusName() {
			return ppIndusName;
	 }
	 
	 public void setPpPhotoList(String PpPhoto) {
		 this.ppPhotoList = PpPhoto.split(",");
	 }
			
	 public String[] getPpPhotoList() {
		 return this.ppPhotoList;
	 }
	 
	 public String getPpNationName() {
		 if (this.ppNation.equals("02")) {
			 return "서울";
		 }
		 if (this.ppNation.equals("031")) {
			 return "경기";
		 }
		 if (this.ppNation.equals("032")) {
			 return "인천";
		 }
		 return "해외";
	 }
	 
	 public String getPpBizSortName() {
		 if (this.ppBizSort.equals("1")) {
			 return "법인사업자";
		 }
		 if (this.ppBizSort.equals("2")) {
			 return "개인사업자";
		 }
		 if (this.ppBizSort.equals("3")) {
			 return "간이과세자";
		 }
		 if (this.ppBizSort.equals("4")) {
			 return "개인";
		 }
		 if (this.ppBizSort.equals("5")) {
			 return "기타";
		 }
		 return "";
	 }
	 
	 public String getPpProfitName() {
		 if (this.ppProfit.equals("0")) {
			 return "미검증";
		 }
		 if (this.ppProfit.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getPpBizCertiName() {
		 if (this.ppBizCerti.equals("0")) {
			 return "미인증";
		 }
		 if (this.ppBizCerti.equals("1")) {
			 return "인증";
		 }
		 return "";
	 }
	 
	 public String getPpStateName() {
		 if (this.ppState.equals("0")) {
			 return "중지";
		 }
		 if (this.ppState.equals("1")) {
			 return "정상";
		 }
		 return "";
	 }
}