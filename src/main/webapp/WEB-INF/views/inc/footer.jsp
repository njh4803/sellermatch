<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<footer>
    <div class="footer_wrap">
        <div class="f_top">
            <ul>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">이메일주소무단수집거부</a></li>
                <li><a href="#">사이트맵</a></li>
                <li><p>고객센터: 1234-5678</p>
            </ul>
        </div>
        <div class="f_btm">
            <!--<p><em>회사명</em>위셀글로벌 주식회사</p>-->
            <address><em>소재지</em> 인천광역시 연수구 송도미래로30,D동 909호 </address>
            <!--<p><em>대표이사</em>송진일</p>-->
            <!--<p><em>개인정보책임관리자</em>서민승</p>-->
            <p><em>사업자등록번호</em> 181-87-01992</p>
            <p><em>통신판매업신고</em> 2020-연수구-1558</p>
            <p><em>TEL</em> 031-777-7777</p>
            <p><em>E-mail</em> help@sellermatch.co.kr</p>
        </div>
    </div>
</footer>

<script>
    const ROOT_URL = "${pageContext.request.contextPath}";
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
