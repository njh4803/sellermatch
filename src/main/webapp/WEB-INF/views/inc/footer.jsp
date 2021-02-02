<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../modal/infoModal.jsp"%>
<%@ include file="../modal/termsOfServiceModal.jsp"%>
<footer>
    <div class="footer_wrap">
    	<div>
        	<div class="f_top f_top">
        		<p id="termsOfService"><a href="javascipt:void(0);">이용약관</a></p>
        	</div>
        	<div class="f_top f_top">
        		ㅣ
        	</div>
        	<div class="f_top f_top">
        		<p id="info"><a href="javascipt:void(0);">개인정보처리방침</a></p>
        	</div>
        	<div class="f_top f_top">
        		ㅣ
        	</div>
        	<div class="f_top f_top">
        		문의메일 : help@sellermatch.co.kr
        	</div>
        </div>
        <div>
        	<hr>
        </div>
        <div class="footer_logo">
        	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/wesell-logo.png">
        </div>
        <div style="display: flex;">
	        <div class="f_btm">
	        	<div class="f_btm2">
	        		<p>(주)위셀글로벌</p>
		            <p><em>소재지 : </em> 인천광역시 연수구 컨벤시아대로 204, 인천스타트업파크 인스타1 521호 </p>
		            <p><em>대표이사 : </em>송진일 <em> 개인정보책임관리자 : </em> 안준수</p>
		            <p><em>사업자등록번호 : </em> 181-87-01992</p>
		            <p><em>통신판매업신고 : </em> 2020-인천연수구-1558</p>
		            <p><em>연락처 : </em> 032-459-2236</p>
		            <p><em>호스팅 서비스 제공 : </em>스마일서브 호스팅 주소</p>
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
