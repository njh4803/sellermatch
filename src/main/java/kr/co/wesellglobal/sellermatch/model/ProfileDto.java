package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//판매자프로필 
@Data
public class ProfileDto {

    // 자동번호 
    private int profileIdx;

    // 프로필고유번호 
    private String profileId;

    // 회원고유번호 
    private String profileMemId;

    // 회원 등급 
    private String profileGrade;

    // 자기소개 
    private String profileIntro;

    // 채널 
    private String profileCh;

    // 채널 검증 미검증(0),검증(1)
    private String profileChChk;

    // 채널검증일 
    private String profileChChkDate;

    // 판매 경력 경력없음(0)1개월이상(1), 3개월이상(3),6개월이상(6),1년이상(9)
    private String profileCareer;

    // 판매자 매출 검증 미검증(0),검증(1)
    private String profileSaleChk;

    // 판매자 매출규모 매출규모 금액만
    private int profileVolume;

    // 등록지역 국번
    private String profileNation;

    // 사업자번호 
    private String profileBizNum;

    // 사업자분류 법인사업자(1), 개인사업자(2), 간이과세자(3), 개인(4), 기타(5)
    private String profileBizSort;

    // 사업자인증 미인증(0), 인증완료(1)
    private String profileBizCerti;

    // 산업분류 vChar(10) : 01~9 ( 농수산물-1, 공산품-2,……..) , 별도 분류 테이블
    private String profileIndus;

    // 프로필소개이미지 멀티이미지(5장)
    private String profilePhoto;

    // 프로필 상태 중지(0), 정상(1)
    private String profileState;

    // 프로필 등록일 
    private String profileRegDate;

    // 프로필정보 수정일 
    private String profileEditDate;

    // 해시태그 해시태그(검색 키워드) 구분자(,)
    private String profileHashtag;

    // 신원인증 휴대폰 인증, 미인증(0), 인증완료(1)
    private String profileRname;

    // 프로필분류 공급자 (1), 판매자(2)
    private String profileSort;

    // 조회수 프로필 조회수
    private int profileHit;
	
	 // 상품분류 문자로 치환
	 private String profileIndusName;
	 
	 // 사진 리스트
	 private String[] profilePhotoList;
	 
	 public String getprofileIndusName() {
			return profileIndusName;
	 }
	 
	 public void setprofilePhotoList(String profilePhoto) {
		 this.profilePhotoList = profilePhoto.split(",");
	 }
			
	 public String[] getprofilePhotoList() {
		 return this.profilePhotoList;
	 }
	 
	 public String getprofileChChkName() {
		 if (this.profileChChk.equals("0")) {
			 return "미검증";
		 }
		 if (this.profileChChk.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getprofileCareerName() {
		 if (this.profileCareer.equals("0")) {
			 return "경력없음";
		 }
		 if (this.profileCareer.equals("1")) {
			 return "1개월 이상";
		 }
		 if (this.profileCareer.equals("3")) {
			 return "3개월 이상";
		 }
		 if (this.profileCareer.equals("6")) {
			 return "6개월 이상";
		 }
		 if (this.profileCareer.equals("9")) {
			 return "1년 이상";
		 }
		 return "";
	 }
	 
	 public String getprofileSaleChkName() {
		 if (this.profileSaleChk.equals("0")) {
			 return "미검증";
		 }
		 if (this.profileSaleChk.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getprofileNationName() {
		 if (this.profileNation.equals("02")) {
			 return "서울";
		 }
		 if (this.profileNation.equals("031")) {
			 return "경기";
		 }
		 if (this.profileNation.equals("032")) {
			 return "인천";
		 }
		 return "해외";
	 }
	 
	 public String getprofileBizSortName() {
		 if (this.profileBizSort.equals("1")) {
			 return "법인사업자";
		 }
		 if (this.profileBizSort.equals("2")) {
			 return "개인사업자";
		 }
		 if (this.profileBizSort.equals("3")) {
			 return "간이과세자";
		 }
		 if (this.profileBizSort.equals("4")) {
			 return "개인";
		 }
		 if (this.profileBizSort.equals("5")) {
			 return "기타";
		 }
		 return "";
	 }
	 
	 public String getprofileBizCertiName() {
		 if (this.profileBizCerti.equals("0")) {
			 return "미인증";
		 }
		 if (this.profileBizCerti.equals("1")) {
			 return "인증";
		 }
		 return "";
	 }
	 
	 public String getprofileStateName() {
		 if (this.profileState.equals("0")) {
			 return "중지";
		 }
		 if (this.profileState.equals("1")) {
			 return "정상";
		 }
		 return "";
	 }
}