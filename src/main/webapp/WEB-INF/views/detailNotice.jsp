<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<div class="partner_bnr">
    <div class="partner_wrap" style="height: 517px;">
        <h2>공지사항 상세페이지</h2>
        <div>${output.boardTitle}</div>
        <div>${output.boardContents}</div>
        <div>${output.boardHit}</div>
        <div>${output.boardRegDate}</div>
        <div>${output.boardWriter}</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>