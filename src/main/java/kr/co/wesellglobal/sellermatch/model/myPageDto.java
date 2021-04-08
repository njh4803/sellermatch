package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//프로젝트리스트 
@Data
public class myPageDto {

	// 자동번호 
	private int projIdx;
	
	private int scrapNo;
	
	private int memIdx;
	private String memId;
	
	// 프로젝트고유번호
	private String projId;
	
	// 회원고유번호 
	private String projMemId;
	
	// 프로젝트 제목 
	private String projTitle;
	
	// 프로젝트 분류 공급자(1), 셀러(2)
	private String projSort;
	private String projSortName;
	
	// 상품분류 
	private String projIndus;
	
	// 상품가격 
	private int projPrice;
	
	// 판매마진 10% 이하(10), 11%~20%(20), 21%~30%(30), 30% 초과(31)
	private int projMargin;
	private String projMarginName;
	
	// 등록지역 지역국번
	private String projNation;
	private String projNationName;
	
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
	// 첨부파일 OriginName
	private String orginName;
	
	// 상품 검증 미검증(0), 검증(1)
	private String projProdCerti;
	
	// 프로젝트 상태 정상(1), 중지(0)
	private String projState;
	
	// 프로젝트 등록일 
	private String projRegDate;
	
	// 프로젝트 수정일 
	private String projEditDate;
	
	// 프로젝트 조회수
	private int projHit;
	
	// 프로젝트 채널
	private String projChannel;
	
	// 수익성 검증
	private String projProfit;
	
	// 수익성 검증일
	private String projProfitChkDate;
	
	// 썸네일 이미지
	private String projThumbnailImg;

	// 회원이름
	private String memName;
	private String memNick;
	private String memSort;
	private String profileMemId;
	private String profileIntro;
	private String profilePhoto;
	
	// 프로젝트 계약된 수
    private int contractCount;
    // 프로젝트 등록 수
	private int projAddCount;
	// 프로젝트 제안 수 (제안받거나 제안한 수)
	private int recommendCount;
	//지원 수
	private int appliedCount;
	// 승인 수
	private int okeyCount;
	
	// 지원자 수
	private int applyCount;

	private int scrapCount;
	
	// 상세사진 리스트
	private String[] projDetailImgList;
	
	// 키워드 리스트
	private String[] projKeywordList;
	
	// 채널 리스트
	private String[] projChannelList;
	
	// 상품분류 문자로 치환
	private String projIndusName;
	
	// 모집마감일을 D-Day로 변환
	private String projDday;
	
	/**페이지 구현을 위한 static변수*/
	private static int offset;
	private static int listCount;
	
	/** 검색 결과를 위한 변수 */
	private String profileBizCerti;
	private String profileChChk;
	private String profileSaleChk;
	
	/** 검색을 위한 변수 */
	private String ppBizCerti;
	private String sellerBizCerti;
	private String sellerChChk;
	private String sellerSaleChk;
	private String memRname;
	private String sort;
	
	/** 검색을 위한 배열 */
	private String[] projSortArr;
	private String[] projNationArr;
	private String[] projIndusArr;
	private String[] projPriceArr;
	private String[] projMarginArr;
	private String[] projSupplyTypeArr;
	private String[] projProdCertiArr;
	private String[] projChannelArr;
	private String memRnameSort;
	private String ppMemRname;
	private String sellerMemRname;
	
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		myPageDto.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		myPageDto.listCount = listCount;
	}
		 
	public String[] getProjDetailImgList() {
		if (this.projDetailImg == null) {
			return this.projDetailImgList;
		}
		this.projDetailImgList = this.projDetailImg.split("\\|");
		return this.projDetailImgList;
	}
	
	public String getProjIndusName() {
		return projIndusName;
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
		if (this.projState.equals("0")) {
			return "중지";
		}
		if (this.projState.equals("1")) {
			return "정상";
		}
		if (this.projState.equals("2")) {
			return "대기";
		}
		return "";
	}
	
	public String[] getProjKeywordList() {
		if (this.projKeyword == null) {
			return this.projKeywordList;
		}
		this.projKeywordList = this.projKeyword.split(",");
		return this.projKeywordList;
	}
	
}
