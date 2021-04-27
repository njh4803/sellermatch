package kr.co.wesellglobal.sellermatch.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

//프로필 
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
    private String profileCareerName;

    // 판매자 매출 검증 미검증(0),검증(1)
    private String profileSaleChk;

    // 판매자 매출규모 매출규모 금액만
    private Integer profileVolume;

    // 등록지역 국번
    private String profileNation;
    private String profileNationName;

    // 사업자번호 
    private String profileBizNum;

    // 사업자분류 법인사업자(1), 개인사업자(2), 간이과세자(3), 개인(4), 기타(5)
    private String profileBizSort;
    private String profileBizSortName;

    // 사업자인증 미인증(0), 인증완료(1)
    private String profileBizCerti;

    // 산업분류 vChar(10) : 01~9 ( 농수산물-1, 공산품-2,……..) , 별도 분류 테이블
    private String profileIndus;

    // 프로필소개이미지 멀티이미지(5장)
    private String profilePhoto;
	/* private MultipartFile profilePhotoFile; */

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
    private String profileSortName;

    // 조회수 프로필 조회수
    private int profileHit;
    
    // 회원 닉네임
    private String memNick;
    
    // 지원자 닉네임
    private String applyMemNick;
    
    // 신원 인증
    private String memRname;
    
    // 프로젝트 등록 수
    private int projAddCount;
    
    // 프로젝트 요청(제안)받은 수
    private int recommendCount;
    
    // 프로젝트 계약된 수
    private int contractCount;
    
    // IndusList가 필요한지 여부
    private String needIndus;
    
	// 해시태그
	private String hashTag1;
	private String hashTag2;
	private String hashTag3;
	private String hashTag4;
	private String hashTag5;
    
    /**페이지 구현을 위한 static변수*/
	private static int offset;
	private static int listCount;
	
	 // 상품분류 문자로 치환
	 private String profileIndusName;
	 
	 // 사진 리스트
	 private String[] profilePhotoList;
	 
	// 채널 리스트
	private String[] profileChannelList;
	
	// 해시태그 리스트
	private String[] profileHashtagList;
	
	/** 검색을 위한 변수 */
	private String sort;
	
	/** 검색을 위한 배열 */
	private String[] profileNationArr;
	private String[] profileIndusArr;
	private String[] profileChannelArr;
	private String[] profileBizSortArr;
	private String[] profileCareerArr;
	private String[] profileVolumeArr;
	 
	 public static int getOffset() {
			return offset;
		}
		public static void setOffset(int offset) {
			ProfileDto.offset = offset;
		}
		public static int getListCount() {
			return listCount;
		}
		public static void setListCount(int listCount) {
			ProfileDto.listCount = listCount;
		}
	 
	 public String getProfileIndusName() {
			return profileIndusName;
	 }
	 
	 public String[] getProfileHashtagList() {
		if (this.profileHashtag == null) {
			return this.profileHashtagList = null;
		}
		this.profileHashtagList = this.profileHashtag.split(",");
		
		return this.profileHashtagList;
	}
	 
	 public void setProfilePhotoList(String profilePhoto) {
		 this.profilePhotoList = profilePhoto.split(",");
	 }
			
	 public String[] getProfilePhotoList() {
		 return this.profilePhotoList;
	 }
	 
	 public String getProfileChChkName() {
		 if (this.profileChChk.equals("0")) {
			 return "미검증";
		 }
		 if (this.profileChChk.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getProfileCareerName() {
		 if (this.profileCareer == null) {
			 return "";
		 }
		 if (this.profileCareer.equals("0")) {
			 return this.profileCareerName = "경력없음";
		 }
		 if (this.profileCareer.equals("1")) {
			 return this.profileCareerName = "1개월 이상 ~ 3개월 미만";
		 }
		 if (this.profileCareer.equals("3")) {
			 return this.profileCareerName = "3개월 이상 ~ 6개월 미만";
		 }
		 if (this.profileCareer.equals("6")) {
			 return this.profileCareerName = "6개월 이상 ~ 1년 미만";
		 }
		 if (this.profileCareer.equals("9")) {
			 return this.profileCareerName = "1년 이상 ~ 3년 미만";
		 }
		 if (this.profileCareer.equals("8")) {
			 return this.profileCareerName = "3년 이상";
		 }
		 return "";
	 }
	 
	 public String getProfileSaleChkName() {
		 if (this.profileSaleChk.equals("0")) {
			 return "미검증";
		 }
		 if (this.profileSaleChk.equals("1")) {
			 return "검증";
		 }
		 return "";
	 }
	 
	 public String getProfileNationName() {
		 if (this.profileNation == null) {
			 return "";
		}
		 if (this.profileNation.equals("02")) {
			 return this.profileNationName = "서울";
		 }
		 if (this.profileNation.equals("031")) {
			 return this.profileNationName = "경기";
		 }
		 if (this.profileNation.equals("032")) {
			 return this.profileNationName = "인천";
		 }
		 if (this.profileNation.equals("033")) {
			return this.profileNationName = "강원";
		}
		if (this.profileNation.equals("041")) {
			return this.profileNationName = "충남";
		}
		if (this.profileNation.equals("042")) {
			return this.profileNationName = "대전";
		}
		if (this.profileNation.equals("043")) {
			return this.profileNationName = "충북";
		}
		if (this.profileNation.equals("051")) {
			return this.profileNationName = "부산";
		}
		if (this.profileNation.equals("052")) {
			return this.profileNationName = "울산";
		}
		if (this.profileNation.equals("053")) {
			return this.profileNationName = "대구";
		}
		if (this.profileNation.equals("054")) {
			return this.profileNationName = "경북";
		}
		if (this.profileNation.equals("055")) {
			return this.profileNationName = "경남";
		}
		if (this.profileNation.equals("061")) {
			return this.profileNationName = "전남";
		}
		if (this.profileNation.equals("062")) {
			return this.profileNationName = "광주";
		}
		if (this.profileNation.equals("063")) {
			return this.profileNationName = "전북";
		}
		if (this.profileNation.equals("044")) {
			return this.profileNationName = "세종특별자치시";
		}
		if (this.profileNation.equals("064")) {
			return this.profileNationName = "제주특별자치도";
		}
		if (this.profileNation.equals("999")) {
			return this.profileNationName = "해외";
		}
		 return this.profileNationName = "";
	 }
	 
	 public String getProfileBizSortName() {
		 if (this.profileBizSort == null) {
			 return "";
		 }
		 if (this.profileBizSort.equals("1")) {
			 return this.profileBizSortName = "법인사업자";
		 }
		 if (this.profileBizSort.equals("2")) {
			 return this.profileBizSortName = "개인사업자";
		 }
		 if (this.profileBizSort.equals("3")) {
			 return this.profileBizSortName = "간이과세자";
		 }
		 if (this.profileBizSort.equals("4")) {
			 return this.profileBizSortName = "개인";
		 }
		 if (this.profileBizSort.equals("5")) {
			 return this.profileBizSortName = "기타";
		 }
		 return this.profileBizSortName = "";
	 }
	 
	 public String getProfileBizCertiName() {
		 if (this.profileBizCerti.equals("0")) {
			 return "미인증";
		 }
		 if (this.profileBizCerti.equals("1")) {
			 return "인증";
		 }
		 return "";
	 }
	 
	 public String getProfileStateName() {
		 if (this.profileState.equals("0")) {
			 return "중지";
		 }
		 if (this.profileState.equals("1")) {
			 return "정상";
		 }
		 return "";
	 }
	 
	 public String getProfileSortName() {
		 if (this.profileSort == null) {
			 return this.profileSortName = "일반";
		 }
		 if (this.profileSort.equals("1")) {
			 return this.profileSortName = "공급자";
		 }
		 if (this.profileSort.equals("2")) {
			 return this.profileSortName = "판매자";
		 }
		 return "";
	 }
	 
	public String[] getProfileChannelList() {
		if (this.profileCh == null) {
			 return this.profileChannelList;
		 }
		this.profileChannelList = this.profileCh.split(",");
		for (int i = 0; i < this.profileChannelList.length; i++) {
			if (this.profileChannelList[i].equals("1")) {
				this.profileChannelList[i] = "오픈마켓";
			}
			if (this.profileChannelList[i].equals("2")) {
				this.profileChannelList[i] = "종합몰";
			}
			if (this.profileChannelList[i].equals("3")) {
				this.profileChannelList[i] = "폐쇄몰";
			}
			if (this.profileChannelList[i].equals("4")) {
				this.profileChannelList[i] = "커뮤니티";
			}
			if (this.profileChannelList[i].equals("5")) {
				this.profileChannelList[i] = "SNS";
			}
			if (this.profileChannelList[i].equals("6")) {
				this.profileChannelList[i] = "오프라인";
			}
			if (this.profileChannelList[i].equals("7")) {
				this.profileChannelList[i] = "해외";
			}
		}
		
		return this.profileChannelList;
	}
}