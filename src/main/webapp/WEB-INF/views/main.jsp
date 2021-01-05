<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<div class="bnr">
    <div class="bnr_wrap">
        <h2>검증된 판매자와<br>
        다양한 공급자의<br>
        확실한 한 판 거래!
        </h2>
        <p>셀러매치에서 검증된 고매출, 고마진 공급자를<br>
        손쉽게 찾아 사업을 실현시켜 드립니다.
        </p>
        <a href="#"><i class="fas fa-bolt"></i> 매치 시작하기</a>
    </div>
</div>
<div class="search_bnr">
    <div class="search_wrap">
        <form id="search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/project/find">
        <div class="input_group">
            <input type="text" name="keyword" placeholder="매치 할 프로젝트를 입력하세요.">
            <button type="submit" class="btn_search">
                <i class="fas fa-bolt"> 검색</i>   
            </button>    
        </div>    
    </form>
    </div>    
</div>
<div class="bnr2">
    <div class="bnr2_wrap">
        <h2>왜 셀러매치일까요?</h2>
        <p class="bnr2_p">셀러매치에서 검증된 고매출, 고마진 공급자를<br>
            손쉽게 찾아 사업을 실현시켜드립니다.
        </p>
        <div class="advantage_list">
            <div class="advantage advantage1">
                <h3>조건에 맞는 거래처 찾기</h3>
                <p>판매자 &amp; 공급자를<br>
                지역/상품/채널/수준 등으로<br>
                분류하여 찾을 수 있습니다.
                </p>
            </div>
            <div class="advantage advantage2">
                <h3>지속적으로 상품제안 받기</h3>
                <p>한번 판매자 등록을하면<br>
                지속적으로 공급자 상품을<br>
                제안 받을 수 있습니다.
                </p>
            </div>
            <div class="advantage advantage3">
                <h3>실력이 검증된 판매자 찾기</h3>
                <p>상품을 잘 판매할 수 있는<br>
                검증된 판매자를<br>
                쉽고 빠르게 찾을 수 있습니다.
                </p>
            </div>
            <div class="advantage advantage4">
                <h3>성공 거래 지원 서비스 받기</h3>
                <p>성공적인 거래가 될 수 있도록<br>
                계약/디자인/교육/마케팅 등을<br>
                셀러매치가 지원합니다.
                </p>
            </div>
        </div>
    </div>
</div>
<div class="bnr3">
    <div class="bnr3_wrap">
        <div class="supplier">
            <h3>판매자!</h3>
            <p>고매진, 독점, 위탁배송, OEM, 도매 등<br>
            필요한 상품을 빠르게 찾아보세요.
            </p>
            <a href="#"><i class="fas fa-bolt"></i> GO!</a>
        </div>
        <div class="seller">
            <h3>공급자!</h3>
            <p>오픈마켓, 종합물, SNS, 공동구매,<br>
            폐쇄물 등 검증된 판매자를 찾아보세요.
            </p>
            <a href="#"><i class="fas fa-bolt"></i> GO!</a>
        </div>
    </div>    
</div>
<div class="bnr4">
    <div class="bnr4_wrap">
        <h2>거래까지 단 5분!!</h2>
        <p>상품을 선택하셨다면 거래까지 이제 5분안에 뚝딱!!</p>
        <div class="step_list">
            <div class="step1 step"></div>
            <div class="step2 step"></div>
            <div class="step3 step"></div>
            <div class="next">
                <p class="next_1"></p>
                <p class="next_2"></p>
            </div>
        </div>
    </div>
</div>
<div class="match_bnr">
    <div class="match_bnr_wrap">
        <h2>기술기반의<br>
        스마트하고 정확한 매치!
        </h2>
        <div class="match_img match_img1"></div>   
        <div class="match_img match_img2"></div>   
    </div>
</div>
<div class="partner_bnr">
    <div class="partner_wrap">
        <h2>셀러매치의 파트너</h2>
        <div class="partner_list">
            <a href="#">partner1</a>
            <a href="#">partner2</a>
            <a href="#">partner3</a>
            <a href="#">partner4</a>
            <a href="#">partner5</a>
        </div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
    
    $('.operation_guide_list').addClass('skip');
    
    var $operation_guide_list = $('.operation_guide_list')
    
    $('.operation').mouseenter(function(){
        $('.operation_guide_list').stop().slideDown();
    })
    
    $('.operation').mouseleave(function(){
        $('.operation_guide_list').stop().slideUp();
    })
</script>    
    </body>
</html>
