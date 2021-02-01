<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../modal/infoModal.jsp"%>
<%@ include file="../modal/termsOfServiceModal.jsp"%>
<footer>
    <div class="footer_wrap">
    	<div>
        	<div class="f_top f_top1">
        		(주)위셀글로벌 사업자정보
        	</div>
        	<div class="f_top f_top2">
        		샐러매치
        	</div>
        	<div class="f_top f_top2">
        		관련규정
        	</div>
        	<div class="f_top f_top2">
        		관련사이트
        	</div>
        </div>
        <div style="display: flex;">
	        <div class="f_btm">
	        	<div class="f_btm2">
		            <address style="margin: 0;"><em>소재지 : </em> 인천광역시 연수구 컨벤시아대로 204, 인천스타트업파크 인스타1 521호 </address>
		            <p><em>대표이사 : </em>송진일 <em> 개인정보책임관리자 : </em> 안준수</p>
		            <p><em>사업자등록번호 : </em> 181-87-01992</p>
		            <p><em>통신판매업신고 : </em> 2020-인천연수구-1558</p>
		            <p><em>연락처 : </em> 032-459-2236</p>
		            <p><em>이메일 : </em> help@sellermatch.co.kr</p>
		            <p><em>호스팅 서비스 제공 : </em>스마일서브 호스팅 주소</p>
	            </div>
	        </div>
	        <div class="f_btm3">
	        	<div class="f_btm2">
		            <p><a href="${pageContext.request.contextPath}/temp">첫 화면</a></p>
		            <p><a href="${pageContext.request.contextPath}/project/find">프로젝트 찾기</a></p>
               		<p><a href="${pageContext.request.contextPath}/seller/find">판매차 찾기</a></p>
	             	<p><a href="${pageContext.request.contextPath}/howUse">이용방법</a></p>
					<p><a href="${pageContext.request.contextPath}/usageFee">이용요금</a></p>
                    <p><a href="${pageContext.request.contextPath}/board?boardType=1">공지사항</a></p>
                    <p><a href="${pageContext.request.contextPath}/board?boardType=2">자주하는 질문</a></p>
                    <p><a href="${pageContext.request.contextPath}/board?boardType=4">1:1 문의하기</a></p>
	            </div>
	        </div>
	        <div class="f_btm3">
	        	<div class="f_btm2">
		            <p id="termsOfService"><a href="javascipt:void(0);">이용약관</a></p>
		            <p id="info"><a href="javascipt:void(0);">개인정보처리방침</a></p>
	            </div>
	        </div>
	        <div class="f_btm3">
	        	<div class="f_btm2">
		            <p>페이스북</p>
		            <p>유튜브</p>
		            <p>블로그</p>
		            <p>쇼핑몰</p>
	            </div>
	        </div>
        </div>
    </div> 
</footer>

<script>
    const ROOT_URL = "${pageContext.request.contextPath}";
$(document).ready(function() {
	$('#info').on('click', function(){
		$('#infoModal').modal();
	});
	
	$('#termsOfService').on('click', function(){
		$('#termsOfServiceModal').modal();
	});
});
</script>


<!-- AjaxHelper -->
<script src="${pageContext.request.contextPath}/plugins/ajax/ajax_helper.js"></script>

<!-- ajaxform -->
<script src="${pageContext.request.contextPath}/plugins/ajax-form/jquery.form.min.js"></script>

<!-- handlebars js -->
<script src="${pageContext.request.contextPath}/plugins/handlebars/handlebars-v4.0.11.js"></script>

<!-- validate js -->
<script src="${pageContext.request.contextPath}/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/validate/additional-methods.min.js"></script>

<!-- sweetalert js -->
<script src="${pageContext.request.contextPath}/plugins/sweetalert/sweetalert2.all.min.js"></script>

</body>

</html>
