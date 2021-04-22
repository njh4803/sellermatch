<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/boardDetail.css" rel="stylesheet" type="text/css">

<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="use-top-left">
	    			<div class="use-title">
	    				커뮤니티
	    			</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>
    		</div>
	    	<hr class="use-hr">
	    </div>
	    <div class="notice-header">
        	<div class="detailContentsTitle">
        		<div class="detailContentsTitle1">
        			<span>${output.boardTitle}</span>
	        	</div>
	        	<div class="detailContentsTitleRegDate">
	        		<div class="infoBox">
	        			<span class="regdateText">작성자</span>
	        			<span class="regdateDate">${output.boardWriterNick}</span>
	        		</div>
	        		<div class="infoBox">
	        			<span class="regdateText">등록일</span>
	        			<span class="regdateDate">${output.boardRegDate}</span>
	        		</div>
	        	</div>
        	</div>
        </div>
        <div class="contents-box">
        	<div class="contents">${output.boardContents}</div>
        </div>
        <div class="detailContentsButtonBox">
        	<div class="detailContentsButton" OnClick="location.href ='${pageContext.request.contextPath}/board?boardType=3'" style="cursor:pointer;">
			    <a>목록</a>
			</div>
        </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
