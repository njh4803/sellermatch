<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="inc/header.jsp"%>
<style>
.font-30{
	font-size: 30px;
}
.partner_bnr {
    width: 100%;
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
  height: 240px;
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
	height: 17px;
	margin: 10px 20px 0 20px;
	font-family: NotoSansKRRegular;
	font-size: 12px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: 2.17;
	letter-spacing: normal;
	text-align: left;
	color: #4b4b4b;
}
.height-500{
	height: 500px;
	margin: 0;
}
.leftBox{
	float: left;
	margin: 10px 15px;
}
.row1.leftBox{
    float: left;
    margin: 0;
    height: auto;
    width: 900px;
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
.row2 .leftBox{
	float: left;
	padding: 0 5px;
	margin:0;
}
.row2 .rightBox{
	float: right;
	padding: 0 5px;
	margin:0;
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
  height: 19px;
  padding: 3px 24px 2px 23px;
  object-fit: contain;
  border-radius: 11px;
  border: solid 0.5px #5400d9;
  background-color: #ffffff;
  display: inline-block;
  object-fit: contain;
  font-family: NotoSansKRMedium;
  font-size: 10px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #5400d9;
  margin-top: 11px;
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
  width: 800px;
  height: 64px;
  object-fit: contain;
  font-family: NotoSansKRMedium;
  font-size: 22px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.45;
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
  margin-left: 20px;
  margin-bottom: 10.5px; 
  object-fit: contain;
  font-family: NotoSansKRRegular;
  font-size: 16px;
  font-weight: normal;
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
  margin-top: 15px;
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
.reg{
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.regDate{
  font-family: NotoSansKR;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: left;
  color: #707070;
}
</style>
<div class="partner_bnr">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div>
				<img class="findPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass_black.png">
			</div>
			<div class="textBox1">프로젝트 찾기</div>
			<div class="textBox2">찾으시는 키워드를 입력 후 세부 내용을 선택하세요</div>
		</div>
	</div>
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
	<div class="partner_wrap">
		<div class="partner_bnr2">
		    <div class="partner_wrap" style="text-align: center;">
		        <div class="partner_list vertical-middle">
		            <!-- <div class="search_chk"><input type="checkbox" class="checkAll" id="projSort">전체검색</div> -->
		            <input type="checkbox" class="check" name="projSort" value="" id="projSort">
		            <button class="search_chk" data-value="2" id="search_seller">판매자검색</button>
		            <button class="search_chk" data-value="1" id="search_pp">공급자검색</button>
		        </div>
		    </div>
		</div>
		<div class="partner_bnr2">
		    <div class="partner_wrap">
		        <div class="partner_list">
		            <div class="chk_list_container">
		            	<div class="chk_listBox basic-scroll">
		            		<span>지역</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projNation"><label for="projNation"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="02" id="n1"><label for="n1"><span>서울</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="031" id="n2"><label for="n2"><span>경기</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="032" id="n3"><label for="n3"><span>인천</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="033" id="n4"><label for="n4"><span>강원</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="041" id="n5"><label for="n5"><span>충남</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="042" id="n6"><label for="n6"><span>대전</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="043" id="n7"><label for="n7"><span>충북</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="051" id="n8"><label for="n8"><span>부산</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="052" id="n9"><label for="n9"><span>울산</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="053" id="n10"><label for="n10"><span>대구</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="054" id="n11"><label for="n11"><span>경북</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="055" id="n12"><label for="n12"><span>경남</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="061" id="n13"><label for="n13"><span>전남</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="062" id="n14"><label for="n14"><span>광주</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="063" id="n15"><label for="n15"><span>전북</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="044" id="n16"><label for="n16"><span>세종특별자치시</span></label></li>
			            		<li><input type="checkbox" class="check" name="projNation" value="064" id="n17"><label for="n17"><span>세종특별자치도</span></label></li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>상품분류</span>
			            	<ul>
			            		<li><input id="projIndus" class="checkAll" type="checkbox"><label for="projIndus"><span>전체</span></label></li>
			            		<c:forEach var="indusList" items="${indusList}" varStatus="status">
			            			<li><input type="checkbox" class="check" name="projIndus" value="${indusList.indusId}" id="i${status.count}"><label for="i${status.count}"><span>${indusList.indusName}</span></label></li>
			            		</c:forEach>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>상품단가</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projPrice"><label for="projPrice"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="9999" id="p1"><label for="p1"><span>1만원 미만</span></label></li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="19999" id="p2"><label for="p2"><span>2만원 미만</span></label></li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="49999" id="p3"><label for="p3"><span>5만원 미만</span></label></li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="99999" id="p4"><label for="p4"><span>10만원 미만</span></label></li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="100000" id="p5"><label for="p5"><span>10만원 이상</span></label></li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>판매마진</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll"  id="projMargin"><label for="projMargin"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="10" id="m1"><label for="m1"><span>10%이하</span></label></li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="20" id="m2"><label for="m2"><span>11%~20%</span></label></li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="30" id="m3"><label for="m3"><span>21%~30%</span></label></li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="31" id="m4"><label for="m4"><span>30%초과</span></label></li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>공급방법</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projSupplyType"><label for="projSupplyType"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="1" id="s1"><label for="s1"><span>OEM</span></label></li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="2" id="s2"><label for="s2"><span>위탁판매</span></label></li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="3" id="s3"><label for="s3"><span>도매공급</span></label></li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="4" id="s4"><label for="s4"><span>운영대행</span></label></li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="5" id="s5"><label for="s5"><span>경매공급</span></label></li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>공급자검증</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="ppmemRname"><label for="ppmemRname"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="ppmemRname" value="1" id="pp1"><label for="pp1"><span>신원인증</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="ppBizCerti" value="1" id="pp2"><label for="pp2"><span>사업자인증</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="projProdCerti" value="1" id="pp3"><label for="pp3"><span>상품검증</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="projProfit" value="1" id="pp4"><label for="pp4"><span>수익성검증</span></label></li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>판매자검증</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="sellermemRname"><label for="sellermemRname"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellermemRname" value="1" id="sp1"><label for="sp1"><span>신원인증</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerBizCerti" value="1" id="sp2"><label for="sp2"><span>사업자인증</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerChChk" value="1" id="sp3"><label for="sp3"><span>채널검증</span></label></li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerSaleChk" value="1" id="sp4"><label for="sp4"><span>매출검증</span></label></li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>판매채널</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projChannel"><label for="projChannel"><span>전체</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="1" id="c1"><label for="c1"><span>오픈마켓</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="2" id="c2"><label for="c2"><span>종합몰</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="3" id="c3"><label for="c3"><span>폐쇄몰</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="4" id="c4"><label for="c4"><span>커뮤니티</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="5" id="c5"><label for="c5"><span>SNS</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="6" id="c6"><label for="c6"><span>오프라인</span></label></li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="7" id="c7"><label for="c7"><span>해외</span></label></li>
			            	</ul>
		            	</div>
		            </div>
		        </div>
		    </div>
		</div>
		<div class="container2 hot-contents">
			<img class="hotPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass_black.png">
			<span>진행중인 핫매치</span>
		</div>
		    <div class="page-wrapper" style="position:relative;" id="premium">
		      <!--page slider -->
		      <div class="post-slider">
		        <i class="fas fa-chevron-left prev"></i>
		        <i class="fas fa-chevron-right next"></i>
		        <div class="post-wrapper">
		        	<c:forEach var="output" items="${output}" varStatus="status">
		        		<div class="post">
					      <div class="post-info">
					        <div class="row3">
					        	<c:if test="${output.projSort == 1}">
					        		<button class="p-findBtn">
						        		<img class="hotPass2" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
						        		${output.projSortName}를 찾습니다
					        		</button>
					        	</c:if>
					        	<c:if test="${output.projSort == 2}">
					     			<button class="s-findBtn">
						        		<img class="hotPass2" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
						        		${output.projSortName}를 찾습니다
					        		</button>
					        	</c:if>
					        </div>
					        <div class="hotNation">
					        	${output.projNationName}지역
					        </div>
					        <div class="hotTitle">
					        	${output.projTitle}
					        </div>
					        <hr class="hot-hr">
							<div class="row2">
								<span class="leftBox margin-0">모집자수</span>
								<span class="rightBox margin-0">${output.projRecruitNum}명</span>
							</div>
							<div class="row2">
								<span class="leftBox margin-0">지원자수</span>
								<span class="rightBox margin-0">${output.applyCount}명</span>
							</div>
							<div class="row2">
								<span class="leftBox margin-0">지원마감일</span>
								<span class="rightBox margin-0">${output.projEndDate}</span>
							</div>
							<div class="row2">
								<span class="leftBox margin-0">관심조회</span>
								<span class="rightBox margin-0">${output.projHit}회</span>
							</div>
							<div class="text-center">
								<button class="applyBtn">바로매치 지원하기</button>
							</div>
					      </div>
					    </div>
		        	</c:forEach>
				</div>
			  </div>	    
		      <!--post slider-->
		    </div>
		<div class="container2 countAllbox">
			<div class="leftBox countAll">전체 <span>${projCount}</span><span>건</span>이 검색되었습니다</div>
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
					<input type="hidden" id="projId${status.index}" value="${output.projId}">
					<div class="row1 leftBox">
						<div class="leftBox">
							<c:if test="${output.projSort == 1}">
				        		<button class="pFindBox">${output.projSortName}</button>
				        	</c:if>
				        	<c:if test="${output.projSort == 2}">
				        		<button class="sFindBox">${output.projSortName}</button>
				        	</c:if>
				        	<span class="reg"> 등록일 </span><span class="regDate">${output.projRegDate}</span>
						</div>
					</div>
					<div class="row1 leftBox projDetail" data-index="${status.index}">
						<c:if test="${output.projSort == 1}">
							<div class="titleBox">
								<a><span class="pp">공급자</span> | ${output.projTitle}</a>
							</div>
						</c:if>
						<c:if test="${output.projSort == 2}">
							<div class="titleBox">
								<a><span class="sp">판매자</span> | ${output.projTitle}</a>
							</div>
						</c:if>
					</div>
					<div class="row1 leftBox" style="margin-top: 13px;">
						<button class="grayBox">${output.projNationName}지역</button>
						<button class="grayBox">
							<c:if test="${output.projSort == 1}">
								판매자 찾음
							</c:if>
							<c:if test="${output.projSort == 2}">
								공급자 찾음
							</c:if>
						</button>
						<c:choose>
							<c:when test="${output.projDday < 0}">
								<button class="redBox">마감완료</button>
							</c:when>
							<c:otherwise>
								<button class="grayBox">진행중</button>
							</c:otherwise>
						</c:choose>						
					</div>		
					<div class="row1 leftBox">
						<c:if test="${output.profileBizCerti == 1}">
							<div class="purpleBox">사업자인증</div>
						</c:if>
						<c:if test="${output.memRname == 1}">
							<div class="purpleBox">신원인증</div>
						</c:if>
						<c:if test="${output.projProfit == 1}">
							<div class="purpleBox">수익성검증</div>
						</c:if>
						<c:if test="${output.projProdCerti == 1}">
							<div class="purpleBox">상품검증</div>
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							<div class="purpleBox">채널검증</div>
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							<div class="purpleBox">매출검증</div>
						</c:if>
						<c:if test="${output.projPrice != 0}">
							<div class="purpleBox">단가/마진 : ${output.projPrice}원/${output.projMarginName}</div>
						</c:if>
						<c:if test="${output.projPrice == 0}">
							<div class="purpleBox">마진 : ${output.projMarginName}</div>
						</c:if>						
					</div>
					<div class="text-right">
						<div class="countBox" style="margin-right: 7px;">
							모집수 <span>${output.projRecruitNum}명 </span>
						</div>
						<div class="countBox">
							 지원수 <span>${output.applyCount}명 </span>
						</div>
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
							관심등록
						</button>
						<button class="match">
						<img class="matchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
							매치하기
						</button>
					</div>
				</div>
			</div>
		</c:forEach>
		<c:if test="${output == ''}">
			<div class="emptyResult">검색결과가 없습니다.</div>
		</c:if>
		<div class="partner_bnr2 pageBox">
			<div class="row1">
				<div class="col-lg-12 col-md-12 col-sm12 topsub-pagenation text-center">
					<ul class="pagination">
					<!-- 페이지 번호 구현 -->
				    <%-- 이전 그룹에 대한 링크 --%>
				    <c:choose>
				        <%-- 이전 그룹으로 이동 가능하다면? --%>
				        <c:when test="${pageData.prevPage > 0}">
				            <%-- 이동할 URL 생성 --%>
				            <c:url value="/project/find" var="prevPageUrl">
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
				        <c:url value="/project/find" var="pageUrl">
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
				            <c:url value="/project/find" var="nextPageUrl">
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
<script type="text/x-handlebars-template" id="project-list-tmpl">
		<div class="container2 countAllbox">
			<div class="leftBox countAll">총 <span>{{projCount}}</span><span>건</span>이 검색되었습니다</div>
			<div class="rightBox">
				<a href="javascript:void(0)" class="sort select" id="defaultSort">기본정렬 </a>
				<a href="javascript:void(0)" class="sort" id="endSort">마감일순 </a>
				<a href="javascript:void(0)" class="sort" id="regSort">최신등록순 </a>
				<a href="javascript:void(0)" class="sort" id="applySort">참여자순 </a>
				<a href="javascript:void(0)" class="sort" id="hitSort" style="margin-right: 0;">조회순</a>
			</div>
		</div>
		<hr class="count-hr">
		{{#output}}
			<div class="container1 content">
				<div class="container2">
					<input type="hidden" id="projId{{@key}}" value="{{projId}}">
					<div class="row1 leftBox">
						<div class="leftBox">
							{{#ifCond projSort '==' 1}}
				        		<button class="pFindBox">{{projSortName}}</button>
				        	{{/ifCond}}
				        	{{#ifCond projSort '==' 2}}
				        		<button class="sFindBox">{{projSortName}}</button>
				        	{{/ifCond}}
				        	<span class="reg"> 등록일 </span><span class="regDate">{{projRegDate}}</span>
						</div>
					</div>
					<div class="row1 leftBox projDetail" data-index="{{@key}}">
						{{#ifCond projSort '==' 1}}
							<div class="titleBox">
								<a><span class="pp">{{projTitle}}</a>
							</div>
						{{/ifCond}}
						{{#ifCond projSort '==' 2}}
							<div class="titleBox">
								<a><span class="sp">{{projTitle}}</a>
							</div>
						{{/ifCond}}
					</div>
					<div class="row1 leftBox" style="margin-top: 13px;">
						<button class="grayBox">{{projNationName}}지역</button>
						<button class="grayBox">
							{{#ifCond projSort '==' 1}}
								판매자 찾음
							{{/ifCond}}
							{{#ifCond projSort '==' 2}}
								공급자 찾음
							{{/ifCond}}
						</button>
						{{#ifCond projDday '<' 0}}
							<button class="redBox">마감완료</button>
						{{else}}
							<button class="grayBox">진행중</button>
						{{/ifCond}}			
					</div>		
					<div class="row1 leftBox">
						{{#ifCond profileBizCerti '==' 1}}
							<div class="purpleBox">사업자인증</div>
						{{/ifCond}}
						{{#ifCond memRname '==' 1}}
							<div class="purpleBox">신원인증</div>
						{{/ifCond}}
						{{#ifCond projProfit '==' 1}}
							<div class="purpleBox">수익성검증</div>
						{{/ifCond}}
						{{#ifCond projProdCerti '==' 1}}
							<div class="purpleBox">상품검증</div>
						{{/ifCond}}
						{{#ifCond sprofileChChk '==' 1}}
							<div class="purpleBox">채널검증</div>
						{{/ifCond}}
						{{#ifCond sprofileSaleChk '==' 1}}
							<div class="purpleBox">매출검증</div>
						{{/ifCond}}
						{{#ifCond projPrice '!=' 0}}
							<div class="purpleBox">단가/마진 : {{projPrice}}원/{{projMarginName}}</div>
						{{/ifCond}}
						{{#ifCond projPrice '==' 0}}
							<div class="purpleBox">마진 : {{projMarginName}}</div>
						{{/ifCond}}
					</div>
					<div class="text-right">
						<div class="countBox" style="margin-right: 7px;">
							모집수 <span>{{projRecruitNum}}명 </span>
						</div>
						<div class="countBox">
							 지원수 <span>{{applyCount}}명 </span>
						</div>
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
							관심등록
						</button>
						<button class="match">
						<img class="matchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
							매치하기
						</button>
					</div>
				</div>
			</div>
		{{/output}}
		{{#ifCond output '==' ''}}
			<div class="emptyResult">검색결과가 없습니다.</div>
		{{/ifCond}}
</script>
<script type="text/x-handlebars-template" id="page-tmpl">
<div class="partner_bnr2 pageBox">
	<div class="row1">
		<div class="col-lg-12 col-md-12 col-sm12 topsub-pagenation text-center">
			<ul class="pagination">
		        {{#ifCond prevPage '>' 0}}
		            <li><a href="javascript:void(0)" class="pageMove" value="{{prevPage}}">&laquo;</a></li>
		        {{else}}
		            <li><a>&laquo;</a></li>
		        {{/ifCond}}
		        {{creatPage startPage endPage nowPage}}
			    {{#ifCond nextPage '>' 0}}
		            <li><a href="javascript:void(0)" class="pageMove" value="{{nextPage}}">&raquo;</a></li>
		        {{else}}
		            <li><a>&raquo;</a></li>
		        {{/ifCond}}
			</ul>
		</div>
	</div>
</div>
</script>
<script>
$(document).ready(function() {
	$('.post-wrapper').slick({
		  slidesToShow: 5,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next'),
		  prevArrow:$('.prev'),
	});
	
	
	$(document).on("click", ".search_chk", function(){
		$('.search_chk').removeClass('search_check');
		var id = $(this).id;
		var value = $(this).attr('data-value');
		$(this).addClass('search_check');
		
		$('#projSort').val(value);
		
		$("#projSort").trigger("click");
		
	});
	
	$(document).on("click", ".projDetail", function(){
		
		var idx = $(this).data('index');
		var projId = $("#projId"+idx).val();
		console.log(projId);
		console.log(idx);
		window.location.href = ROOT_URL+"/project/detail?projId="+projId;
	});
	
	// 검색
	$(document).on("submit", "#search_frm", function(e){
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
		$(".countAllbox").remove();
		$(".content").remove();
		$(".count-hr").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var projSort;
		var projNation = [];
		var projIndus = [];
		var projPrice = [];
		var projMargin = [];
		var projSupplyType = [];
		var ppmemRname;
		var ppBizCerti;
		var projProdCerti;
		var projProfit;
		var sellermemRname;
		var sellerBizCerti;
		var sellerChChk;
		var sellerSaleChk;
		var projChannel;
		
		
		var param_list_name = ['projSort', 'projNation', 'projIndus', 
			'projPrice', 'projMargin', 'projSupplyType', 'ppmemRname', 
			'ppBizCerti', 'projProdCerti', 'projProfit', 'sellermemRname', 
			'sellerBizCerti', 'sellerChChk', 'sellerSaleChk', 'projChannel'];
		
		var param_list = {
				projSort, projNation, projIndus, 
				projPrice, projMargin, projSupplyType, ppmemRname, 
				ppBizCerti, projProdCerti, projProfit, sellermemRname, 
				sellerBizCerti, sellerChChk, sellerSaleChk, projChannel
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
		param_list["keyword"] = keyword;
		var url = formData.attr('action');
		
		$.ajax({
           type: "GET",
           url: ROOT_URL+"/project/find2",
           data: param_list,
           success: function(json) {
        	   	var content = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(content);
           		
           		var page_content = json.pageData
           		console.log(page_content)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_content);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});	
	
	// 정렬 선택시
	$(document).on("click", ".sort", function(){
		var value = this.id;
		$("#sort").val(value);
		
		// 초기화
		$(".countAllbox").remove();
		$(".content").remove();
		$(".count-hr").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var projSort;
		var projNation = [];
		var projIndus = [];
		var projPrice = [];
		var projMargin = [];
		var projSupplyType = [];
		var ppmemRname;
		var ppBizCerti;
		var projProdCerti;
		var projProfit;
		var sellermemRname;
		var sellerBizCerti;
		var sellerChChk;
		var sellerSaleChk;
		var projChannel;
		
		var param_list_name = ['projSort', 'projNation', 'projIndus', 
			'projPrice', 'projMargin', 'projSupplyType', 'ppmemRname', 
			'ppBizCerti', 'projProdCerti', 'projProfit', 'sellermemRname', 
			'sellerBizCerti', 'sellerChChk', 'sellerSaleChk', 'projChannel'];
		
		var param_list = {
				projSort, projNation, projIndus, 
				projPrice, projMargin, projSupplyType, ppmemRname, 
				ppBizCerti, projProdCerti, projProfit, sellermemRname, 
				sellerBizCerti, sellerChChk, sellerSaleChk, projChannel
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
           url: ROOT_URL+"/project/find2",
           data: param_list,
           success: function(json) {
        	   	var content = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(content);
           		
           		var page_content = json.pageData
           		console.log(page_content)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_content);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});
	
	//체크박스 전체선택
	$(".checkAll").click(function(){
		$("#sort").val();
		// 초기화
		$(".countAllbox").remove();
		$(".content").remove();
		$(".count-hr").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var projSort;
		var projNation = [];
		var projIndus = [];
		var projPrice = [];
		var projMargin = [];
		var projSupplyType = [];
		var ppmemRname;
		var ppBizCerti;
		var projProdCerti;
		var projProfit;
		var sellermemRname;
		var sellerBizCerti;
		var sellerChChk;
		var sellerSaleChk;
		var projChannel;
		
		var param_list_name = ['projSort', 'projNation', 'projIndus', 
			'projPrice', 'projMargin', 'projSupplyType', 'ppmemRname', 
			'ppBizCerti', 'projProdCerti', 'projProfit', 'sellermemRname', 
			'sellerBizCerti', 'sellerChChk', 'sellerSaleChk', 'projChannel'];
		
		var param_list = {
				projSort, projNation, projIndus, 
				projPrice, projMargin, projSupplyType, ppmemRname, 
				ppBizCerti, projProdCerti, projProfit, sellermemRname, 
				sellerBizCerti, sellerChChk, sellerSaleChk, projChannel
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
           url: ROOT_URL+"/project/find2",
           data: param_list,
           success: function(json) {
        	   	var content = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(content);
           		
           		var page_content = json.pageData
           		console.log(page_content)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_content);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});
	
	
	// 체크박스 선택 검색
	$(".check").click(function(){
		// 초기화
		$(".countAllbox").remove();
		$(".content").remove();
		$(".count-hr").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var projSort;
		var projNation = [];
		var projIndus = [];
		var projPrice = [];
		var projMargin = [];
		var projSupplyType = [];
		var ppmemRname;
		var ppBizCerti;
		var projProdCerti;
		var projProfit;
		var sellermemRname;
		var sellerBizCerti;
		var sellerChChk;
		var sellerSaleChk;
		var projChannel;
		
		
		var param_list_name = ['projSort', 'projNation', 'projIndus', 
			'projPrice', 'projMargin', 'projSupplyType', 'ppmemRname', 
			'ppBizCerti', 'projProdCerti', 'projProfit', 'sellermemRname', 
			'sellerBizCerti', 'sellerChChk', 'sellerSaleChk', 'projChannel'];
		
		var param_list = {
				projSort, projNation, projIndus, 
				projPrice, projMargin, projSupplyType, ppmemRname, 
				ppBizCerti, projProdCerti, projProfit, sellermemRname, 
				sellerBizCerti, sellerChChk, sellerSaleChk, projChannel
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
           url: ROOT_URL+"/project/find2",
           data: param_list,
           success: function(json) {
        	   console.log(json);
        	   	var content = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(content);
           		
           		var page_content = json.pageData
           		console.log(page_content)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_content);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});
	
	// 페이지 이동
	$(document).on("click", ".pageMove", function(){
		var keyword = $("input[name=keyword]").val();
		 
		// 초기화
		$(".countAllbox").remove();
		$(".content").remove();
		$(".count-hr").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var projSort;
		var projNation = [];
		var projIndus = [];
		var projPrice = [];
		var projMargin = [];
		var projSupplyType = [];
		var ppmemRname;
		var ppBizCerti;
		var projProdCerti;
		var projProfit;
		var sellermemRname;
		var sellerBizCerti;
		var sellerChChk;
		var sellerSaleChk;
		var projChannel;
		
		var param_list_name = ['projSort', 'projNation', 'projIndus', 
			'projPrice', 'projMargin', 'projSupplyType', 'ppmemRname', 
			'ppBizCerti', 'projProdCerti', 'projProfit', 'sellermemRname', 
			'sellerBizCerti', 'sellerChChk', 'sellerSaleChk', 'projChannel'];
		
		var param_list = {
				projSort, projNation, projIndus, 
				projPrice, projMargin, projSupplyType, ppmemRname, 
				ppBizCerti, projProdCerti, projProfit, sellermemRname, 
				sellerBizCerti, sellerChChk, sellerSaleChk, projChannel
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
		$.ajax({
           type: "GET",
           url: ROOT_URL+"/project/find2",
           data: param_list,
           success: function(json) {
        	   	var content = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(content);
           		
           		var page_content = json.pageData
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_content);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});
});
</script>    
    </body>
</html>
