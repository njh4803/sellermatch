<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
.partner_bnr {
    width: 100%;
    padding-top: 180px;
    padding-bottom: 100px;
}
.partner_bnr2 {
    width: 100%;
    padding-bottom: 100px;
    text-align: center;
}
a {
	text-decoration: none;
	color: black;
}
a:hover {
	text-decoration: none;
	color: black;
}
.partner_bnr .partner_wrap h2 {
    font-size: 30px;
    line-height: 60px;
    font-weight: 700;
    margin-bottom: 10px;
}
.partner_bnr .partner_wrap {
    width: 1280px;
    margin: 40px auto;
    text-align: center;
}
.partner_bnr .partner_wrap2 {
    width: 640px;
    margin: 40px auto;
    text-align: center;
}
.width-70{
	width: 70%;
	float: left;
}
.width-30{
	width: 30%;
	display: inline-block;
}
.row1{
	display: inline-block;
}
.joinBox{
	width: 500px;
    display: inline-block;
    margin: 20px;
    border: 2px solid #e3e3e3;
}
.joinBox button{
	background-color: white;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
        <h2>회원가입</h2>
        <h3>안녕하십니까? 셀러매치에 오신 것을 환영합니다</h3>
	    <div class="partner_wrap2">
	        <h2><span style="color: purple;">5초</span> 안에 SNS 간편가입</h2>
	        <hr width="80%;">
	        <div class="joinBox">
	        	<button><h1>네이버 가입</h1></button>
	        </div>
	        <div class="joinBox">
	        	<button><h1>카카오 가입</h1></button>
	        </div>
	        <div class="joinBox">
	        	<button><h1>구글 가입</h1></button>
	        </div>
	        <div class="joinBox">
	        	<h1><a href="${pageContext.request.contextPath}/member/join">이메일 가입</a></h1>
	        </div>
	    </div>
    </div>

</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
       
});
</script>    
    </body>
</html>
