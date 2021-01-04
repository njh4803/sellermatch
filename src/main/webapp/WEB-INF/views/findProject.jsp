<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
.font-30{
	font-size: 30px;
}
.partner_bnr {
    width: 100%;
    padding-top: 180px;
    padding-bottom: 100px;
}
.partner_bnr2 {
    width: 100%;
    padding-bottom: 100px;
}
.search_chk{
	width: 400px;
    height: 100px;
    background-color: #d6d6d6;
    display: inline-block;
    border-radius: 20px;
    text-align: center;
	padding: 40px 0;
    margin: 0 40px;
}
.chk_list_container{
	width: 1380px;
	height: 150px;
	margin: 0 40px;
}
.chk_listBox{
	display: inline-block;
	overflow-x:hidden;
	overflow-y:auto;
	width:12.27%;
	height:150px;
	border: 1px solid #e3e3e3;
}

/*post slider*/
.post-slider{
  width:90%;
  margin:0px auto;
  position:relative;
}
.post-slider .silder-title{
  text-align:center;
  margin:30px auto;
}
.post-slider .next{
  position:absolute;
  top:50%;
  right:30px;
  font-size:2em;
  color:gray;
  cursor: pointer;
}
.post-slider .prev{
  position:absolute;
  top:50%;
  left:30px;
  font-size:2em;
  color:gray;
    cursor: pointer;
}
.post-slider .post-wrapper{

  width:84%;
  height:350px;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post{
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info{
  font-size:15px;
  height:30%;
  padding-left:10px;
}
.post-slider .post-wrapper .post .slider-image{
  width:100%;
  height:175px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
        <span class="font-30">프로젝트 찾기 페이지</span>
    </div>
</div>
<div class="partner_bnr2">
	<div class="search_bnr">
	    <div class="search_wrap">
	        <form id="search_frm" name="searchform" method="get" action="">
		        <div class="input_group">
		            <input type="text" name="" user="" placeholder="매치 할 프로젝트를 입력하세요.">
		            <button type="button" class="btn_search">
		                <i class="fas fa-bolt"> 검색</i>   
		            </button>    
		        </div>    
		    </form>
	    </div>    
	</div>
</div>
<div class="partner_bnr2">
    <div class="partner_wrap">
        <div class="partner_list vertical-middle">
            <div class="search_chk"><input type="checkbox" value="" >전체검색</div>
            <div class="search_chk"><input type="checkbox" value="" >판매자검색</div>
            <div class="search_chk"><input type="checkbox" value="" >공급자검색</div>
        </div>
    </div>
</div>
<div class="partner_bnr2">
    <div class="partner_wrap">
        <div class="partner_list">
            <div class="chk_list_container">
            	<div class="chk_listBox"><span>지역구분</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">서울</li>
	            		<li><input type="checkbox">부산</li>
	            		<li><input type="checkbox">대구</li>
	            		<li><input type="checkbox">인천</li>
	            		<li><input type="checkbox">광주</li>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">서울</li>
	            		<li><input type="checkbox">부산</li>
	            		<li><input type="checkbox">대구</li>
	            		<li><input type="checkbox">인천</li>
	            		<li><input type="checkbox">광주</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>상품분류</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">가구/인테리어</li>
	            		<li><input type="checkbox">도서</li>
	            		<li><input type="checkbox">디지털/가전</li>
	            		<li><input type="checkbox">생활/건강</li>
	            		<li><input type="checkbox">스포츠/레저</li>
	            		<li><input type="checkbox">도서</li>
	            		<li><input type="checkbox">도서</li>
	            		<li><input type="checkbox">도서</li>
	            		<li><input type="checkbox">도서</li>
	            		<li><input type="checkbox">도서</li>
	            		<li><input type="checkbox">도서</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>상품단가</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">1만원 미만</li>
	            		<li><input type="checkbox">2만원 미만</li>
	            		<li><input type="checkbox">5만원 미만</li>
	            		<li><input type="checkbox">10만원 미만</li>
	            		<li><input type="checkbox">10만원 이상</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>판매마진</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">10%이하</li>
	            		<li><input type="checkbox">11%~20%</li>
	            		<li><input type="checkbox">21%~30%</li>
	            		<li><input type="checkbox">30%초과</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>공급방법</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">OEM</li>
	            		<li><input type="checkbox">위탁판매</li>
	            		<li><input type="checkbox">도매공급</li>
	            		<li><input type="checkbox">운영대행</li>
	            		<li><input type="checkbox">경매공급</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>공급자검증</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">신원인증</li>
	            		<li><input type="checkbox">사업자인증</li>
	            		<li><input type="checkbox">채널검증</li>
	            		<li><input type="checkbox">매출검증</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>판매자검증</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">신원인증</li>
	            		<li><input type="checkbox">사업자인증</li>
	            		<li><input type="checkbox">채널검증</li>
	            		<li><input type="checkbox">매출검증</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>판매채널</span>
	            	<ul>
	            		<li><input type="checkbox">전체</li>
	            		<li><input type="checkbox">오픈마켓</li>
	            		<li><input type="checkbox">종합몰</li>
	            		<li><input type="checkbox">폐쇄몰</li>
	            		<li><input type="checkbox">커뮤니티</li>
	            		<li><input type="checkbox">SNS</li>
	            	</ul>
            	</div>
            </div>
        </div>
    </div>
</div>
    <div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <i class="fas fa-chevron-left prev"></i>
        <i class="fas fa-chevron-right next"></i>
        <div class="post-wrapper">
          <div class="post">
            <img src="img/paris.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">Lorem ipsu eiusmod tempor incididunt ut </a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/architecture.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> Commodo odio aenean sed  </a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/paris.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Quis hendrerit dolor magna eget est lorem ipsum dolor sit. </a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/gyungju.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Elit at imperdiet dui accumsan sit.</a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/gyungju.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Elit at imperdiet dui accumsan sit.</a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/gyungju.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Elit at imperdiet dui accumsan sit.</a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
          <div class="post">
            <img src="img/gyungju.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">Elit at imperdiet dui accumsan sit.</a></h4>
              <i class="far fa-user" style="height:10%;">Awa Melvine</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
<%@ include file="inc/footer.jsp"%>
<script>
$(function(){
	$('.post-wrapper').slick({
		  slidesToShow: 5,
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
