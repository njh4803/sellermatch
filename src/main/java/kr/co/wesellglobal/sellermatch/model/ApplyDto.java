package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//산업리스트 
@Data
public class ApplyDto {

    // 자동번호 
    private int applyIdx;

    // 지원고유번호 
    private String applyId;

    // 프로젝트고유번호 
    private String applyProjId;

    // 회원고유번호 
    private String applyMemId;

    // 등록일시 
    private String applyRegDate;

    // 프로필고유번호 공급자냐 셀러냐 로그인에 따라 변동: Seller_id or Pp_id
    private String applyProfile;
    
    // 지원유형 1-지원, 2-제안
	private String applyType;
	
	// 계약진행상태 0-거절, 1-취소  2- 지원  3- 제안 4 - 대기 5- 계약
	private String applyProjState;
	
	// 지원자 닉네임
	private String memNick;
	
	// 지원자 프로필사진
	private String profilePhoto;
	
	// 해시태그 해시태그(검색 키워드) 구분자(,)
    private String profileHashtag;
    
    // 해시태그 리스트
 	private String[] profileHashtagList;
 	
	// 프로젝트 계약된 수
    private int contractCount;
    // 프로젝트 등록 수
	private int projAddCount;
	// 프로젝트 제안 수 (제안받거나 제안한 수)
	private int recommendCount;
	// 지원자 수
	private int applyCount;
	// 프로젝트 ID
	private String projId;
	// 프로젝트 조회수
	private int projHit;
	// 프로젝트 상태 정상(1), 중지(0)
	private String projState;
	// 프로젝트 등록일 
	private String projRegDate;
	// 프로젝트 마감일 
	private String projEndDate;
	// 프로젝트 제목 
	private String projTitle;
	// 모집마감일을 D-Day로 변환
	private String projDday;
 	
 	public String[] getProfileHashtagList() {
		 this.profileHashtagList = profileHashtag.split(",");
		for (int i = 0; i < this.profileHashtagList.length; i++) {
			if (this.profileHashtagList[i].equals("1")) {
				this.profileHashtagList[i] = "채널검증셀러";
			}
			if (this.profileHashtagList[i].equals("2")) {
				this.profileHashtagList[i] = "매출검증셀러";
			}
			if (this.profileHashtagList[i].equals("3")) {
				this.profileHashtagList[i] = "경력 1년미만 검출셀러";
			}
			if (this.profileHashtagList[i].equals("4")) {
				this.profileHashtagList[i] = "사업자인증셀러";
			}
			if (this.profileHashtagList[i].equals("5")) {
				this.profileHashtagList[i] = "신원인증셀러";
			}
		}
		
		return this.profileHashtagList;
	}
}
