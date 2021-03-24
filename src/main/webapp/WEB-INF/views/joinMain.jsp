<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/joinMain.css">

<div class="partner_bnr">
    <div class="partner_wrap">
	    <div class="joinMainSub">
	    	<div class="joinMainSub1">
		        <div>
		        	<img class="join-img" alt="" src="${pageContext.request.contextPath}/assets/img/join001.png">
		        </div>
		        <div>
		        	<img class="join-logo" alt="" src="${pageContext.request.contextPath}/assets/img/sellermatch_logo3.png">
		        </div>
		        <div class="textbox1">로그인이 필요한 서비스입니다</div>
		        <div class="textbox2">회원가입 후, 다양한 서비스를 편리하게 이용하 실 수 있습니다</div>
			</div>
			<div class="joinMainSub2">
			    <div class="partner_wrap2">
			        <h2>셀러매치 5초 SNS 간편가입</h2>
			        <div class="joinBox">
			        	<img class="mail" alt="" src="${pageContext.request.contextPath}/assets/img/mail_2.png">
			        	<a href="${pageContext.request.contextPath}/member/join">이메일로 회원가입</a>
			        </div>
			        <div class="joinBox naver">
			        	<img alt="" src="${pageContext.request.contextPath}/assets/img/naver_2.png">
			        		<a class="" href="${ naver_url }">네이버로 회원가입</a>
			        </div>
			        <div class="joinBox kakao">
			        	<img alt="" src="${pageContext.request.contextPath}/assets/img/kakao_2.png">
			        	<a class="" href="${ kakao_url }">카카오톡으로 회원가입</a>
			        </div>
			        <div class="joinBox google">
			        	<img alt="" src="${pageContext.request.contextPath}/assets/img/google_2.png">
			        	<a class="" href="${ google_url }">구글계정으로 회원가입</a>
			        </div>
			    </div>
		    </div>
	    </div>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
</script>    
    </body>
</html>
