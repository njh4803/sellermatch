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
    padding: 0;
}
.partner_bnr .partner_wrap {
    width: 1280px;
    margin: 0 auto;
    text-align: left;
}
.partner_bnr2 {
    width: 100%;
    padding-bottom: 100px;
    text-align: center;
}
.partner_bnr3 {
    width: 100%;
    text-align: center;
}
.search_chk {
  width: 98px;
  height: 33px;
  border: solid 1px #d6d6d6;
  background-color: #ffffff;
  object-fit: contain;
  font-family: NotoSansKRRegular;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #1f1f1f;
  float: left;
}
.search_chk.search_check{
  background-image: linear-gradient(to left, #3b1374 , #c80c58 );
  color: #ffffff;
}
.chk_list_container{
	height: 250px;
}
.chk_list_container span{
  display: inline-block;
  margin-bottom : 13.3px;
  object-fit: contain;
  font-family: NotoSansKR;
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.chk_listBox{
	display: inline-block;
	overflow-x:hidden;
	overflow-y:auto;
	width:12.66%;
	height:250px;
	text-align: left;
	margin-right: -5px;
	padding: 15px;
	border: solid 1px #d8d8d8;
	background-color: #ffffff;
}
.container1{
  height: 278px;
  margin: 15px 0;
  padding: 30px 50px;
  object-fit: contain;
  border: solid 1px #d8d8d8;
}
.container2{
	height: 50px;
}
.container1 .container2{
	margin: 0;
    width: 100%;
    height: 100%;
    float: left;
}
.container3{
	border-left: 2px solid #e3e3e3;
    height: 100%;
    width: 30%;
    float: right;
    padding: 60px;
}
.row1{
	height: 50px;
	width: 97%;
	margin-left: 0;
	margin-right: 0;
}
.row3{
	width: 100%;
	margin-left: 0;
	margin-right: 0;
}
.row2{
	margin-bottom: 15px !important;
	width: 700px;
}
.height-500{
	height: 500px;
	margin: 0;
}
.leftBox{
	float: left;
	margin: 10px 15px;
}
.leftBox2{
	float: left;
	height: 100%;
}
.row1.leftBox{
    float: left;
    margin: 0;
    height: auto;
    width: 700px;
}
.row1 .leftBox{
	float: left;
	margin: 0;
}
.rightBox{
	float: right;
    margin-top: 23px;
}
.rightBox a{
	margin: 0 15px;
	font-weight: 0;
	text-decoration: none;
	color: #000;
}
a.sort{
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: right;
  color: #000000;
}
a.sort.select{
	font-weight: bold;
}
.margin-0{
	margin:0;
}
.sortBox span{
	margin: 0 10px;
}
.p-findBtn{
	background-color: #e52367;;
	color: white;
	width: 100%;
	height: 70px;
	object-fit: contain;
	font-family: NotoSansKR;
	font-size: 15px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
	margin-top: -2px;
	border-top-right-radius:10px;
    border-top-left-radius:10px;
}
.s-findBtn{
	background-color: #57207C;
	color: white;
	width: 100%;
	height: 70px;
	object-fit: contain;
	font-family: NotoSansKR;
	font-size: 15px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
	margin-top: -2px;
	border-top-right-radius:10px;
    border-top-left-radius:10px;
}
.purpleBox{
  display: inline-block;
  width: fit-content;
  height: 20px;
  margin-left: 5px;
  padding: 2px 8px;
  border-radius: 11px;
  border: solid 0.5px #5400d9;
  background-color: #ffffff;
  font-size: 10px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #5400d9;
  vertical-align: bottom;
}
.blueBox{
	background-color: #71A6DB;
	color: white;
	display: inline-block;
	border-radius: 1px;
	padding: 13px 13px;
	margin-right: 10px;
}
.grayBox{
  height: 21px;
  margin: 0 20px 0 0;
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: left;
  color: #707070;
  background-color: #ffffff;
}
.redBox{
  height: 21px;
  margin: 0 20px 0 0;
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: left;
  color: #ff0000;
  background-color: #ffffff;
}
.pFindBox{
  height: 26px;
  margin: 0 10px 20px 0;
  padding: 2px 17px 3px;
  object-fit: contain;
  border-radius: 13px;
  background-color: #d80b54;
  object-fit: contain;
  font-family: NotoSansKRMedium;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #ffffff;
}
.sFindBox{
  height: 26px;
  margin: 0 10px 20px 0;
  padding: 2px 17px 3px;
  object-fit: contain; 
  border-radius: 13px;
  background-color: #57207c;
  object-fit: contain;
  font-family: NotoSansKRMedium;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #ffffff;
}
.titleBox{
  object-fit: contain;
  width: 700px;
  height: 78px;
  font-size: 20px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.3;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.contentsBox{
	text-align: left;
	background-color: #F2F2F2;
	padding: 15px;
	border-radius: 10px;
	min-height: 100px;
	max-height: 100px;
}
.tagBox{
	display: inline-block;
	color: #7F7F7F;
	margin-right: 10px;
}
.countBox {
  display: inline-block;
  height: 21px;
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: right;
  color: #000000;
  margin-top: 48px;
}
.countBox span{
  font-weight: normal;
}
.projDetail a{
	text-decoration: none;
	color: black;
	cursor: pointer;
}
a:focus, a:hover{
	text-decoration: none;
}
/* 스크롤바 디자인 */
.chk_listBox::-webkit-scrollbar {
  width: 4px;
  height: 10px;
  background: #ffffff;
}
.chk_listBox::-webkit-scrollbar-thumb {
  border-radius: 3.5px;
  background-color: #D9D9D9;

  .chk_listBox:hover {
    background-color: #adb5bd;
  }
}
.chk_listBox::-webkit-scrollbar-track {
  background: #ffffff;
}
/*post slider*/
.post-slider{
  width:100%;
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
  right: -80px;
  font-size:2em;
  color:gray;
  cursor: pointer;
}
.post-slider .prev{
  position:absolute;
  top:50%;
  left: -80px;
  font-size:2em;
  color:gray;
    cursor: pointer;
}
.post-slider .post-wrapper{
  width:100%;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post{
  width:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info{
  font-size:15px;
  height:100%;
  border: 2px solid #e3e3e3;
  border-top-right-radius:10px;
  border-top-left-radius:10px;
}
.post-slider .post-wrapper .post .slider-image{
  width:100%;
  height:300px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
  display: none;
}
.findPass{
  width: 32.3px;
  height: 45px;
  margin-bottom: 45px;
  margin-top: 60px;
  object-fit: contain;
}
.hotPass{
  width: 20px;
  height: 27.9px;
  object-fit: contain;
  margin-right: 5px;
  margin-bottom: 10px;
}
.hotPass2{
  width: 11px;
  height: 15.3px;
  object-fit: contain;
  margin: 0 auto;
  margin-bottom: 5px;
}
.searchPass{
  width: 26.5px;
  height: 37px;
  margin-right: 16.5px;
  object-fit: contain;
}
.textBox1{
  height: 58px;
  margin-bottom: 10px;
  object-fit: contain;
  font-family: NotoSansKRBold;
  font-size: 40px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #1f1f1f;
}
.textBox2{
  height: 29px;
  margin-top: 10px;
  margin-bottom: 80px;
  object-fit: contain;
  font-family: NotoSansKRRegular;
  font-size: 20px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #1f1f1f;
}
.container2.hot-contents span{
  font-family: NotoSansKR;
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.container2.hot-contents{
  margin-bottom: 30px;
  height: 36px;
}
.hotNation{
  height: 19px;
  margin: 15px 0 12px 20px;
  padding: 2px 9px;
  object-fit: contain;
  border-radius: 11px;
  border: solid 0.5px #5400d9;
  background-color: #ffffff;
  font-family: NotoSansKRMedium;
  font-size: 10px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #5400d9;
  width: fit-content;
  line-height: 1.5;
}
.hotTitle{
  margin: 0 22px;
  margin-bottom: 10.5px; 
  object-fit: contain;
  font-family: NotoSansKRRegular;
  font-size: 16px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  line-height: 1.5;
  color: #000000;
  height: 72px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical; 
}
.hot-hr{
	margin-bottom: 16.5px;
	border: solid 1px #cbcbcb;
	width: 80%;
	margin-top: 0;
}
.applyBtn{
  height: 40px;
  margin: 17px 0 0;
  padding: 10px 0;
  object-fit: contain;
  background-color: #f0f0f0;
  object-fit: contain;
  font-family: NotoSansKRBold;
  font-size: 14px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.71;
  letter-spacing: normal;
  color: #505050;
  width: 100%;
}
.countAll{
  font-family: NotoSansKRMedium;
  font-size: 25px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.countAll span{
  color: #e52367;
}
.countAllbox{
	margin-top: 60px;
}
.count-hr{
  height: 0;
  border: solid 2px #000000;
  margin-bottom: 20px;
  margin-top: 0;
  width: 1280px;
}
.scrap{
  width: 160px;
  height: 40px;
  border-radius: 4px;
  border: solid 1px #c6c6c6;
  background-color: #ffffff;
  margin-bottom: 10px;
  font-family: NotoSansKRMedium;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.46;
  letter-spacing: normal;
  color: #000000;
}
.match{
  width: 160px;
  height: 40px;
  border-radius: 4px;
  background-image: linear-gradient(to right, #d90b54, #3b1374);
  font-family: NotoSansKRMedium;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.46;
  letter-spacing: normal;
  color: #ffffff;
  margin-bottom: 6px;
}
.matchPass{
  width: 10px;
  height: 16.6px;
  object-fit: contain;
  margin-top: -3px;
}
.star{
  width: 11.6px;
  height: 11.1px;
  object-fit: contain;
  margin-top: -3px;
}
.textBox3{
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.selectBox{
	display: inline-block;
	width: 320px;
	height: 60px;
	margin: 20px 0;
	border: solid 1px #cccccc;
	background-color: #ffffff;
	margin-right: -3px;
	padding-left: 50px;
    padding-top: 15px;
    padding-right: 24px;
    padding-bottom: 16px;
}
.textBox4{
	font-size: 20px;
	height: 29px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: left;
	color: #4b4b4b;
}
.textBox5{
  display: inline-block;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #707070;
  margin-right: 20px;
}
.selectResult{
  height: 70px;
  margin: 20px 0 60px;
  padding: 25px 50px 24px 48px;
  border-radius: 37px;
  border: solid 1px #cccccc;
  background-color: #ffffff;
}
.resultText{
  display:inline-block;
  height: 21px;
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #989898;
  float: left;
}
.resultReset{
  display:inline-block;
  height: 21px;
  margin: 0 0 0 9.3px;
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #989898;
  float: right;
}
.photoBox{
  width: 140px;
  height: 140px;
  border-radius: 70%;
  overflow: hidden;
  margin: 38px 50px 38px 0;
}
.nick{
  display: inline-block;
  font-size: 16px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #57207c;
  margin-right: 10px;
}
.btnBox{
	float: right;
	width: 160px;
	margin-top: -135px;
}
.sellerInfo{
  height: 50px;
  padding: 15px 15px 14px;
  border: solid 1px #d8d8d8;
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.sellerInfo span{
  display: inline-block;
  font-weight: normal;
  color: #343434;
  margin-left: 5px;
  margin-right: 20px;
}
/*----------------------------*/

.orangeBox{
	background-color: #ED7D31;
	color: white;
	display: inline-block;
	border-radius: 5px;
	padding: 15px 15px;
	margin-right: 10px;
}
.blueBox{
	background-color: #71A6DB;
	color: white;
	display: inline-block;
	border-radius: 1px;
	padding: 15px 15px;
	margin-right: 10px;
}
.titleBox{
	font-size: 30px;
}
.titleBox .pp{
	width: 100px;
	height: 40px;
	color: #E62267;
}
.titleBox .sp{
	width: 100px;
	height: 40px;
	color: #57207C;
}
.contentsBox{
	text-align: left;
	background-color: #F2F2F2;
	padding: 15px;
	border-radius: 10px;
	min-height: 100px;
	max-height: 100px;
}
.tagBox{
	display: inline-block;
	color: #7F7F7F;
	margin-right: 10px;
}
.tagContainer{
	padding-top: 50px;
}

.projDetail a{
	text-decoration: none;
	color: black;
}
a:focus, a:hover{
	text-decoration: none;
}
/* 스크롤바 디자인 */
.chk_listBox::-webkit-scrollbar {
  width: 4px;
  height: 10px;
  background: #ffffff;
}
.chk_listBox::-webkit-scrollbar-thumb {
  border-radius: 3.5px;
  background-color: #D9D9D9;
}
  
.chk_listBox::-webkit-scrollbar-track {
  background: #ffffff;
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
  height:100%;
  padding-left:10px;
  border: 2px solid #e3e3e3;
}
.post-slider .post-wrapper .post .slider-image{
  width:100%;
  height:300px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
  display: none;
}
.right-box{
	display: inline-block;
    float: right;
    width: 950px;
}
.search-box{
	padding: 15px;
	background-color: #f7f7f7;
    border: 1px solid #fff; 
}
.search-box > div{
	margin: 15px 0;
	height: 30px;
}
.search-box > div > span{
	font-size: 13px;
}
.search {
	border: 1px solid #e3e3e3;
	width: 900px;
	height: 45px;
	border-radius: 10px;
	background-image: url("../local_assets/img/검색아이콘.jpg");
	background-position:5px center;
	background-repeat: no-repeat;
	box-sizing: border-box;
	outline: none;
	position: absolute;
}
.search:focus{
	background-image: none;
}
.scrapBtn{
	background-image: url("../local_assets/img/star.jpg");
	background-position: center;
	background-repeat: no-repeat;
	box-sizing: border-box;
	outline: none;
	position: absolute;
    width: 30px;
    height: 28px;
    margin: 7px;
}
.imgBox{
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
	border: 1px solid #e3e3e3;
	margin: 15px;
	display: inline-block;
}
.profile{
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.leftBox strong{
	font-size: 17px;
    font-weight: bolder;
}
.partner_bnr .partner_list .chk_listBox  ul  li{
    width: 90px;
    display: inline-block;
    font-size: 12px;
}
.partner_bnr .partner_list .chk_listBox .biz-chk li{
    width: 100%;
    display: block;
	font-size: 12px;
}
.indus{
    background-color: #D72B62;
    height: 30px;
    padding: 10px;
    color: white;
    font-size: 10px;
    border-radius: 7px;
    font-weight: normal;
    margin: 0 0 15px 15px;
}
.span-box{
	display: inline-block;
    padding: 7px 0 7px 15px;
}
.seller-tag{
	display: inline-block;
    height: 30px;
    padding: 9px;
    color: purple;
    border: 1px solid purple;
    font-size: 10px;
    border-radius: 12px;
    font-weight: bold;
    margin: 0 0 15px 15px;
}
.s-box{
	width: 180px;
    margin-top: 27px;
}
.sellerDetail{
	cursor: pointer;
}
</style>
<div class="partner_bnr">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div>
				<img class="findPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass_black.png">
			</div>
			<div class="textBox1">판매자 찾기</div>
			<div class="textBox2">조건에 맞는 판매자를 한 눈에 찾아보세요</div>
		</div>
	</div>
	<div class="partner_bnr2">
		<div class="search_bnr">
		    <div class="search_wrap">
		        <form id="seller_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/seller/find">
			        <div class="input_group">
			            <input type="text" name="keyword" placeholder="찾고 싶은 판매자 이름, 상품, 지역 등을 검색 하세요!">
			            <button type="submit" class="btn_search">
			               <img class="searchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png"> 검색   
			            </button>    
			        </div>
			        <input type="hidden" value="defaultSort" id="sort" name="sort">
			    </form>
		    </div>    
		</div>
	</div>
	<div class="partner_wrap">
		<div class="textBox3">조건검색</div>
		<div>
			<div class="selectBox"><div class="textBox4">사업자 구분</div></div>
			<div class="selectBox"><div class="textBox4">지역 구분</div></div>
			<div class="selectBox"><div class="textBox4">상품 분류</div></div>
			<div class="selectBox"><div class="textBox4">판매 채널</div></div>			
		</div>
		<div class="selectResult">
			<div class="resultText">
				선택이 없을시에는 전체를 기준으로 리스트가 보여집니다
			</div>
			<div class="resultReset">
				조건 검색 리셋하기
			</div>
		</div>
	</div>
	<div class="partner_wrap">
		<div class="container2 countAllbox">
			<div class="leftBox countAll">전체 <span>${totalCount}</span><span>건</span>이 검색되었습니다</div>
			<div class="rightBox">
				<a href="javascript:void(0)" class="sort select" id="defaultSort">기본정렬 </a>
				<a href="javascript:void(0)" class="sort" id="endSort">마감일순 </a>
				<a href="javascript:void(0)" class="sort" id="regSort">최신등록순 </a>
				<a href="javascript:void(0)" class="sort" id="applySort">참여자순 </a>
				<a href="javascript:void(0)" class="sort" id="hitSort" style="margin-right: 0;">조회순</a>
			</div>
		</div>
		<hr class="count-hr">
		<c:forEach var="output" items="${output}" varStatus="status">
			<div class="container1 content">
				<div class="container2">
					<div class="leftBox2">
						<img class="photoBox" alt="" src="${pageContext.request.contextPath}/local_assets/img/profile.png">
					</div>
					<div class="row1 leftBox">
						<div class="row2 leftBox">
							<div class="nick">${output.memNick}</div>
							<c:forEach var="hashtag" items="${output.profileHashtagList}">
        						<div class="purpleBox"># ${hashtag}</div>
        					</c:forEach>
						</div>
					</div>
					<div class="row1 leftBox">
						<div class="row2 leftBox">
							<div class="titleBox">
								${output.profileIntro}
							</div>
						</div>
					</div>
					<div class="row1 leftBox">
						<div class="row2 leftBox">
							<span class="textBox5">${output.profileIndusName}</span>
							<span class="textBox5">${output.profileNationName}지역</span>
							<span class="textBox5">${output.profileBizSortName}</span>
							<span class="textBox5">
							<c:forEach var="profileChannel" items="${output.profileChannelList}" varStatus="status2">
		        				<c:choose>
		        					<c:when test="${!status2.last}">
		        						${profileChannel},  
		        					</c:when>
		        					<c:otherwise>
		        						${profileChannel}
		        					</c:otherwise>
		        				</c:choose>
		        			</c:forEach>
		        			</span>
						</div>
					</div>
					<div class="row1 leftBox">
						<div class="leftBox">
							<div class="sellerInfo">
								계약<span>${output.contractCount}건</span>
								등록프로젝트<span>${output.projAddCount}건</span>
								요청수<span>${output.recommendCount}건</span>
								매출<span>${output.profileVolume}원</span>
								경력<span style="margin-right: 0;">${output.profileCareerName}</span>
							</div>
						</div>
					</div>
					<div class="btnBox">
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
							판매자 상세정보
						</button>
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
							관심등록
						</button>
						<button class="match" id="profileMemId${status.index}" data-value="${output.profileMemId}" data-index="${status.index}">
						<img class="matchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
							매치하기
						</button>
					</div>
				</div>
			</div>
		<c:if test="${output == ''}">
			<div class="emptyResult">검색결과가 없습니다.</div>
		</c:if>
	    </c:forEach>
        <div class="partner_bnr2 pageBox" style="margin-right: -15px;">
        	<div class="row1">
				<div class="col-lg-12 col-md-12 col-sm12 topsub-pagenation text-center">
					<ul class="pagination">
					<!-- 페이지 번호 구현 -->
				    <%-- 이전 그룹에 대한 링크 --%>
				    <c:choose>
				        <%-- 이전 그룹으로 이동 가능하다면? --%>
				        <c:when test="${pageData.prevPage > 0}">
				            <%-- 이동할 URL 생성 --%>
				            <c:url value="/seller/find" var="prevPageUrl">
				                <c:param name="page" value="${pageData.prevPage}" />
				                <c:param name="keyword" value="${keyword}" />
				            </c:url>
				            <li><a href="${prevPageUrl}">&laquo;</a></li>
				        </c:when>
				        <c:otherwise>
				            <li><a>&laquo;</a></li>
				        </c:otherwise>
				    </c:choose>
				    
				    <%-- 페이지 번호 (시작 페이지 부터 끝 페이지까지 반복) --%>
				    <c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
				        <%-- 이동할 URL 생성 --%>
				        <c:url value="/seller/find" var="pageUrl">
				            <c:param name="page" value="${i}"/>
				            <c:param name="keyword" value="${keyword}"/>
				        </c:url>
				        
				        <%-- 페이지 번호 출력 --%>
				        <c:choose>
				            <%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
				            <c:when test="${pageData.nowPage == i}">
				                <li><a><strong>${i}</strong></a></li>
				            </c:when>
				            <%-- 나머지 페이지의 경우 링크 적용함 --%>
				            <c:otherwise>
				                <li><a href="${pageUrl}">${i}</a></li>
				            </c:otherwise>
				        </c:choose>
				    </c:forEach>
				    
				    <%-- 다음 그룹에 대한 링크 --%>
				    <c:choose>
				        <%-- 다음 그룹으로 이동 가능하다면? --%>
				        <c:when test="${pageData.nextPage > 0}">
				            <%-- 이동할 URL 생성 --%>
				            <c:url value="/seller/find" var="nextPageUrl">
				                <c:param name="page" value="${pageData.nextPage}" />
				                <c:param name="keyword" value="${keyword}" />
				            </c:url>
				            <li><a href="${nextPageUrl}">&raquo;</a></li>
				        </c:when>
				        <c:otherwise>
				            <li><a>&raquo;</a></li>
				        </c:otherwise>
				    </c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
Handlebars.registerHelper('creatPage', function (startPage, endPage, nowPage) {
	var tag = '';
	for (var i = startPage; i < endPage+1; i++) {
	    if (nowPage == i) {
	    	tag += '<li><a href="javascript:void(0)" class="pageMove" value='+i+'><strong>'+i+'</strong></a></li>'
		} else {
			tag += '<li><a href="javascript:void(0)" class="pageMove" value='+i+'>'+i+'</a></li>'
		}
	}
	return new Handlebars.SafeString(tag);
});

Handlebars.registerHelper('ifCond', function (v1, operator, v2, options) {

    switch (operator) {
        case '==':
            return (v1 == v2) ? options.fn(this) : options.inverse(this);
        case '===':
            return (v1 === v2) ? options.fn(this) : options.inverse(this);
        case '!=':
            return (v1 != v2) ? options.fn(this) : options.inverse(this);
        case '!==':
            return (v1 !== v2) ? options.fn(this) : options.inverse(this);
        case '<':
            return (v1 < v2) ? options.fn(this) : options.inverse(this);
        case '<=':
            return (v1 <= v2) ? options.fn(this) : options.inverse(this);
        case '>':
            return (v1 > v2) ? options.fn(this) : options.inverse(this);
        case '>=':
            return (v1 >= v2) ? options.fn(this) : options.inverse(this);
        case '&&':
            return (v1 && v2) ? options.fn(this) : options.inverse(this);
        case '||':
            return (v1 || v2) ? options.fn(this) : options.inverse(this);
        default:
            return options.inverse(this);
    }
});
</script>
<script type="text/x-handlebars-template" id="page-tmpl">
	<div class="partner_bnr2 pageBox" style="margin-right: -15px;">
        <div class="row1">
			<div class="col-lg-12 col-md-12 col-sm12 topsub-pagenation text-center">
				<ul class="pagination">
		     	   {{#ifCond prevPage '>' 0}}
		      	      <li><a href="javascript:void(0);" class="pageMove" value="{{prevPage}}">&laquo;</a></li>
		    	    {{else}}
		     	       <li><a>&laquo;</a></li>
		     	   {{/ifCond}}
		    	    {{creatPage startPage endPage nowPage}}
				    {{#ifCond nextPage '>' 0}}
		     	       <li><a href="javascript:void(0);" class="pageMove" value="{{nextPage}}">&raquo;</a></li>
		    	    {{else}}
		    	        <li><a>&raquo;</a></li>
		    	    {{/ifCond}}
				</ul>
			</div>
		</div>
	</div>
</script>
<script type="text/x-handlebars-template" id="seller-list-tmpl">
        	<div class="right-box content">
	        	<div class="sortBox">
	        		<div class="leftBox">
	        			총 판매자 수 : {{totalCount}}명
	        		</div>
	        		<div class="rightBox">
	        			<a href="javascript:void(0)" class="sort" id="defaultSort">기본순 /</a>
						<a href="javascript:void(0)" class="sort" id="volumeSort">매출순 /</a>
						<a href="javascript:void(0)" class="sort" id="regSort">최신등록순 /</a>
						<a href="javascript:void(0)" class="sort" id="recommendSort">요청 받은 순 /</a>
						<a href="javascript:void(0)" class="sort" id="hitSort" style="margin-right: 0;">조회순</a>
	        		</div>
	        	</div>
	        </div>
	        {{#output}}
	        <div class="right-box content clearfix">
	        	<div class="sellerInfoBox">
	        		<button class="scrapBtn"></button>
	        		<div class="imgBox">
	        			<img class="profile" src="/local_assets/img/profile.png">
	        		</div>
	        		<div class="sellerInfo">
		        		<div class="leftBox">
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="nick">{{memNick}}</span>
				        		</div>
				        		<div class="leftBox margin-0">
				        			<span class="auth">
				        				신원(
										{{#ifCond memRname '==' 1}}
				        					o
				        				{{/ifCond}}
				        				{{#ifCond memRname '==' 0}}
				        					x
				        				{{/ifCond}}
				        				), 
				        			</span>
				        			
				        			<span class="auth">
				        				사업자(
				        				{{#ifCond profileBizCerti '==' 1}}
				        					o
				        				{{/ifCond}}
				        				{{#ifCond profileBizCerti '==' 0}}
				        					x
				        				{{/ifCond}}
				        				), 
				        			</span>
				        			
				        			<span class="auth">
					        			채널(
										{{#ifCond profileChChk '==' 1}}
				        					o
				        				{{/ifCond}}
				        				{{#ifCond profileChChk '==' 0}}
				        					x
				        				{{/ifCond}}
					        			), 
				        			</span>
				        			<span class="auth">
					        			매출(
										{{#ifCond profileSaleChk '==' 1}}
				        					o
				        				{{/ifCond}}
				        				{{#ifCond profileSaleChk '==' 0}}
				        					x
				        				{{/ifCond}}
					        			)
				        			</span>
				        		</div>
		        			</div>
		        			<div class="clearfix">
		        				<div class="leftBox">
		        					<strong class="sellerDetail" id="profileMemId{{@key}}" data-index="{{@key}}"  data-value="{{profileMemId}}">
										{{profileIntro}}
									</strong>
		        				</div>
		        			</div>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<div class="indus">{{profileIndusName}} 분야</div>
				        		</div>
				        		<div class="leftBox margin-0">
				        			<div class="span-box">
					        			<span>{{profileNationName}} /</span>
					        			<span>{{profileBizSortName}} /</span>
					        			<span>
											{{#each profileChannelList as |value key|}}
						        				{{#if @last}}
						        					{{value}}
						        				{{else}}
						        					{{value}}, 
						        				{{/if}}
											{{/each}}
					        			</span>
				        			</div>
				        		</div>
		        			</div>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
									{{#each profileHashtagList as |value key|}}
		        						<div class="seller-tag"># {{value}}</div>
		        					{{/each}}
				        		</div>
		        			</div>
		        		</div>
		        		<div class="rightBox s-box">
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">계약 프로젝트</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>{{contractCount}}건</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">등록 프로젝트</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>{{projAddCount}}건</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">요청 받은 수</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>{{recommendCount}}건</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">매출규모</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>연 {{profileVolume}} 원</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">판매경력</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>{{profileCareerName}}</span>
				        		</div>
		        			</div>
		        			<hr>
		        		</div>
		        	</div>
	        	</div>
	        </div>
			{{/output}}
			{{#ifCond output '==' ''}}
	        	<div class="emptyResult">검색결과가 없습니다.</div>
	        {{/ifCond}}
</script>
<script>
$(document).ready(function() {
	
	$(document).on("click", ".match", function(){
		
		var idx = $(this).data('index');
		var profileMemId = $("#profileMemId"+idx).attr('data-value');
		window.location.href = ROOT_URL+"/seller/detail?profileMemId="+profileMemId;
	});
	
	$(document).on("submit", "#seller_frm", function(e){
		e.preventDefault();
		
		var keyword = $("input[name=keyword]").val();
		var trim_keyword = $.trim(keyword);
		if (trim_keyword == '') {
			swal({
                title: '알림',
                text: '검색어를 입력해주세요.',
               	type: 'warning',
            }).then(function(result) {
            	
            });
			return
		}
		
		// 초기화
		$(".content").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 
			'profileChannel'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel
				};
		
		for (var i = 0; i < param_list_name.length; i++) {
			//초기화
			param_list[param_list_name[i]]= [];
			var data_name = $("input[name="+param_list_name[i] +"]").data('name');
			
			if (data_name == 'ppmemRname') {
				var total_len = $("input[data-name=ppmemRname]").length;
				console.log(total_len)
				//선택된 갯수
				var len = $("input[data-name=ppmemRname]:checked").length;
				console.log(len)
				if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
					$("#ppmemRname").prop('checked', true);
				}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
					$("#ppmemRname").prop('checked', false);	
				}
			}
			if (data_name == 'sellermemRname') {
				var total_len = $("input[data-name=sellermemRname]").length;
				console.log(total_len)
				//선택된 갯수
				var len = $("input[data-name=sellermemRname]:checked").length;
				console.log(len)
				if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
					$("#sellermemRname").prop('checked', true);
				}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
					$("#sellermemRname").prop('checked', false);	
				}
			}
			if (data_name != 'ppmemRname' && data_name != 'sellermemRname') {
				//체크박스 총 개수
				var total_len = $("input[name="+param_list_name[i] +"]").length;
				//선택된 갯수
				var len = $("input[name="+param_list_name[i] +"]:checked").length;
				if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
					$("#"+param_list_name[i]).prop('checked', true);
				}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
					$("#"+param_list_name[i]).prop('checked', false);	
				}
			}
			$("input[name="+param_list_name[i] +"]:checked").each(function(i,e){
				var name = this.name
				var value = this.value
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
					}
					
				}
				
			});
			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		param_list["sort"] = $("#sort").val();
		param_list["keyword"] = trim_keyword;
		var url = formData.attr('action');
		
		$.ajax({
	       type: "GET",
	       url: ROOT_URL+"/seller/find2",
	       data: param_list,
	       success: function(json) {
	    	   console.log(json);
	    	   	var content = json
	       		var template = Handlebars.compile($("#seller-list-tmpl").html());
	       		var html = template(content);
	       		
	       		var page_content = json.pageData
	       		console.log(page_content)
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$(".search-box").after(page_html);
	       		$(".search-box").after(html);
	       		
	       }
		});
	});
	
	$(document).on("click", ".sellerDetail", function(){
		var idx = $(this).data('index');
		var profileMemId = $("#profileMemId"+idx).data('value');
		window.location.href = ROOT_URL+"/seller/detail?profileMemId="+profileMemId;
	});
	// 정렬 선택시
	$(document).on("click", ".sort", function(){
		var value = this.id;
		$("#sort").val(value);
		
		// 초기화
		$(".content").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 
			'profileChannel'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel
				};
		
		for (var i = 0; i < param_list_name.length; i++) {
			//초기화
			param_list[param_list_name[i]]= [];
			
			$("input[id="+param_list_name[i] +"]").each(function(){
				var checked = this.checked;
				
			});
			
			$("input[name="+param_list_name[i] +"]:checked").each(function(i,e){
				var name = this.name
				var value = this.value
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
					}
					
				}
				
			});
			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		var url = formData.attr('action');
		param_list["sort"] = $("#sort").val();
		$.ajax({
	       type: "GET",
	       url: ROOT_URL+"/seller/find2",
	       data: param_list,
	       success: function(json) {
	    	   console.log(json);
	    	   	var content = json
	       		var template = Handlebars.compile($("#seller-list-tmpl").html());
	       		var html = template(content);
	       		
	       		var page_content = json.pageData
	       		console.log(page_content)
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$(".search-box").after(page_html);
	       		$(".search-box").after(html);
	       		
	       }
		});
	});
	
	//체크박스 전체선택
	$(".checkAll").click(function(){
		$("#sort").val();
		// 초기화
		$(".content").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 
			'profileChannel'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel
				};
		
		for (var i = 0; i < param_list_name.length; i++) {
			//초기화
			param_list[param_list_name[i]]= [];
			
			$("input[id="+param_list_name[i] +"]").each(function(){
				var checked = this.checked;
				
				if (this.id == 'ppmemRname') {
					$("input[name=ppmemRname]").prop('checked', checked);
					$("input[name=ppBizCerti]").prop('checked', checked);
					$("input[name=projProdCerti]").prop('checked', checked);
					$("input[name=projProfit]").prop('checked', checked);
				}
				if (this.id == 'sellermemRname') {
					$("input[name=sellermemRname]").prop('checked', checked);
					$("input[name=sellerBizCerti]").prop('checked', checked);
					$("input[name=sellerChChk]").prop('checked', checked);
					$("input[name=sellerSaleChk]").prop('checked', checked);
				}
				if (this.id != 'sellermemRname' && this.id != 'ppmemRname') {
					$("input[name="+param_list_name[i] +"]").each(function(){
						this.checked = checked;
					});
				}
			});
			
			$("input[name="+param_list_name[i] +"]:checked").each(function(i,e){
				var name = this.name
				var value = this.value
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
					}
					
				}
				
			});
			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		var url = formData.attr('action');
		param_list["sort"] = $("#sort").val();
		$.ajax({
	       type: "GET",
	       url: ROOT_URL+"/seller/find2",
	       data: param_list,
	       success: function(json) {
	    	   console.log(json);
	    	   	var content = json
	       		var template = Handlebars.compile($("#seller-list-tmpl").html());
	       		var html = template(content);
	       		
	       		var page_content = json.pageData
	       		console.log(page_content)
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$(".search-box").after(page_html);
	       		$(".search-box").after(html);
	       		
	       }
		});
	});
	
	
	// 체크박스 선택 검색
	$(".check").click(function(){
		// 초기화
		$(".content").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 
			'profileChannel'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel
				};
		
		for (var i = 0; i < param_list_name.length; i++) {
			//초기화
			param_list[param_list_name[i]]= [];
			var data_name = $("input[name="+param_list_name[i] +"]").data('name');
			
			if (data_name == 'ppmemRname') {
				var total_len = $("input[data-name=ppmemRname]").length;
				console.log(total_len)
				//선택된 갯수
				var len = $("input[data-name=ppmemRname]:checked").length;
				console.log(len)
				if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
					$("#ppmemRname").prop('checked', true);
				}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
					$("#ppmemRname").prop('checked', false);	
				}
			}
			if (data_name == 'sellermemRname') {
				var total_len = $("input[data-name=sellermemRname]").length;
				console.log(total_len)
				//선택된 갯수
				var len = $("input[data-name=sellermemRname]:checked").length;
				console.log(len)
				if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
					$("#sellermemRname").prop('checked', true);
				}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
					$("#sellermemRname").prop('checked', false);	
				}
			}
			if (data_name != 'ppmemRname' && data_name != 'sellermemRname') {
				//체크박스 총 개수
				var total_len = $("input[name="+param_list_name[i] +"]").length;
				//선택된 갯수
				var len = $("input[name="+param_list_name[i] +"]:checked").length;
				if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
					$("#"+param_list_name[i]).prop('checked', true);
				}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
					$("#"+param_list_name[i]).prop('checked', false);	
				}
			}
			$("input[name="+param_list_name[i] +"]:checked").each(function(i,e){
				var name = this.name
				var value = this.value
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
					}
					
				}
				
			});
			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		param_list["sort"] = $("#sort").val();
		var url = formData.attr('action');
		
		$.ajax({
	       type: "GET",
	       url: ROOT_URL+"/seller/find2",
	       data: param_list,
	       success: function(json) {
	    	   console.log(json);
	    	   	var content = json
	       		var template = Handlebars.compile($("#seller-list-tmpl").html());
	       		var html = template(content);
	       		
	       		var page_content = json.pageData
	       		console.log(page_content)
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$(".search-box").after(page_html);
	       		$(".search-box").after(html);
	       		
	       }
		});
	});
	
	// 페이지 이동
	$(document).on("click", ".pageMove", function(){
		var keyword = $("input[name=keyword]").val();
		 
		// 초기화
		$(".content").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 
			'profileChannel'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel
				};
		
		for (var i = 0; i < param_list_name.length; i++) {
			//초기화
			param_list[param_list_name[i]]= [];
			
			$("input[name="+param_list_name[i] +"]:checked").each(function(i,e){
				var name = this.name
				var value = this.value
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
						console.log("----------------")
						console.log(param_list[name])
						console.log("----------------")
					}
					
				}
				
			});
		}
		var url = formData.attr('action');
		param_list["sort"] = $("#sort").val();
		param_list["page"] = $(this)[0].firstChild.data
		param_list["keyword"] = keyword;
		console.log(param_list['page'])
		$.ajax({
	       type: "GET",
	       url: ROOT_URL+"/seller/find2",
	       data: param_list,
	       success: function(json) {
	    	   console.log(json);
	    	   	var content = json
	       		var template = Handlebars.compile($("#seller-list-tmpl").html());
	       		var html = template(content);
	       		
	       		var page_content = json.pageData
	       		console.log(page_content)
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$(".search-box").after(page_html);
	       		$(".search-box").after(html);
	       		
	       }
		});
	});
});
</script>    
    </body>
</html>
