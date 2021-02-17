<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
/* 모바일 */
/* @media screen and (max-width: 767px){

} */
/* 테블릿 세로 */
/* @media screen and (min-width: 768px) and (max-width: 991px) {

} */
/* 테블릿 가로 */
/* @media screen and (min-width: 992px) and (max-width: 1199px) {

} */
.main-0000{
	background-color: #fff;
    background-position-x: center;
    height: 643px;
}
.main-000{
    font-family: NotoSansKRBold;
    font-size: 55px;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.27;
    font-weight: bolder;
    letter-spacing: -4px;
    text-align: left;
    color: #000000;
    height: 643px;
    margin: 0 auto;
    margin-top: 77px !important;
    width: 1280px;
}
.main-001{
    display: inline-block;
    margin-top: 135px;
    margin-bottom: 49px;
	width: 625px;
    height: 194px;
    font-size: 55px;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.18;
    letter-spacing: -0.22px;
    text-align: left;
    color: #ffffff;
}
.main-002{
    display: block;
    margin-top: 49px;
	width: 520px;
	height: 83px;
	font-size: 20px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.5;
	letter-spacing: -0.08px;
	text-align: left;
	color: #ffffff;
}
.main-001 span{
	font-weight: 800;
}
.main-img1{
    width: 422px;
    height: 352px;
    background-repeat: no-repeat;
    display: inline-block;
    position: relative;
    top: 34px;
    left: 79px;
}
.main-0001{
	background-color: #ffffff;
}
.findBtn{
  display: inline-block;
  width: 240px;
  height: 60px;
  margin: 76px 30px 224px 320px;
  padding: 18px 0 19px;
  border-radius: 4px;
  box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
  background-image: linear-gradient(104deg, #ff8000, #ff540f);
  font-size: 20px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
}
.shareBtn{
  display: inline-block;
  width: 240px;
  height: 60px;
  margin: 76px 10.5px 224px 30px;
  padding: 18px 0 19px;
  border-radius: 4px;
  box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
  border: solid 0.5px #fe5413;
  background-color: #ffffff;
  font-size: 20px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.15;
  letter-spacing: normal;
  text-align: center;
  color: #ff540f;
}
</style>
<div class="bnr">
	<div class="main-0000" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main0000.png');">
	 	<div class="main-000">
	 		<div style="display: inline-block;">
	 			<div class="main-001">
		   	        셀러매치는<br>
		        <span>상품공급자</span>와 <span>판매대행자</span><br>
		        <span>직거래 사이트</span>입니다
		    	</div>
		    	<div class="main-002">
			   	        고마진, 독점, 위탁배송, OEM, 도매, 수입상품 등 공급자 &
				        오픈마켓, 종합몰, SNS, 공동구매, 폐쇄몰, 수출 등<br>
				        판매자를 찾고 직거래하세요<br>
	    		</div>
	 		</div>
	 		<div style="display: inline-block;">
	 			<div class="main-img1" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main_img1.png');">
	 			</div>
			</div>
	    </div>
	</div>
    <div class="bnr">
    	<div class="main-0001">
    		<div>
    			<button class="findBtn">거래처 찾기 무료등록</button>
    			<button class="shareBtn">친구들과 공유하기</button>
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
