package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//회원리스트 
@Data
public class MemberDto {

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
	
	// 별명 닉네임
	private String memNick;
	
	// 대표사진 파일명 자동생성(기본 Null값 이미지)
	private String memPhoto;
	
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
	
	// 예비컬럼 
	private String memXxx;
	
	/**관리자페이지 회원조회 페이지 구현을 위한 static변수*/
	private static int offset;
	private static int listCount;
	
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		MemberDto.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		MemberDto.listCount = listCount;
	}

	
	public String getMemStateName() {
		if (this.memState.equals("1")) {
			return "정상";
		}
		if (this.memState.equals("2")) {
			return "휴면";
		}
		if (this.memState.equals("3")) {
			return "휴면";
		}
		return "";
	}
	
	public String getMemClassName() {
		if (this.memClass.equals("1m")) {
			return "1개월";
		}
		if (this.memClass.equals("3m")) {
			return "3개월";
		}
		if (this.memClass.equals("6m")) {
			return "6개월";
		}
		if (this.memClass.equals("1y")) {
			return "1년";
		}
		return "기본";
	}
	
	public String getMemSortName() {
		if (this.memSort.equals("1")) {
			return "공급자";
		}
		if (this.memSort.equals("2")) {
			return "판매자";
		}
		return "일반";
	}
	
	public String getMemNationName() {
		if (this.memNation.equals("02")) {
			return "서울";
		}
		if (this.memNation.equals("031")) {
			return "경기";
		}
		if (this.memNation.equals("032")) {
			return "인천";
		}
		return "해외";
	}
	
	public String getMemCountryName() {
		if (this.memCountry.equals("01")) {
			return "대한민국";
		}
		if (this.memCountry.equals("02")) {
			return "베트남";
		}
		return "";
	}
	
	public String getMemRnameName() {
		if (this.memRname.equals("0")) {
			return "미인증";
		}
		if (this.memRname.equals("1")) {
			return "인증";
		}
		return "";
	}
}