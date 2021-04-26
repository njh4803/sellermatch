<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../modal/infoModal.jsp"%>
<%@ include file="../modal/termsOfServiceModal.jsp"%>
<style>
.footer_wrap .f_top .f_top0
{
	font-size : 18px !important;
}
.footer_wrap .f_btm
{
	font-size : 13px !important;
}
</style>
<footer>
    <div class="footer_wrap clearfix">
    	<div class="footer-box clearfix">
        	<div class="f_top f_top_1">
        		<div class="f_top0 f_top1">
        			셀러매치 사업자정보
        		</div>
        		<div class="f_btm">
	        		회사명 : 위셀글로벌 주식회사<br>
					서울사무실: 서울시 강남구 언주로 147길 43, Sellermatch(호성빌딩,1층)<br>
					인천사무실: 인천시 연수구 컨벤시아대로 204, 인천 스타트업파크 인스타1 521호<br>
					대표이사 : 송진일   <br>
					개인정보책임관리자 : 정윤용<br>
					사업자등록번호 : 181-87-01992<br>
					통신판매업신고 : 2020-인천연수구-1558<br>
					연락처 : 032-459-2236<br>
					호스팅 서비스 제공 : 스마일서브 호스팅 (https://www.cloudv.kr/)
	            </div>
        	</div>
        	<div class="f_top f_top_2">
        		<div class="f_top0 f_top2">
        			셀러매치
        		</div>
        		<div class="f_btm">
	        		<div><a href="${pageContext.request.contextPath}/">메인</a></div>
	        		<div><a href="${pageContext.request.contextPath}/project/find">거래처 매칭</a></div>
	        		<div><a href="${pageContext.request.contextPath}/seller/find">판매자 리스트</a></div>
	        		<div><a href="${pageContext.request.contextPath}/board?boardType=1">이용안내</a></div>
	            </div>
        	</div>
        	<div class="f_top f_top_3">
        		<div class="f_top0 f_top3">
        			관련 규정
        		</div>
        		<div class="f_btm">
	        		<div><a id="termsOfService" href="javascipt:void(0);">이용약관</a></div>
	        		<div><a id="info" href="javascipt:void(0);">개인정보처리방침</a></div>
	            </div>
        	</div>
        	<div class="f_top f_top_4">
        		<div class="f_top0 f_top4">
        			관련 사이트
        		</div>
        		<div class="f_btm">
	        		<div><a href="javascipt:void(0);">페이스북</a></div>
	        		<div><a href="javascipt:void(0);">유튜브</a></div>
	        		<div><a href="javascipt:void(0);">블로그</a></div>
	        		<div><a href="javascipt:void(0);">쇼핑몰</a></div>
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
