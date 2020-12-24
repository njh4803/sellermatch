package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

// 댓글/답글 리스트
@Data
public class ReplyDto {
    // 자동번호 
    private Integer replyIdx;

    // 댓글고유번호 
    private String replyId;

    // 작성자 
    private String replyWriter;

    // 댓글 내용 
    private String replyContents;

    // 프로젝트고유번호 연결할 테이블의 고유번호(게시판리스트, 프로젝트리스트)
    private String replyProjId;

    // 게시판 고유번호 연결할 테이블의 고유번호(게시판리스트, 프로젝트리스트)
    private String replyBoardId;

    // 댓글 그룹 번호 
    private int replyGno;

    // 댓글 순서 
    private int replyGseq;

    // 댓글 계층 
    private int replyDepth;

    // 등록일시 
    private String replyRegDate;

    // 댓글 비밀번호 
    private String replyPw;
}
