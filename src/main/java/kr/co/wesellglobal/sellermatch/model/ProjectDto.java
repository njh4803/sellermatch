package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//프로젝트리스트 
@Data
public class ProjectDto {

	// 자동번호 
	private int projIdx;
	
	// 프로젝트고유번호
	private String projId;
	
	// 회원고유번호 
	private String projMemId;
	
	// 프로젝트 제목 
	private String projTitle;
	
	// 프로젝트 분류 공급자(1), 셀러(2)
	private String projSort;
	
	// 상품분류 
	private String projIndus;
	
	// 상품가격 
	private int projPrice;
	
	// 판매마진 10% 이하(10), 11%~20%(20), 21%~30%(30), 30% 초과(31)
	private int projMargin;
	
	// 등록지역 지역국번
	private String projNation;
	
	// 공급방법 OEM(1),위탁판매(2),도매공급(3), 운영대행(4),경매공급(5)
	private String projSupplyType;
	
	// 모집마감일 
	private String projEndDate;
	
	// 모집인원 
	private int projRecruitNum;
	
	// 상세설명 html에디터
	private String projDetail;
	
	// 필수요건 
	private String projRequire;
	
	// 키워드 해시태그(검색 키워드) 구분자(,)
	private String projKeyword;
	
	// 상세사진 5개 제한
	private String projDetailImg;
	
	// 첨부파일 계약서 등
	private String projFile;
	
	// 프로젝트 상태 정상(1), 중지(0)
	private String projState;
	
	// 프로젝트 등록일 
	private String projRegDate;
	
	// 프로젝트 수정일 
	private String projEditDate;
	
	// 예비컬럼 
	private String projXxx;

	
	
	
	
	// 상세사진 리스트
	private String[] projDetailImgList;
	
	// 키워드 리스트
	private String[] projKeywordList;
	
	// 상품분류 문자로 치환
	private String projIndusName;
	
	public void setProjDetailImgList(String projDetailImg) {
		this.projDetailImgList = projDetailImg.split(",");
	}
			
	public String[] getProjDetailImgList() {
		return this.projDetailImgList;
	}
			
	public String getProjIndusName() {
		return projIndusName;
	}
	
	public String getProjSortName() {
		if (this.projSort == "1") {
			return "공급자";
		}
		if (this.projSort == "2") {
			return "판매자";
		}
		return "일반";
	}
	
	public String getProjSupplyTypeName() {
		if (this.projSupplyType.equals("1")) {
			return "OEM";
		}
		if (this.projSupplyType.equals("2")) {
			return "위탁판매";
		}
		if (this.projSupplyType.equals("3")) {
			return "도매공급";
		}
		if (this.projSupplyType.equals("4")) {
			return "운영대행";
		}
		if (this.projSupplyType.equals("5")) {
			return "경매공급";
		}
		return "기타";
	}
	
	public String getProjStateName() {
		if (this.projState == "1") {
			return "정상";
		}
		return "중지";
	}
	
	public String getProjMarginName() {
		if (this.projMargin == 10) {
			return "10% 미만";
		}
		if (this.projMargin == 20) {
			return "11% ~ 20%";
		}
		if (this.projMargin == 30) {
			return "21% ~ 30%";
		}
		return "30% 초과";
	}
	
	public String getProjNationName() {
		if (this.projNation.equals("02")) {
			return "서울";
		}
		if (this.projNation.equals("031")) {
			return "경기";
		}
		if (this.projNation.equals("032")) {
			return "인천";
		}
		return "해외";
	}
	
	public String[] getProjKeywordList() {
		this.projKeywordList = this.projKeyword.split(",");
		return this.projKeywordList;
	}
}
