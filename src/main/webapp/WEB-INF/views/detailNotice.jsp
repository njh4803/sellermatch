<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
	.tabBox{
		width: 1280px;
		height: 270px;
		border-bottom: solid 3px #000000;
		background-color: #ffffff;
		padding-top: 60px;
		text-align: center;	
	}
	.tab-title{
		margin: 0 206px 15px 205px;
		font-size: 50px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		line-height: 1.34;
		letter-spacing: normal;
		text-align: center;
		color: #000000;
	}
	.tab-text{
		margin: 15px 0 0;
		font-size: 15px;
		font-weight: normal;
		font-stretch: normal;
		font-style: normal;
		line-height: 1.35;
		letter-spacing: normal;
		color: #707070;	
	}
	.notice-header{
	  height: 120px;
	  border-bottom: solid 1px #e3e3e3;
	  background-color: #ffffff;
	  text-align: left;
	}
	.notice-header > div:nth-child(1){
		font-size: 20px;
	    font-weight: bold;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: 1.75;
	    letter-spacing: normal;
	    text-align: left;
	    color: #000000;
	    padding: 32px 0 0 50px;
	}
	.notice-header > div:nth-child(2){
		padding: 14px 0 32px 50px;
	}
	.notice-detail{
		height: 800px;
		border-bottom: solid 1px #e3e3e3;
	}
	.regdate{
	  font-size: 12px;
	  font-weight: bold;
	  font-stretch: normal;
	  font-style: normal;
	  letter-spacing: normal;
	  text-align: left;
	  color: #000000;
	}
	.notice-header span:nth-child(2) {
	  font-weight: normal;
	  color: #575757;
	  margin-left: 19px; 
	}
	.contents-box{
	display: inline-block;
	width: 1000px;
	height: 260px;
	background-color: #ffffff;
	margin-top: 40px;
	}
.contents-box .contents{	  
	  font-size: 12px;
	  font-weight: normal;
	  font-stretch: normal;
	  font-style: normal;
	  letter-spacing: normal;
	  text-align: left;
	  color: #575757;
	  padding: 40px;
  }
</style>
<div class="partner_bnr">
    <div class="partner_wrap notice-detail">
        <div class="tabBox">
        	<div class="tab-title">공지사항</div>
        	<div class="tab-text">셀러매치 서비스의 새소식, 오류, 장애, 기타 공지사항을 안내드립니다.</div>
        </div>
        <div class="notice-header">
        	<div>${output.boardTitle}</div>
        	<div>
        		<span class="regdate">등록일</span>
        		<span class="regdate">${output.boardRegDate}</span>
        	</div>
        </div>
        <div class="contents-box">
        	<div class="contents">${output.boardContents}</div>
        </div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>