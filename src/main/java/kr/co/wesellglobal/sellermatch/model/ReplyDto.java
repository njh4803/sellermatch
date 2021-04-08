package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

// 댓글/답글 리스트
@Data
public class ReplyDto {
    // 댓글고유번호 
    private int replyId;

    // 부모 댓글 
    private int replyParent;

    // 작성자 
    private String replyWriter;

    // 댓글 내용 
    private String replyContents;

    // 프로젝트고유번호 연결할 테이블의 고유번호(게시판리스트, 프로젝트리스트)
    private String replyProjId;

    // 게시판 고유번호 연결할 테이블의 고유번호(게시판리스트, 프로젝트리스트)
    private String replyBoardId;

    // 등록일시 
    private String replyRegDate;

    // 댓글 비밀번호 
    private String replyPw;
    
    // 비밀글 사용여부 Y, N
    private String replySecret;
}
