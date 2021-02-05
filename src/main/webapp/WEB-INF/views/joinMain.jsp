<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
.partner_bnr {
    width: 100%;
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
    margin: 0 auto;
    text-align: center;
}
.partner_bnr .partner_wrap2 {
    width: 640px;
    margin: 0 auto;
    margin-top: 50px;
    margin-bottom: 20px;
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
	height: 60px;
    display: inline-block;
    margin: 10px;
 border-radius: 5px;
  border: solid 1px #e3e3e3;
	background-color: #ffffff;
	padding: 20px;
	
}
.joinBox img{
	margin-right: 5px;
    margin-top: -5px;
}

.joinBox img.mail{
    top: -4px;
    right: -2px;
}
.joinBox.naver{
	background-color: #ffffff;
 border-radius: 5px;
  border: solid 1px #e3e3e3;
}
.joinBox.naver a{
	color: #000000;
}
.joinBox.kakao{
	background-color: #ffffff;
 border-radius: 5px;
  border: solid 1px #e3e3e3;
}
.joinBox.kakao a{
	color: #000000;
}
.joinBox.google{
 border-radius: 5px;
  border: solid 1px #e3e3e3;
	background-color: #ffffff;
}
.joinBox.google a{
color: #000000;
}
.joinBox a{
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.bar{
  width: 1920px;
  height: 40px;
  margin-bottom: 110.5px;
  background-image: linear-gradient(to right, #d90b54, #153f92 51%, #57207c);
}
.textbox1{
	height: 36px;
    margin: 4.5px 0 8px 0;
    font-family: NotoSansKR;
    font-size: 25px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.44;
    letter-spacing: normal;
    text-align: center;
    color: #000000;
}
.textbox2{
  margin-top: 10px;
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: center;
  color: #535353;
}
.partner_bnr .partner_wrap .partner_wrap2 h2{
  font-family: NotoSansKR;
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.csCenter{
  margin-top: 20px;
  font-family: NotoSansKRRegular;
  font-size: 16px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #8b8b8b;
}
.hr001{
    display: inline-block;
    width: 500px !important;
    height: 0 !important;
    margin: 20px 0 0 0.5px !important;
    border: solid 0.5px #eeeeee !important;
    text-align: center;
}
</style>
<div class="partner_bnr">
	<div class="bar"></div>
    <div class="partner_wrap">
        <div>
        	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/join001.png">
        </div>
        <div>
        	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/login-logo.png">
        </div>
        <div class="textbox1">셀러매치는 로그인이 필요한 서비스입니다</div>
        <div class="textbox2">회원이 아니시라면, 5초! 회원가입 후 셀러매치의 서비스를 이용해주세요</div>
        <hr class="hr001">
	    <div class="partner_wrap2">
	        <h2>셀러매치 5초 SNS 간편가입</h2>
	        <div class="joinBox naver">
	        	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/naver.png">
	        		<a class="" href="#">네이버 아이디로 회원가입</a>
	        </div>
	        <div class="joinBox kakao">
	        	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/kakao.png">
	        	<a class="" href="#">카카오톡으로 회원가입</a>
	        </div>
	        <div class="joinBox google">
	        	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/google.png">
	        	<a class="" href="#">구글 계정으로 회원가입</a>
	        </div>
	        <div class="joinBox">
	        	<img class="mail" alt="" src="${pageContext.request.contextPath}/local_assets/img/mail.png">
	        	<a href="${pageContext.request.contextPath}/member/join">이메일로 회원가입</a>
	        </div>
	        <div class="csCenter">고객센터 : help@sellermatch.co.kr</div>
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
