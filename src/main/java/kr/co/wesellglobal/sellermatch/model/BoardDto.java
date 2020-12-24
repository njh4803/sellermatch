package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//게시판리스트
@Data
public class BoardDto {
	
	// 자동번호 
	private int boardIdx;
	
	// 게시판고유번호 
	private String boardId;
	
	// 제목 
	private String boardTitle;
	
	// 내용 
	private String boardContents;
	
	// 작성자 
	private String boardWriter;
	
	// 게시판 유형 1 - Notice(공지), 2 - FAQ(자주하는 질문), 3 - QA(문의하기), 4 - 1대1 문의
	private String boardType;
	
	// 1 - 일반 문의, 2 - 주문결제문의, 3 - 환불문의, 4 - 반품문의, 5 - 기타 문의 등등
	private String boardQaType;
	
	// 이메일 
	private String boardEmail;
	
	// 조회수 
	private int boardHit;
	
	// 등록일시 
	private String boardRegDate;
	
	// 수정일시 
	private String boardEditDate;
	
	public String getBoardTypeName() {
		if (this.boardType.equals("1")) {
			return "공지사항";
		}
		if (this.boardType.equals("2")) {
			return "자주하는 질문";
		}
		if (this.boardType.equals("3")) {
			return "문의하기";
		}
		if (this.boardType.equals("4")) {
			return "1대1 문의";
		}
		return "";
	}
	
	public String getBoardQaTypeName() {
		if (this.boardQaType.equals("1")) {
			return "일반문의";
		}
		if (this.boardQaType.equals("2")) {
			return "주문결제문의";
		}
		if (this.boardQaType.equals("3")) {
			return "환불문의";
		}
		if (this.boardQaType.equals("4")) {
			return "반품문의";
		}
		if (this.boardQaType.equals("4")) {
			return "기타문의";
		}
		return "";
	}
}
