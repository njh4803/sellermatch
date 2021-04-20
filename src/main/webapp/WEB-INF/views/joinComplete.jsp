<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/joinComplete.css">

<div class="partner_bnr">
    <div class="partner_wrap">
	    <div class="joinMainSub">
	    	<div>
		     	<img class="join-img" alt="" src="${pageContext.request.contextPath}/assets/img/joinComplete.png">
		    </div>
		    <div>
		    <div class="textbox0">셀러매치 가입을 환영합니다!<br>지금 바로 이용해보세요.</div>
		    </div>
		    <div class="textbox1">확실한 거래파트너를 찾는 팁</div>
		    <div class="textbox2">거래처 찾기 등록, 내용은 풍부하게</div>
		    <div class="textbox3">매력적인 프로필 등록은 필수!</div>
		    <div class="goBox">
<%-- 		  		<div class="goProfile" OnClick="location.href ='${pageContext.request.contextPath}/profile'" style="cursor:pointer;">
			      	<a href="${pageContext.request.contextPath}/profile">프로필 등록하기</a>
			    </div> --%>
			    <div class="goBack" OnClick="location.href ='${pageContext.request.contextPath}/'" style="cursor:pointer;">
			      	<a href="${pageContext.request.contextPath}/">원래 페이지로 돌아가기</a>
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
