<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>

</style>
<div class="bnr">
    <div class="bnr_wrap">
        <h2>검증된 고매출 판매자,<br>
        다양한 고마진공급자를<br>
        찾고 거래하세요.
        </h2>
        <a href="${pageContext.request.contextPath}/project/find"><i class="fas fa-bolt"></i>판매자 & 공급자<br> 찾기 무료등록</a>
    </div>
    <div class="bnr_wrap2">
    	<div class="box">
    		<div>판매자이신가요</div>
    		<span>고마진, 독점, 위탁배송, OEM, 도매 등 <br>필요한 상품을 빠르게 찾아보세요.</span>
    		<button>GO!</button>
    	</div>
    	<div class="box">
    		<div>공급자이신가요</div>
    		<span>오픈마켓, 종합몰, SNS, 공동구매, 폐쇄몰 등 <br>검증된 판매자를 찾아보세요.</span>
    		<button>GO!</button>
    	</div>
    </div>
</div>
<div class="bnr2">
    <div class="bnr2_wrap">
        <h2>쉬운, 빠른, 편리한, 성곡적인<br>거래를 할 수 있도록 지원합니다.</h2>
        <div class="advantage_list">
            <div class="advantage">
                <h2>조건에 맞는</h2><h3>거래처 찾기</h3>
                <p>판매자 &amp; 공급자를<br>
                지역/상품/채널/수준 등으로<br>
                분류하여 찾을 수 있습니다.
                </p>
            </div>
            <div class="advantage">
            	<h2>지속적으로</h2><h3>상품제안 받기</h3>
                <p>한번 판매자 등록을하면<br>
                지속적으로 공급자 상품을<br>
                제안 받을 수 있습니다.
                </p>
            </div>
            <div class="advantage">
            	<h2>실력이 검증된</h2><h3>판매자 찾기</h3>
                <p>상품을 잘 판매할 수 있는<br>
                검증된 판매자를<br>
                쉽고 빠르게 찾을 수 있습니다.
                </p>
            </div>
        </div>
    </div>
</div>
<div class="bnr2">
    <div class="bnr2_wrap">
        <h2>5분 안에 거래를 시작할 수 있습니다.</h2>
        <div class="advantage_list">
            <div class="advantage advantage2">
                <h2>프로젝트</h2><h2>무료등록</h2>
                <p>판매 &amp; 공급 조건을 담은<br>
			              판매 또는 공급상품에 관한<br>
			              정보(프로젝트)를 등록합니다.<br>
			       100% 무료입니다.
                </p>
            </div>
            <div class="advantage advantage2">
            	<h2>거래내용</h2><h2>검토, 조율</h2>
                <p>지원 판매자 &amp; 공급자와<br>
			              거래를 조율하고 계약합니다.<br>
			              적절한 거래가 될 수 있도록<br>
				      계약, 디자인 등을 지원합니다.
                </p>
            </div>
            <div class="advantage advantage2">
            	<h2>판매  &amp; 공급</h2><h2>시작</h2>
                <p>계약한 내용에 따라<br>
			              판매와 공급 활동을 시작합니다.<br>
			              성공적인 판매가 될 수 있도록<br>
			              교육, 마케팅 등을 지원합니다.
                </p>
            </div>
        </div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
	$('#slider-div').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next'),
		  prevArrow:$('.prev'),
	});
});
</script>    
    </body>
</html>
