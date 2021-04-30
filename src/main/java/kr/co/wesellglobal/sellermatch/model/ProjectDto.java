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
	
	// 프로젝트 상태 정상(1), 중지(0), 마감(2)
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
	
	//마감거래 제안하기 막기위한 변수 추가
	private String recommandProjectFlag;	//Y: 이면 마감거래 조회 안하기
	
	// 해시태그
	private String hashTag1;
	private String hashTag2;
	private String hashTag3;
	private String hashTag4;
	private String hashTag5;

	// 회원이름
	private String memName;
	private String memNick;
	private String profileIntro;
	private String profilePhoto;
	
	// 프로젝트 계약된 수
    private int contractCount;
    // 프로젝트 등록 수
	private int projAddCount;
	// 프로젝트 제안 수 (제안받거나 제안한 수)
	private int recommendCount;
	// 승인 수
	private int okeyCount;
	
	// 지원자 수
	private int applyCount;
	
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
	
	/** 대량 삭제를 위한 일련번호 배열 */
    private String[] idArr;
	
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		ProjectDto.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		ProjectDto.listCount = listCount;
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
	
	public String getProjSortName() {
		if (this.projSort.equals("0")) {
			return this.projSortName = "일반";
		}else if (this.projSort.equals("1")) {
			return this.projSortName = "공급자";
		}else if (this.projSort.equals("2")) {
			return this.projSortName = "판매자";
		}else if (this.projSort.equals("3")) {
			return this.projSortName = "관리자";
		}else {
			return this.projSortName = "";
		}
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
			return "마감";
		}
		return "";
	}
	
	public String getProjMarginName() {
		if (this.projMargin == 10) {
			return this.projMarginName = "10% 미만";
		}
		if (this.projMargin == 20) {
			return this.projMarginName = "11 ~ 20%";
		}
		if (this.projMargin == 30) {
			return this.projMarginName = "21 ~ 30%";
		}
		if (this.projMargin == 31) {
			return this.projMarginName = "30% 초과";
		}
		return this.projMarginName = "";
	}
	
	public String getProjNationName() {
		if (this.projNation.equals("02")) {
			return this.projNationName = "서울";
		}
		if (this.projNation.equals("031")) {
			return this.projNationName = "경기";
		}
		if (this.projNation.equals("032")) {
			return this.projNationName = "인천";
		}
		if (this.projNation.equals("033")) {
			return this.projNationName = "강원";
		}
		if (this.projNation.equals("041")) {
			return this.projNationName = "충남";
		}
		if (this.projNation.equals("042")) {
			return this.projNationName = "대전";
		}
		if (this.projNation.equals("043")) {
			return this.projNationName = "충북";
		}
		if (this.projNation.equals("051")) {
			return this.projNationName = "부산";
		}
		if (this.projNation.equals("052")) {
			return this.projNationName = "울산";
		}
		if (this.projNation.equals("053")) {
			return this.projNationName = "대구";
		}
		if (this.projNation.equals("054")) {
			return this.projNationName = "경북";
		}
		if (this.projNation.equals("055")) {
			return this.projNationName = "경남";
		}
		if (this.projNation.equals("061")) {
			return this.projNationName = "전남";
		}
		if (this.projNation.equals("062")) {
			return this.projNationName = "광주";
		}
		if (this.projNation.equals("063")) {
			return this.projNationName = "전북";
		}
		if (this.projNation.equals("044")) {
			return this.projNationName = "세종특별자치시";
		}
		if (this.projNation.equals("064")) {
			return this.projNationName = "제주특별자치도";
		}
		if (this.projNation.equals("999")) {
			return this.projNationName = "해외";
		}
		return this.projNationName = "";
	}
	
	public String getProjProdCertiName() {
		if (this.projProdCerti == null) {
			 return "미검증";
		 }
		 if (this.projProdCerti.equals("0")) {
			 return "미검증";
		 }
		 if (this.projProdCerti.equals("1")) {
			 return "검증";
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
	
	public String[] getProjChannelList() {
		this.projChannelList = this.projChannel.split(",");
		for (int i = 0; i < this.projChannelList.length; i++) {
			if (this.projChannelList[i].equals("1")) {
				this.projChannelList[i] = "오픈마켓";
			}
			if (this.projChannelList[i].equals("2")) {
				this.projChannelList[i] = "종합몰";
			}
			if (this.projChannelList[i].equals("3")) {
				this.projChannelList[i] = "폐쇄몰";
			}
			if (this.projChannelList[i].equals("4")) {
				this.projChannelList[i] = "커뮤니티";
			}
			if (this.projChannelList[i].equals("5")) {
				this.projChannelList[i] = "SNS";
			}
			if (this.projChannelList[i].equals("6")) {
				this.projChannelList[i] = "오프라인";
			}
			if (this.projChannelList[i].equals("7")) {
				this.projChannelList[i] = "해외";
			}
		}
		
		return this.projChannelList;
	}
}
