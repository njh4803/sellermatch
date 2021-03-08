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
    font-size: 1em;
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
    position: relative;
}
.main-001{
    display: inline-block;
    margin-top: 110px;
	width: 625px;
    height: 194px;
    font-size: 3.93em;
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
    margin-bottom: 44px;
	width: 100%;
	height: 83px;
	font-size: 1.429em;
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
    position: absolute;
	top: 155px;
    left: 59.5%;
}
.findBtn{
  display: inline-block;
  width: 240px;
  height: 60px;
  padding: 18px 0 19px;
  border-radius: 4px;
  box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
  background-image: linear-gradient(104deg, #ff8000, #ff540f);
  font-size: 1.429em;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
  margin-right: 15px;
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
  font-size: 1.429em;
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
  -webkit-transform: scale(1.05);
  transform: scale(1.05);
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
    font-size: 1em;
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
  font-size: 1.8em;
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
  width: 100%;
  height: 118px;
  font-size: 3.571em;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.2;
  letter-spacing: -0.5px;
  text-align: center;
  color: #343434;
  text-align: center;
  margin-bottom: 100px;
}
.tableBox{
	width: fit-content;
    border-radius: 20px;
    border: solid 1px #cccccc;
    background-color: #ffffff;
    margin: 0 130px;
    margin-bottom: 200px;
}
.table-row:nth-child(odd){
  width: 100%;
  background-color: #fff4ef;
}
.table-title-row{
  width: 100%;
  padding: 20px 0 20px;
  background-color: #ff540f;
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: -0.1px;
  text-align: center;
  color: #ffffff;
  border-top-left-radius: 20px;
  border-top-right-radius: 20px;
}
.table-col1{
  display:inline-block;
  width: 320px;
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
  padding: 20px 0 19px 0;
  margin-left: -2px;
}
.table-col2{
  display:inline-block;
  width: 350px;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
  padding: 20px 0 19px 0;
  margin-left: -7px;
  border-left: 2px solid #ff540f;
  border-right: 2px solid #ff540f;
}
.table-row:last-child .table-col2{
  border-bottom: 2px solid #ff540f !important;
}
.table-row:last-child .table-col1{
  border-bottom-left-radius: 20px;
}
.table-row:last-child .table-col3{
  border-bottom-right-radius: 20px;
}
.table-col3{
  display:inline-block;
  width: 350px;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
  padding: 20px 0 19px 0;
  margin-left: -7px;
}
.title-col1{
  display:inline-block;
  width: 320px;
  text-align: center;
}
.title-col2{
  display:inline-block;
  width: 350px;
  margin-left: -10px;
  text-align: center;
}
.title-col3{
  display:inline-block;
  width: 350px;
  margin-left: -10px;
  text-align: center;
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
  text-align: center;
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
	background-image: url(/local_assets/img/도형1.png) !important;
}
.main-img3{
	background-image: url(/local_assets/img/down-gray.png);
}
.memBox:hover .main-img3{
	background-image: url(/local_assets/img/down.png) !important;
}
.memBox:hover .textBox4 span{
  font-size: 25px !important;
  font-weight: 800 !important;
  color: #ff540f !important;
}

.textBox4{
  height: 508px;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.67;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
  margin-top: -30px;
}
.memBox .textBox4 span{
  font-size: 25px;
  font-weight: 800;
  color: #707070;
  display: inline-block;
  margin-bottom: 10px;
}
.spBox .textBox4 span{
  font-size: 25px;
  font-weight: 800;
  color: #ff540f;
  display: inline-block;
  margin-bottom: 10px;
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
    background-image: url(/local_assets/img/도형2.png);
}
.main-0005{
  width: 100%;
  /* height: 1080px; */
  height:100%;
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
  margin-bottom: 326px;
}
.main-img3{
    width: 30px;
    height: 30px;
    text-align: center;
    display: inline-block;
}
.textBox6{
	width: 317px;
    margin: 0 auto;
    font-size: 15px;
    text-align: left;
    font-size: 15px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: normal;
    text-align: left;
    color: #343434;
}
.space{
	margin-left: 19.9px;
}
.img4{
  width: 437px;
  height: 136px;
  margin: 200px 0 30px 0;
  object-fit: contain;
}
.textBox7{
	width: 100%;
    font-size: 50px;
    font-weight: 800;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: -0.5px;
    text-align: center;
    color: #343434;
    margin: 0 auto;
    margin-bottom: 100px;
}
.FAQ{
  display: block;
  width: 760px;
  margin: 0 auto;
  margin-bottom: 200px;
  border-radius: 20px;
  border: solid 1px #cccccc;
  text-align: left;
}
.img5{
  width: 20px;
  height: 20px;
  margin-right: 10px;
  margin-left: 30px;
  object-fit: contain;
  display: inline-block;
}
.FAQBox{
	width: 100%;
    padding: 25px 0;
    background-color: #ffffff;
    font-size: 18px;
    font-weight: 800;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: -0.18px;
    text-align: left;
    color: #343434;
    border-bottom: solid 1px #cccccc;
}
.FAQBox span{
    font-size: 18px;
    font-weight: 800;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: -0.18px;
    text-align: left;
    color: #343434;
    vertical-align: text-bottom;
}
.FAQBox:first-child{
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
}
.FAQBox:last-child{
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	border-bottom: none;
} 
.answerBox{
  width: 700px;
  margin: 25px 30px;
  padding: 25px 25px 25px 25px;
  background-color: #fff6f2;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.67;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
  display: none;
}
.answerBox-show{
	display: block;
}
.img5-show{
	background-image: url("/local_assets/img/bottomArrow2.png") !important;
}
.Qa{
	display: inline-block;
	width: 80%;
}
.border{
	width: 100px;
	height: 100px;
	border: 1px solid #000;
}
.table-img{
	display: none;
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
			   	        고마진, 독점, 위탁배송, OEM, 도매, 수입상품 등 공급자와<br>
				        오픈마켓, 종합몰, SNS, 공동구매, 폐쇄몰, 수출 등 판매자를 <br>
				        찾고 직거래하세요.<br>
	    		</div>
	    		<button class="findBtn">거래처 찾기 무료등록</button>
    			<button class="shareBtn">친구들과 공유하기</button>
	 		</div>
	 		<div class="main-imgBox">
	 			<div class="main-img1" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main_img1.png');">
	 			</div>
			</div>
	    </div>
	</div>
    <div class="bnr">
    	<div class="main-0002 clearfix">
    		<div class="main-003">
    			거래처 찾기를 1회만 등록하세요.<br>
				쉽게 빠르게 효율적인 직거래하세요.<br>
    		</div>
    	</div>
    	<div class="main-0003 clearfix">
    	    <div class="main-0001 clearfix">
	   			<div class="main-004">
	    			<div class="main-img2" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/main_img2.png');"></div>
	    		</div>
	    		<div class="main-007">
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
   		</div>
   		<div class="main-0004">
 			<div class="textBox1">
 				3~10% 더 저렴하게 공급받아<br>
				더 많은 이익을 남길 수 있어요.
			</div>
			<img class="table-img" src="${pageContext.request.contextPath}/local_assets/img/table.png">
			<%-- <table class="tableBox">
				<thead class="table-title-row">
					<tr>
						<th class="title-col1">특징</th>
						<th class="title-col2">셀러매치</th>
						<th class="title-col3">도매사이트</th>
					</tr>
				</thead>
				<tbody class="table-row">
					<tr>
						<td class="table-col1">첫 이용까지 소요시간</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">약 1일 내외</td>
					</tr>
					<tr>
						<td class="table-col1">사업자 없이 이용 가능한가요?</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">대다수 필요</td>
					</tr>
					<tr>
						<td class="table-col1">상세페이지없어도 이용 가능한가요?</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">X</td>
					</tr>
					<tr>
						<td class="table-col1">구매비용 충전 없이 이용 가능한가요?</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">대다수 필요</td>
					</tr>
					<tr>
						<td class="table-col1">중개 수수료 없나요?</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">공급가 3~10%</td>
					</tr>
					<tr>
						<td class="table-col1">직거래 가능한가요?</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">X</td>
					</tr>
					<tr>
						<td class="table-col1">조건별 거래처 찾기</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">일부 가능</td>
					</tr>
					<tr>
						<td class="table-col1">검증된 거래처 찾기</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">X</td>
					</tr>
					<tr>
						<td class="table-col1">거래처 추천 기능</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">X</td>
					</tr>
					<tr>
						<td class="table-col1">판매자 검색 / 열람</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">X</td>
					</tr>
					<tr>
						<td class="table-col1">해외 거래처 찾기</td>
						<td class="table-col2"><img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png"></td>
						<td class="table-col3">X</td>
					</tr>
				</tbody>
			</table> --%>
   			<div class="tableBox">
   				<div class="table-title-row">
   					<div class="title-col1">특징</div>
   					<div class="title-col2">셀러매치</div>
   					<div class="title-col3">도매사이트</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						첫 이용까지 소요시간
  					</div>
   					<div class="table-col2">약 5분</div>
   					<div class="table-col3">
   						약 1일 내외
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
  						사업자 없이 이용 가능한가요?		
  					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						대다수 사업자만 이용가능
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						상세페이지 없어도 이용 가능한가요?		
  					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						구매비용 충전 없이 이용 가능한가요?		
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						대다수 구매할 금액 충전 필요
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						중개 수수료 없나요?
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						공급가격에 3~10% 수수료 포함
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						직거래 가능한가요?
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						조건별 거래처 찾기	
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						일부 조건 찾기 기능
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						검증된 거래처 찾기	
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">	
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						거래처 추천 기능
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						판매자 검색 / 열람	
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						해외 거래처 찾기
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
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
	   					<div class="main_img4">판매자 회원</div>
	   					<div class="textBox4">
		   					<span>회원가입</span><br>
							판매자 선택 후, 회원가입<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래처 찾기 등록</span><br>
							판매 상품 정보를 담은 거래처 찾기 등록하기<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래하기</span><br>
							<div class="textBox6">
								① 등록한 거래처 찾기에서 지원 공급자 확인<br>
								② 거래처 찾기에서 공급자가 등록한 판매자<br>
								<span class="space"></span>거래처 찾기에 판매자로 지원하고 거래<br>
								③ 판매자 프로필 등록하고, 나에게 지원요청한<br>
								<span class="space"></span>공급자 상품정보를 본 후, 거래<br>
							</div>
		   				</div>
	   				</div>
	   				<div class="memBox" style="margin-left: 60px;">
	   					<div class="main_img4">공급자 회원</div>
	   					<div class="textBox4">
		   					<span>회원가입</span><br>
							공급자 선택 후, 회원가입<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래처 찾기 등록</span><br>
							공급 상품 정보를 담은 거래처 찾기 등록하기<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래하기</span><br>
							<div class="textBox6">
								① 등록한 거래처 찾기에서 지원 판매자 확인<br>
								② 거래처 찾기에서 판매자가 등록한 공급 상품<br>
								<span class="space"></span>거래처 찾기에 공급자로 지원하고 거래<br>
								③ 판매자 찾기에서 판매자 지원요청 후, 거래<br>
							</div>
		   				</div>  					
	   				</div>
	   			</div>   			
   			</div>
   		</div>
   		<div class="main-0004">
   			<img class="img4" alt="" src="${pageContext.request.contextPath}/local_assets/img/main_img4.png">
   			<div class="textBox7">
	   			셀러매치를 이용하며<br>
				자주 묻는 질문
   			</div>
   			<div class="FAQ">
   				<div class="FAQBox">
   					<div class="img5 img5-show" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>셀러매치 이용료는 어떻게 되나요?</span>
   					</div>
   					<div class="answerBox answerBox-show">
	   					셀러매치 서비스는 현재 무료 베타 서비스 기간입니다. 곧, 유료 서비스로 전환이 될 예정이며,<br>
						유료화 전에 미리 공지를 통해 내용을 전달드릴 예정입니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>유료화가 되고나서 결제를 하지 않으면 이용할 수 없나요?</span>
   					</div>
   					<div class="answerBox">
	   					유료화가 되면 일부 서비스는 결제를 해야 이용할 수 있게 될 예정입니다.<br>
      					그러나, '거래처 찾기 등록' 등의 일부 서비스는 계속 무료로 이용이 가능하며,<br>
      					유료화가 되어도 무료 서비스 기간동안 등록한 내용은 그대로 유지가 됩니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>하나의 계정으로 판매자와 공급자 2가지 기능을 모두 사용할 수 있나요?</span>
   					</div>
   					<div class="answerBox">
	   					현재는 가능하지 않습니다. 판매자와 공급자 중 하나를 꼭 선택해서 가입하셔야 합니다.<br>
        				다만, 판매자로 가입하신 후, 공급자로 다시 가입하여 2개의 계정을 사용하는 것은 가능합니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>상대방의 연락처 등을 알 수 있나요?</span>
   					</div>
   					<div class="answerBox">
						네, 그렇습니다. 셀러매치는 직거래 서비스로써, '지원하기'를 통해 서로 연결(매칭)이 되면<br>
					        상대방이 등록한 모든 정보를 열람할 수 있습니다. 직접 메일이나 전화로 연락하셔서 직거래를<br>
					        할 수 있습니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>아무 상품이나 거래처 찾기에 등록해도 되나요?</span>
   					</div>
   					<div class="answerBox">
	   					일반적으로 판매 또는 공급이 이뤄지는 상품의 카테고리를 선택할 수 있게 되어 있습니다.<br>
					        선택할 수 없는 상품의 경우 '기타' 항목을 선택하신 후, 등록하실 수 있습니다.<br>
					        다만, 상식적으로 거래가 이뤄지기 힘들거나 불가한 서비스, 관리자가 판단하기에 서비스에<br>
					        방해가 되는 내용 등은 관리자의 권한으로 사전 권고없이 수정 또는 삭제될 수 있습니다.
	   				</div>
   				</div>
   				<div class="FAQBox nowBtnShow">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>거래처 찾기 등록은 몇 번까지 등록 할 수 있나요?</span>
   					</div>
   					<div class="answerBox">
	   					현재는 무료 베타 서비스 기간으로, 베타서비스 기간 중에는 제한없이 등록할 수 있습니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>해외 판매자 또는 공급자도 찾을 수 있나요?</span>
   					</div>
   					<div class="answerBox">
	   					네, 가능합니다. 아직 서비스를 시작한지 얼마 되지 않아 충분한 판매자 및 공급자 수가 부족할 수 있습니다.<br>
        				조속한 시일내에 양질의 판매자와 공급자가 활동하는 서비스로 거듭나겠습니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/local_assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>공급 상품 단가, 이익율, 판매자 매출 등의 검증 내용은 신뢰할만 한가요?</span>
   					</div>
   					<div class="answerBox">
						검증을 거친 공급상품의 정보와 판매자의 정보는 관리자가 관련 내용을 면밀히 검토한 후,<br>
					        검증 표시를 하게 됩니다. 그래서 신뢰하셔도 좋다고 말씀드릴 수 있습니다.<br>
					        다만, 검증을 요청한 이용자가 의도적으로 거짓 정보를 전달하거나, 검증 후 정보가 변경이 되어<br>
					        검증된 내용과 실제 내용이 다를 수 있습니다.<br>
					        검증된 내용과 다른 사실을 발견하였을 경우, 셀러매치 고객센터(help@sellermatch.co.kr 또는 032-435-2236)으로<br>
					        연락주시면 적절한 조치를 취하도록 하겠습니다.
	   				</div>
   				</div>
   			</div>
   		</div>
   		<div class="main-0005">
   			<img class="img3" alt="" src="${pageContext.request.contextPath}/local_assets/img/main_img3.png">
   			<div class="textBox5">
   				<span>직접 써보시는 것이 가장 빠를거에요.</span><br>
				무료체험에는 어떠한 비용도 들지 않아요.
   			</div>
   			<button class="nowBtn">바로 체험해보기</button>
   		</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
 	
	$('.FAQBox').hover(function() {

	     //이부분은 마우스가 올라 요소 위에 올라왔을때 이벤트입니다.
		$(this).children('.answerBox').addClass('answerBox-show');
		$(this).children('.img5').addClass('img5-show');
	}, function(){

	    //이부분은 마우스가 요소에서 나갈떄 실행할 수 있는 이벤트 입니다.
		$(this).children('.answerBox').removeClass('answerBox-show');
		$(this).children('.img5').removeClass('img5-show');
	});
	
	$(window).scroll(function(){
    	//스크롤 하단 위치 값구하기
    	/* var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop(); */
    	
    	
    	//스크롤의 위치가 상단에서 450보다 크면 
        /* if($(window).scrollTop() > 450){  */ 
        if(window.pageYOffset >= $('.findBtn').offset().top){ 
            $('.gnb_project').addClass("fix");  
            //위의 if문에 대한 조건 만족시 fix라는 class를 부여함  
        }else {
            $('.gnb_project').removeClass("fix");
            //위의 if문에 대한 조건 아닌경우 fix라는 class를 삭제함  
        }
        
        if(window.pageYOffset < $('.nowBtnShow').offset().top){
        }else {
            $('.gnb_project').removeClass("fix");
            //위의 if문에 대한 조건 아닌경우 fix라는 class를 삭제함  
        }
    }); 
	
/* 	$(window).scroll(function(){
   	 
        if(window.pageYOffset >= $('.main-0005').offset().top){  
            $('.gnb_project').removeClass("fix"); 
        }else {
            $('.gnb_project').addClass("fix");
        }
    });  */

	
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
