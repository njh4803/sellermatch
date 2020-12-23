package kr.co.wesellglobal.sellermatch.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class SearchCriteria extends Criteria {
	
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
		 private MultipartFile[] sellerPhoto;
		
		 // 판매자 상태 중지(0), 정상(1)
		 private String sellerState;
		
		 // 판매자 등록일 
		 private String sellerRegDate;
		
		 // 판매자정보 수정일 
		 private String sellerEditDate;
		 
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
	    private MultipartFile ppPhoto;

	    // 공급자 상태 중지(0), 정상(1)
	    private String ppState;

	    // 공급자 등록일 
	    private String ppRegDate;

	    // 공급자정보 수정일 
	    private String ppEditDate;

		public String getSellerId() {
			return sellerId;
		}

		public void setSellerId(String sellerId) {
			this.sellerId = sellerId;
		}

		public String getSellerMemId() {
			return sellerMemId;
		}

		public void setSellerMemId(String sellerMemId) {
			this.sellerMemId = sellerMemId;
		}

		public String getSellerGrade() {
			return sellerGrade;
		}

		public void setSellerGrade(String sellerGrade) {
			this.sellerGrade = sellerGrade;
		}

		public String getSellerIntro() {
			return sellerIntro;
		}

		public void setSellerIntro(String sellerIntro) {
			this.sellerIntro = sellerIntro;
		}

		public String getSellerChChk() {
			return sellerChChk;
		}

		public void setSellerChChk(String sellerChChk) {
			this.sellerChChk = sellerChChk;
		}

		public String getSellerChChkDate() {
			return sellerChChkDate;
		}

		public void setSellerChChkDate(String sellerChChkDate) {
			this.sellerChChkDate = sellerChChkDate;
		}

		public String getSellerCareer() {
			return sellerCareer;
		}

		public void setSellerCareer(String sellerCareer) {
			this.sellerCareer = sellerCareer;
		}

		public String getSellerSaleChk() {
			return sellerSaleChk;
		}

		public void setSellerSaleChk(String sellerSaleChk) {
			this.sellerSaleChk = sellerSaleChk;
		}

		public String getSellerNation() {
			return sellerNation;
		}

		public void setSellerNation(String sellerNation) {
			this.sellerNation = sellerNation;
		}

		public String getSellerBizNum() {
			return sellerBizNum;
		}

		public void setSellerBizNum(String sellerBizNum) {
			this.sellerBizNum = sellerBizNum;
		}

		public String getSellerBizSort() {
			return sellerBizSort;
		}

		public void setSellerBizSort(String sellerBizSort) {
			this.sellerBizSort = sellerBizSort;
		}

		public String getSellerBizCerti() {
			return sellerBizCerti;
		}

		public void setSellerBizCerti(String sellerBizCerti) {
			this.sellerBizCerti = sellerBizCerti;
		}

		public String getSellerCh() {
			return sellerCh;
		}

		public void setSellerCh(String sellerCh) {
			this.sellerCh = sellerCh;
		}

		public String getSellerIndus() {
			return sellerIndus;
		}

		public void setSellerIndus(String sellerIndus) {
			this.sellerIndus = sellerIndus;
		}

		public MultipartFile[] getSellerPhoto() {
			return sellerPhoto;
		}

		public void setSellerPhoto(MultipartFile[] sellerPhoto) {
			this.sellerPhoto = sellerPhoto;
		}

		public String getSellerState() {
			return sellerState;
		}

		public void setSellerState(String sellerState) {
			this.sellerState = sellerState;
		}

		public String getSellerRegDate() {
			return sellerRegDate;
		}

		public void setSellerRegDate(String sellerRegDate) {
			this.sellerRegDate = sellerRegDate;
		}

		public String getSellerEditDate() {
			return sellerEditDate;
		}

		public void setSellerEditDate(String sellerEditDate) {
			this.sellerEditDate = sellerEditDate;
		}

		public int getPpIdx() {
			return ppIdx;
		}

		public void setPpIdx(int ppIdx) {
			this.ppIdx = ppIdx;
		}

		public String getPpId() {
			return ppId;
		}

		public void setPpId(String ppId) {
			this.ppId = ppId;
		}

		public String getPpProjId() {
			return ppProjId;
		}

		public void setPpProjId(String ppProjId) {
			this.ppProjId = ppProjId;
		}

		public String getPpMemId() {
			return ppMemId;
		}

		public void setPpMemId(String ppMemId) {
			this.ppMemId = ppMemId;
		}

		public String getPpGrade() {
			return ppGrade;
		}

		public void setPpGrade(String ppGrade) {
			this.ppGrade = ppGrade;
		}

		public String getPpIntro() {
			return ppIntro;
		}

		public void setPpIntro(String ppIntro) {
			this.ppIntro = ppIntro;
		}

		public String getPpNation() {
			return ppNation;
		}

		public void setPpNation(String ppNation) {
			this.ppNation = ppNation;
		}

		public String getPpBizNum() {
			return ppBizNum;
		}

		public void setPpBizNum(String ppBizNum) {
			this.ppBizNum = ppBizNum;
		}

		public String getPpBizSort() {
			return ppBizSort;
		}

		public void setPpBizSort(String ppBizSort) {
			this.ppBizSort = ppBizSort;
		}

		public String getPpProfit() {
			return ppProfit;
		}

		public void setPpProfit(String ppProfit) {
			this.ppProfit = ppProfit;
		}

		public String getPpProfitChkDate() {
			return ppProfitChkDate;
		}

		public void setPpProfitChkDate(String ppProfitChkDate) {
			this.ppProfitChkDate = ppProfitChkDate;
		}

		public String getPpBizCerti() {
			return ppBizCerti;
		}

		public void setPpBizCerti(String ppBizCerti) {
			this.ppBizCerti = ppBizCerti;
		}

		public String getPpIndus() {
			return ppIndus;
		}

		public void setPpIndus(String ppIndus) {
			this.ppIndus = ppIndus;
		}

		public String getPpCh() {
			return ppCh;
		}

		public void setPpCh(String ppCh) {
			this.ppCh = ppCh;
		}

		public MultipartFile getPpPhoto() {
			return ppPhoto;
		}

		public void setPpPhoto(MultipartFile ppPhoto) {
			this.ppPhoto = ppPhoto;
		}

		public String getPpState() {
			return ppState;
		}

		public void setPpState(String ppState) {
			this.ppState = ppState;
		}

		public String getPpRegDate() {
			return ppRegDate;
		}

		public void setPpRegDate(String ppRegDate) {
			this.ppRegDate = ppRegDate;
		}

		public String getPpEditDate() {
			return ppEditDate;
		}

		public void setPpEditDate(String ppEditDate) {
			this.ppEditDate = ppEditDate;
		}

		@Override
		public String toString() {
			return "SearchCriteria [sellerId=" + sellerId + ", sellerMemId=" + sellerMemId + ", sellerGrade="
					+ sellerGrade + ", sellerIntro=" + sellerIntro + ", sellerChChk=" + sellerChChk
					+ ", sellerChChkDate=" + sellerChChkDate + ", sellerCareer=" + sellerCareer + ", sellerSaleChk="
					+ sellerSaleChk + ", sellerNation=" + sellerNation + ", sellerBizNum=" + sellerBizNum
					+ ", sellerBizSort=" + sellerBizSort + ", sellerBizCerti=" + sellerBizCerti + ", sellerCh="
					+ sellerCh + ", sellerIndus=" + sellerIndus + ", sellerPhoto=" + sellerPhoto + ", sellerState="
					+ sellerState + ", sellerRegDate=" + sellerRegDate + ", sellerEditDate=" + sellerEditDate
					+ ", ppIdx=" + ppIdx + ", ppId=" + ppId + ", ppProjId=" + ppProjId + ", ppMemId=" + ppMemId
					+ ", ppGrade=" + ppGrade + ", ppIntro=" + ppIntro + ", ppNation=" + ppNation + ", ppBizNum="
					+ ppBizNum + ", ppBizSort=" + ppBizSort + ", ppProfit=" + ppProfit + ", ppProfitChkDate="
					+ ppProfitChkDate + ", ppBizCerti=" + ppBizCerti + ", ppIndus=" + ppIndus + ", ppCh=" + ppCh
					+ ", ppPhoto=" + ppPhoto + ", ppState=" + ppState + ", ppRegDate=" + ppRegDate + ", ppEditDate="
					+ ppEditDate + "]";
		}

}
