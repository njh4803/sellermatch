<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../inc/header.jsp"%>
<!DOCTYPE html>
<head>
    <title>SELLER MATCH</title>
	<meta charset="utf-8" />
	<link href="${pageContext.request.contextPath}/assets/css/error.css" rel="stylesheet" type="text/css">
</head>
<div class="partner_bnr">
    <div class="partner_wrap">
		<div class="error-container">
			<div style="margin: 0 auto;">
				<div class="imgBox">
					<img alt="" src="${pageContext.request.contextPath}/assets/img/404.png">
				</div>
			    <div class="textBox">
			        <span>죄송합니다. 현재 찾을 수 없는 페이지를 요청하셨습니다.</span>
			        <div class="textBox2">
			            <p>존재하지 않는 주소를 입력하셨거나,</p>
			            <p>요청하신 페이지의 주소가 변경 혹은 삭제되어 찾을 수 없습니다.</p>
			            <p>궁금한 점이 있으시면 언제든 고객센터를 통해 문의해 주시기 바랍니다.</p>
			        </div>
			        <button class="home">GO HOME</button> 
			        <button class="referer" data-value="${referer}">이전으로</button>
			    </div>		
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).on("click", ".home", function(){
	   	window.location = ROOT_URL + "/";
	});
	$(document).on("click", ".referer", function(){
		history.back();
	});	
</script>
<%@ include file="../inc/footer.jsp"%>