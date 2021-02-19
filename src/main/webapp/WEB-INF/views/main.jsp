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
    margin-top: 110px;
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
    margin-top: 25px;
    margin-bottom: 25px;
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
    top: 12px;
    left: 122px;
}
.findBtn{
  display: inline-block;
  width: 240px;
  height: 60px;
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
.main-003{
    display: inline-block;
    font-size: 50px;
    font-stretch: normal;
    font-weight: 800;
    font-style: normal;
    line-height: 1.33;
    letter-spacing: -0.3px;
    text-align: center;
    width: 100%;
    color: #343434;
    float: left;
    margin-top: 120px;
    margin-bottom: 122px;
}
.main-004{
	display: block;
    margin-bottom: 102px;
    margin-top: 174px;
}
.main-005{
  margin-top: 10px;
  font-size: 20px;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.2px;
  text-align: center;
  color: #343434;
}
.main-005 span{
  font-weight: 800;
}
.main-0003{
    display: block;
    width: 100%;
    height: 1280px;
    margin-bottom: 200px;
    background-color: #fff6f2;
}
.main-0004{
    display: block;
    width: 1280px;
    margin: 0 auto;
    text-align: center;
}
.main-img2{
	width: 450px;
	height: 211px;
	object-fit: contain;
	margin: auto;
}
.main-0001{
  width: 1280px;
  margin: 0 auto;
}
.main-003 .orange-text{
  color: #ff540f;
}
.mainBox .boxSpan{
  margin: 0 5px 226px 0;
  font-size: 30px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.3px;
  text-align: left;
  color: #dddddd;
  vertical-align: top;
}
.mainBox1{
	display: inline-block;
    margin-bottom: 140px;
    float: left;
    margin-left: 104px;
}
.mainBox2{
	display: inline-block;
	margin: 79px 0 61px 78px;
}
.mainBox3{
	display: inline-block;
    float: left;
    margin-left: 104px;
}
.mainBox4{
	display: inline-block;
	margin: 79px 0 140px 78px;
}
.mainBox:hover .boxSpan{
	  font-size: 40px;
	  font-weight: 800;
	  font-stretch: normal;
	  font-style: normal;
	  letter-spacing: -0.4px;
	  text-align: left;
	  color: #ff540f;
	  vertical-align: top;
}
.mainBox:hover .boxText{
	  box-shadow: 5px 5px 20px 0 rgba(0, 0, 0, 0.16);
	  border: solid 1px #ffb597;
}
.hvr-grow-shadow {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-property: box-shadow, transform;
  transition-property: box-shadow, transform;
}
.hvr-grow-shadow:hover, .hvr-grow-shadow:focus, .hvr-grow-shadow:active {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
.boxText{
  display: inline-block;
  width: 450px;
  height: 200px;
  padding: 44px 0 43px;
  border-radius: 20px;
  box-shadow: 5px 5px 20px 0 rgba(0, 0, 0, 0.16);
  border: solid 1px #cccccc;
  background-color: #ffffff;
  text-align: center;
}
.boxText2 {
	display: inline-block;
    font-size: 15px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: -0.15px;
    color: #707070;
    text-align: left;
    width: fit-content;
}

.boxText2 span{
  margin-bottom: 15px;
  font-family: NanumGothic;
  font-size: 24px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.24px;
  text-align: left;
  color: #343434;
}
.textBox0{
	width: 100%;
    margin-bottom: 100px;
}
.textBox1{
  width: 1280px;
  height: 118px;
  font-size: 50px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.2;
  letter-spacing: -0.5px;
  text-align: center;
  color: #343434;
  text-align: center;
}
.tableBox{
    width: 100%;
    height: 545px;
    margin: 0 0 200px 0;
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 20px;
    box-shadow: 10px 10px 30px 0 rgb(0 0 0 / 16%);
    border: solid 1px #cccccc;
    background-color: #ffffff;
    overflow-x:hidden;
	overflow-y:auto;
}
.tableBox-title{
    width: 100%;
    height: 100px;
    margin: 37px 0 0 0;
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
    box-shadow: 10px 10px 30px 0 rgb(0 0 0 / 16%);
    border: solid 1px #cccccc;
    background-color: #ffffff;
    border-bottom: none;
}
.table-row{
  width: 100%;
  border-bottom: solid 1px #cccccc;
  height: 100px;
}
.table-title-row{
  width: 100%;
  padding: 32px 0 35px;
}
.sellermatch{
  color: #ff540f;
  font-weight: 800;
}
.table-col1{
  display:inline-block;
  width: 38%;
  padding: 19px 0 18px;
  font-size: 20px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.08px;
  text-align: center;
  color: #000000;
}
.table-col1 span{
  font-size: 25px;
  letter-spacing: -0.1px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
}
.table-col2{
  display:inline-block;
  width: 23%;
  padding: 33px 0 32px;
  vertical-align: top;
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.1px;
  text-align: center;
  color: #000000;
}
.table-col3{
  display:inline-block;
  width: 38%;
  padding: 19px 0 18px;
  font-size: 20px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.08px;
  text-align: center;
  color: #000000;
}
.table-col3 span{
  font-size: 25px;
  letter-spacing: -0.1px;
}
.table-col4{
  display:inline-block;
  width: 38%;
  padding: 36px 0 35px;
  vertical-align: top;
  font-size: 20px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.08px;
  text-align: center;
  color: #000000;
}
.title-col1{
  display:inline-block;
  width: 38%;
  height: 29px;
  font-size: 25px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.1px;
  text-align: center;
}
.title-col2{
  display:inline-block;
  width: 23%;
  height: 29px;
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.1px;
  text-align: center;
  color: #000000;
}
.title-col3{
  display:inline-block;
  width: 38%;
  height: 29px;
  font-size: 25px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.1px;
  text-align: center;
  color: #000000;
}
.X{
  font-size: 25px;
  font-weight: bold;
  letter-spacing: -0.1px;
  color: #ff0000;
}
.O{
  font-size: 25px;
  font-weight: bold;
  letter-spacing: -0.1px;
  color: #0800ff;
}
.upImg{
    position: relative;
    top: 470%;
    left: 49%;
}
.downImg{
    position: relative;
    top: 510%;
    left: 46.3%;
}
.textBox3{
  width: 100%;
  font-size: 50px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.5px;
  text-align: left;
  color: #343434;
  line-height: 1.2;
  margin-bottom: 110px;
  margin-top: 156px;
}
.spBox{
  display: inline-block;
  width: 500px;
  height: 693px;
  margin-right: 60px;
  border-radius: 20px;
  box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
  border: solid 1px #cccccc;
  background-color: #ffffff;
}
.memBox{
  display: inline-block;
  width: 500px;
  height: 693px;
  border-radius: 20px;
  box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
  border: solid 1px #cccccc;
  background-color: #ffffff;
}
.memBox:hover .main_img4{
	background-image: url(/wesellglobal/local_assets/img/도형1.png) !important;
}
.memBox:hover .textBox4 span{
  font-size: 25px !important;
  font-weight: 800 !important;
  color: #ff540f !important;
}

.textBox4{
  height: 508px;
  font-size: 20px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #1f1f1f;
  line-height: 1.8;
  
}
.memBox .textBox4 span{
  font-size: 25px;
  font-weight: 800;
  color: #707070;
}
.spBox .textBox4 span{
  font-size: 25px;
  font-weight: 800;
  color: #ff540f;
}
.main-006{
    display: inline-flex;
    margin-bottom: 200px;
}
.main_img5{
    position: relative;
    top: -74px;
    left: 81px;
    width: 310px;
    height: 113px;
    padding: 59px 77px 46px 113px;
    object-fit: contain;
    font-size: 20px;
    font-weight: 800;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.15;
    letter-spacing: normal;
    text-align: left;
    color: #ffffff;
}
.main_img4{
    position: relative;
    top: -74px;
    left: 81px;
    width: 310px;
    height: 113px;
    padding: 59px 77px 46px 113px;
    object-fit: contain;
    font-size: 20px;
    font-weight: 800;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.15;
    letter-spacing: normal;
    text-align: left;
    color: #ffffff;
}
.main-0005{
  width: 100%;
  height: 1080px;
  text-align: center;
  background-color: #fff6f2;
}
.img3{
	margin-top: 326px;
	margin-bottom: 30px;
}
.textBox5{
  height: 123px;
  margin: 30px 0 50px;
  font-family: NanumGothic;
  font-size: 50px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.3;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
  margin-bottom: 50px;
}
.textBox5 span{
  font-weight: 800;
}
.nowBtn{
  width: 240px;
  height: 60px;
  padding: 18px 0 19px;
  border-radius: 4px;
  box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
  background-image: linear-gradient(104deg, #ff8000, #ff540f);
  font-size: 20px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.15;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
}
</style>
<div class="bnr">
	<div class="main-0000" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main0000.png');">
	 	<div class="main-000">
	 		<div style="display: inline-block;">
	 			<div class="main-001">
		   	        셀러매치는<br>
		        <span>상품공급자</span>와 <span>판매대행자</span><br>
		        <span>직거래 사이트</span>입니다.
		    	</div>
		    	<div class="main-002">
			   	        고마진, 독점, 위탁배송, OEM, 도매, 수입상품 등 공급자 &
				        오픈마켓, 종합몰, SNS, 공동구매, 폐쇄몰, 수출 등<br>
				        판매자를 찾고 직거래하세요.<br>
	    		</div>
	    		<button class="findBtn">거래처 찾기 무료등록</button>
    			<button class="shareBtn">친구들과 공유하기</button>
	 		</div>
	 		<div style="display: inline-block;">
	 			<div class="main-img1" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main_img1.png');">
	 			</div>
			</div>
	    </div>
	</div>
    <div class="bnr">
    	<div class="main-0002 clearfix">
    		<div class="main-003">
    			거래처 찾기를 1회만 등록하세요.<br>
				쉽게 빠르게 편리하게 직거래하세요.<br>
    		</div>
    	</div>
    	<div class="main-0003 clearfix">
    	    <div class="main-0001 clearfix">
	   			<div class="main-004">
	    			<div class="main-img2" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main_img2.png');"></div>
	    		</div>
	   			<div class="mainBox mainBox1 hvr-grow-shadow">
	   				<span class="boxSpan">01</span>
	   				<div class="boxText">
	   					<div class="boxText2">
		    				<span>팔기 괜찮은 물건 찾기 힘드시죠?</span><br>
							<br>
							찾고있는 상품을 거래처 찾기에 올려주세요.<br>
							저희가 찾아서 직거래하게 해 드릴게요.<br>	   					
	   					</div>
	   				</div>
	   			</div>
	   			<div class="mainBox mainBox2 hvr-grow-shadow">
	   				<span class="boxSpan">02</span>
	   				<div class="boxText">
	   					<div class="boxText2">
		    				<span>공급 제안이 꾸준히 오면 좋겠죠?</span><br>
							<br>
							약 5분, 판매자 프로필 1회만 등록하세요!<br>
							매력적인 공급 제안서가 계속 올거에요.<br>
						</div>
	   				</div>
	   			</div>
	   			<div class="mainBox mainBox3 hvr-grow-shadow">
	   				<span class="boxSpan">03</span>
	   				<div class="boxText">
	   					<div class="boxText2">
		    				<span>검증된 판매자 찾기 어려우시죠?</span><br>
							<br>
							전국의 잘 파는, 분야별 판매자를 모아놨어요.<br>
							판매자를 검색하고 직거래 할 수 있어요.<br>
						</div>
	   				</div>
	   			</div>
	   			<div class="mainBox mainBox4 hvr-grow-shadow">
	   				<span class="boxSpan">04</span>
	   				<div class="boxText">
	   					<div class="boxText2">
	    					<span>공급제안서 보내기 귀찮으시죠?</span><br>
							<br>	
							공급상품 정보를 1회만 등록하세요.<br>
							매번 반복해서 제안서를 보내지 않아도 됩니다.<br>
						</div>
	   				</div>
	   			</div>    	
    		</div>
   		</div>
   		<div class="main-0004">
   			<div class="textBox0">
   				<div class="textBox1">
   					3~10% 더 저렴하게 공급받아<br>
					더 많은 이익을 남길 수 있어요.
   				</div>
   			</div>
   			<div class="tableBox-title">
   			   	<div class="table-title-row">
   					<div class="title-col1"><span class="sellermatch">셀러매치</span></div>
   					<div class="title-col2">서비스 특징</div>
   					<div class="title-col3">도매사이트</div>
   				</div>
   			  	<img class="upImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/up.png">
   				<img class="downImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/down.png">
   			</div>
   			<div class="tableBox">
   				<div class="table-row">
   					<div class="table-col1">
   							<span>약 5분</span><br>
   							약 5분가입 → 등록 → 거래
   						</div>
   					<div class="table-col2">첫 이용까지 소요시간</div>
   					<div class="table-col3">
   						<span>약 1일 내외</span><br>
   						 가입 → 승인 → 충전(등록) → 거래
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="X">X</span><br>
							승인없이 바로 이용 (개인 이용가능)
   						</div>
   					<div class="table-col2">가입 승인 유무</div>
   					<div class="table-col3">
   						<span class="O">O</span><br>
   						 사업자 승인 후 이용가능
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="X">X</span><br>
							있어도 되고, 없어도 이용가능
   						</div>
   					<div class="table-col2">상세페이지</div>
   					<div class="table-col3">
   						<span class="O">O</span><br>
   						 상세페이지 있어야 등록가능
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="X">X</span><br>
							직거래로 비용 충전 없음
   						</div>
   					<div class="table-col2">구매비용 충전</div>
   					<div class="table-col3">
   						<span class="O">O</span><br>
   						 도매상품 구매비용 사전 충전 필요
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="X">X</span><br>
							직거래로 수수료 없음
   						</div>
   					<div class="table-col2">중개 수수료</div>
   					<div class="table-col3">
   						<span class="O">O</span><br>
   						 공급가의 3~10%, 도매 상품가격에 포함
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="O">O</span><br>
							공급자 - 판매자 (직거래)
   						</div>
   					<div class="table-col2">직거래 여부</div>
   					<div class="table-col3">
   						<span class="O">O</span><br>
   						공급자 - 도매사이트 - 판매자 (3자거래)
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="O">O</span><br>
							독점/비독점, 온/오프라인 등 조건별 거래처 찾기
   						</div>
   					<div class="table-col2">조건별 거래처 찾기</div>
   					<div class="table-col4">
   						<span class="X">X</span><br>
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="O">O</span><br>
							고매출/고마진, 개인/법인, 판매자 채널 등 검증
   						</div>
   					<div class="table-col2">검증된 거래처 찾기</div>
   					<div class="table-col4">
   						<span class="X">X</span><br>
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="O">O</span><br>
							조건에 맞는 맞춤식 거래처 알림, 메일링 서비스
   						</div>
   					<div class="table-col2">거래처 추천 기능</div>
   					<div class="table-col4">
   						<span class="X">X</span><br>
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="O">O</span><br>
							판매채널, 매출, 상품, 지역, 거래처 평가내용 등 열람
   						</div>
   					<div class="table-col2">판매자 정보 열람</div>
   					<div class="table-col4">
   						<span class="X">X</span><br>
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   							<span class="O">O</span><br>
							해외 공급상품, 해외 바이어 등 정보 제공
   						</div>
   					<div class="table-col2">해외 거래처 찾기</div>
   					<div class="table-col4">
   						<span class="X">X</span><br>
   					</div>
   				</div>
   			</div>
   		</div>
   		<div class="main-0005 clearfix">
   			<div class="main-0004">
	   			<div class="textBox3">
	  				약 5분 정도면<br>
	  				가입하고 첫 이용이 가능해요.
	  			</div>
	   			<div class="main-006">
	   				<div class="memBox" style="margin-right: 60px;">
	   					<div class="main_img4" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/도형2.png');">판매자 회원</div>
	   					<div class="textBox4">
		   					<span>회원가입</span><br>
							판매자 선택 후, 회원가입<br>
							<br>
							<br>
							<span>거래처 찾기 등록</span><br>
							공급 상품 정보를 담은 거래처 찾기 등록하기<br>
							<br>
							<br>
							<span>거래하기</span><br>
							① 등록한 거래처 찾기에서 지원 판매자 확인<br>
							② 거래처 찾기에서 판매자가 등록한 공급 상품<br>
							거래처 찾기에 공급자로 지원하고 거래<br>
							③ 판매자 찾기에서 판매자 지원요청<br>
		   					</div>
	   				</div>
	   				<div class="memBox" style="margin-left: 60px;">
	   					<div class="main_img4" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/도형2.png');">공급자 회원</div>
	   					<div class="textBox4">
		   					<span>회원가입</span><br>
							판매자 선택 후, 회원가입<br>
							<br>
							<br>
							<span>거래처 찾기 등록</span><br>
							공급 상품 정보를 담은 거래처 찾기 등록하기<br>
							<br>
							<br>
							<span>거래하기</span><br>
							① 등록한 거래처 찾기에서 지원 판매자 확인<br>
							② 거래처 찾기에서 판매자가 등록한 공급 상품<br>
							거래처 찾기에 공급자로 지원하고 거래<br>
							③ 판매자 찾기에서 판매자 지원요청<br>
		   				</div>   					
	   				</div>
	   			</div>   			
   			</div>
   		</div>
   		<div class="main-0005">
   			<img class="img3" alt="" src="${pageContext.request.contextPath}/local_assets/img/main_img3.png">
   			<div class="textBox5">
   				<span>직접 써보시는 것이 가장 빠릅니다!</span><br>
				무료체험에는 어떠한 비용도 들지 않습니다
   			</div>
   			<button class="nowBtn">바로 체험해보기</button>
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
