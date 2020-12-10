package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//회원리스트 
@Data
public class MemList {

 // 자동번호 
 private int memIdx;

 // 회원고유번호 이메일 계정
 private String memId;

 // 비밀번호 
 private String memPw;

 // 회원상태 정상(1),  탈퇴(2), 휴면(3) – 1년 단위
 private String memState;

 // 유료회원상태 기본(무료)-0 /1m/3m/6m/1y  /  결제테이블필수
 private String memClass;

 // 유료시작일 
 private String memClassSdate;

 // 유료종료일 
 private String memClassEdate;

 // 회원분류 공급자, 셀러, 일반(기본선택)
 private String memSort;

 // 산업분류 vChar(10) : 01~9 ( 농수산물-1, 공산품-2,……..) , 별도 분류 테이블
 private String memIndus;

 // 국가 
 private String memCountry;

 // 지역 
 private String memNation;

 // 주소 
 private String memAddr;

 // 상세주소 
 private String memAddr2;

 // 우편번호 
 private String memPost;

 // 연락처 
 private String memTel;

 // 이름 
 private String memName;

 // 실명인증 미인증(0), 인증완료(1), 이메일 본인인증
 private String memRname;

 // 별명 닉네밈
 private String memNick;

 // 대표사진 파일명 자동생성(기본 Null값 이미지)
 private String memPhoto;

 // 추가이미지 (멀티이미지)
 private String memImg;

 // 가입시 IP 
 private String memIp;

 // 최근로그인 업데이트
 private String memLoginDate;

 // 탈퇴일자 업데이트
 private String memOutDate;

 // 회원 등록일 
 private String memDate;

 // 회원정보 수정일 업데이트
 private String memEditDate;

 // 인증비밀번호 난수
 private String MemAuthPw;

 // 예비컬럼 
 private String memXxx;

}