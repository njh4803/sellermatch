<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
.affiliate.margin-0{
	margin: 0;
}
.main-000{
	display: inline-block;
    font-family: NotoSansKRBold;
    font-size: 55px;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.27;
    font-weight: bolder;
    letter-spacing: -4px;
    text-align: left;
    color: #1f1f1f;
    padding: 180px 200px;
}
.main-001{
  font-family: NotoSansKRMedium;
  font-size: 26px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.54;
  letter-spacing: normal;
  text-align: left;
  color: #1f1f1f;
  margin-top: 15px;
}
.pass{
	margin-top: 178px;
	margin-bottom: 25.8px;
}
.textbox1{
  font-family: NotoSansKRBold;
  font-size: 60px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #1f1f1f;
}
.textbox2{
    font-family: NotoSansKRMedium;
    font-size: 25px;
    font-weight: 530;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: normal;
    text-align: center;
    color: #1f1f1f;
    margin: 40px 30px 70px 14px;
    line-height: 1.6;
}
.textbox3{
  display:inline-block;
  width: 400px;
  height: 600px;
  padding: 60px 47px 62px 48px;
  border-radius: 30px;
  background-color: #ffffff;
}
.textbox3 img{
  margin: 0 88px 50px 87px;
  object-fit: contain;
  border-radius: 100px;
}
.textbox3 img.main004{
  margin: 7px 3px 0 2px;
  object-fit: contain;
  width: 300px;
  height: 300px;
}
.textbox4{
	margin: 0 40px;
}
.textbox5{
  font-family: NotoSansKR;
  font-size: 34px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.38;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.textbox6{
  margin: 30px 0 0;
  font-family: NotoSansKRMedium;
  font-size: 17px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.55;
  letter-spacing: normal;
  text-align: center;
  color: #535353;
}
.textbox8{
  height: 58px;
  margin: 30px 0;
  font-family: NotoSansKRBold;
  font-size: 30px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 2.1;
  letter-spacing: normal;
  text-align: left;
  color: #1f1f1f;
}
.mainBox{
}
.mainBox2{
	width: 1280px;
	margin: 0 auto;
}
.mainBox3 {
    width: 1280px;
    margin: 0 auto;
    padding-top: 87.7px;
    padding-bottom: 85.3px;
    height: 450px;
}
.mainBox4 {
    width: 1280px;
    margin: 0 auto;
    padding-top: 30px;
    padding-bottom: 115.7px;
    margin-bottom: 113.3px;
    background-color: #f0f0f0;
    height: 283px;
}
.hrBox{
  display: inline-block;
  width: 179px;
  height: 178px;
  margin:  0 70.5px 0 76.5px;
  vertical-align: top;
}
.hrBox hr{
  width: 1px;
  height: 178px;
  background-color: #ffffff;
  transform: rotate(45deg);
}
.affiliate{
	margin-right: 70px;
}
</style>
<div class="bnr">
    <div class="bnr_wrap4" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main000.png');">
    	<div class="main-000">
    	        검증된 고매출 판매자,<br>
			        다양한 고마진 공급자를<br>
			        찾고 거래하세요
			<div class="main-001">
	    	</div>
    	</div>

        <%-- <a href="${pageContext.request.contextPath}/project/find"><i class="fas fa-bolt"></i>판매자 & 공급자<br> 찾기 무료등록</a> --%>
    </div>
    <div class="partner_bnr" style="padding: 0;">
    	<div class="partner_bnr2">
			<div class="search_bnr">
			    <div class="search_wrap">
			        <form id="search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/project/find">
				        <div class="input_group">
				            <input type="text" name="keyword" placeholder="매치 할 프로젝트를 입력하세요.">
				            <button type="submit" class="btn_search">
				               <img class="searchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png"> 검색   
				            </button>    
				        </div>
				        <input type="hidden" value="defaultSort" id="sort" name="sort">
				    </form>
			    </div>    
			</div>
		</div>
	</div>
	<div class="bnr_wrap5 text-center">
		<div class="pass">
			<img alt="" src="${pageContext.request.contextPath}/local_assets/img/pass_black.png">
		</div>
		<div class="textbox1">
			왜 셀러매치일까요?
		</div>
		<div class="textbox2">
			셀러매치는 쉽고, 빠르고 편리하게 <br> 성공적인 거래를 할 수 있도록 지원합니다
		</div>
		<div class="mainBox">
			<div class="textbox3">
				<img alt="" src="${pageContext.request.contextPath}/local_assets/img/main001.png">
				<div class="textbox5">
					잽싸게!<br>
					조건에 맞는<br>
					거래처 찾기<br>
				</div>
				<div class="textbox6">
					판매자 &amp; 공급자를<br>
					지역/상품/채널/수준 등으로<br>
					분류하여 찾을 수 있습니다<br>
				</div>
			</div>
			<div class="textbox3 textbox4">
				<img alt="" src="${pageContext.request.contextPath}/local_assets/img/main002.png">
				<div class="textbox5">
					알아서!<br>
					필요한<br>
					상품을 제안<br>
				</div>
				<div class="textbox6">
					한번 판매자 등록을하면<br>
					지속적으로 공급자 상품을<br>
					제안 받을 수 있습니다<br>
				</div>
			</div>
			<div class="textbox3">
				<img alt="" src="${pageContext.request.contextPath}/local_assets/img/main003.png">
				<div class="textbox5">
					검증된!<br>
					믿을 수 있는<br>
					판매자<br>
				</div>
				<div class="textbox6">
					상품을 잘 판매할 수 있는<br>
					검증된 판매자를 쉽고<br>
					빠르게 찾을 수 있습니다<br>
				</div>
			</div>
		</div>
	</div>
    <div class="bnr_wrap2">
    	<div class="mainBox3">
    	    <div class="box">
	    		<div>판매자</div>
	    		<div class="textBox7">고마진, 독점, 위탁배송, OEM, 도매 등 <br>필요한 상품을 빠르게 찾아보세요</div>
	    		<button id="sellerGoBtn"><img src="${pageContext.request.contextPath}/local_assets/img/pass13.png">GO!</button>
	    	</div>
	    	<div class="hrBox">
	    		<hr>
	    	</div>
	    	<div class="box">
	    		<div>공급자</div>
	    		<div class="textBox7">오픈마켓, 종합몰, SNS, 공동구매, 폐쇄몰 등 <br>검증된 판매자를 찾아보세요</div>
	    		<button id="PpGoBtn"><img src="${pageContext.request.contextPath}/local_assets/img/pass13.png">GO!</button>
	    	</div>	
    	</div>
    </div>
	<div class="bnr_wrap5 text-center">
		<div class="mainBox2">
			<div class="textbox1" style="text-align: left;">
				거래까지 단 5분!
			</div>
			<div class="textbox2" style="text-align: left;">
				상품을 선택하셨다면 거래까지 이제 5분안에뚝딱!!
			</div>
		</div>
		<div class="mainBox">
			<div class="textbox3">
				<div class="textbox5">
					무료등록
				</div>
				<div class="textbox6">
					판매 &amp; 공급 조건을 담은<br>
				              판매 또는 공급상품에 관한<br>
				              정보(프로젝트)를 등록합니다<br>
				       100% 무료입니다
				</div>
				<img alt="" class="main004" src="${pageContext.request.contextPath}/local_assets/img/main004.png">
			</div>
			<div class="textbox3 textbox4">
				<div class="textbox5">
					검토
				</div>
				<div class="textbox6">
					지원 판매자 &amp; 공급자와<br>
				              거래를 조율하고 계약합니다<br>
				              적절한 거래가 될 수 있도록<br>
					      계약, 디자인 등을 지원합니다
				</div>
				<img alt="" class="main004" src="${pageContext.request.contextPath}/local_assets/img/main005.png">
			</div>
			<div class="textbox3">
				<div class="textbox5">
					판매/공급 시작
				</div>
				<div class="textbox6">
					계약한 내용에 따라<br>
				              판매와 공급 활동을 시작합니다<br>
				              성공적인 판매가 될 수 있도록<br>
				              교육, 마케팅 등을 지원합니다
				</div>
				<img alt="" class="main004" src="${pageContext.request.contextPath}/local_assets/img/main006.png">
			</div>
		</div>
	</div>
	<div class="bnr_wrap6">
		<div class="mainBox4">
			<div class="textbox8">셀러매치와 함께합니다</div>
			<div>
				<img alt="" class="affiliate" src="${pageContext.request.contextPath}/local_assets/img/gm.png">
				<img alt="" class="affiliate" src="${pageContext.request.contextPath}/local_assets/img/11st.png">
				<img alt="" class="affiliate" src="${pageContext.request.contextPath}/local_assets/img/cou.png">
				<img alt="" class="affiliate" src="${pageContext.request.contextPath}/local_assets/img/gs.png">
				<img alt="" class="affiliate margin-0" src="${pageContext.request.contextPath}/local_assets/img/cj.png">
			</div>
		</div>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
	$('#sellerGoBtn').on('click', function(){
		window.location = ROOT_URL + '/project/find'
	});
	
	$('#PpGoBtn').on('click', function(){
		window.location = ROOT_URL + '/seller/find'
	});
	
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
