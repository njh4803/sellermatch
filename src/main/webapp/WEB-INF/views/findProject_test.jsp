<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="inc/header.jsp"%>
<style>
/* 스크롤바 디자인 */
.left-container::-webkit-scrollbar {
  width: 4px;
  height: 10px;
  background: #ffffff;
}
.left-container::-webkit-scrollbar-thumb { 
  border-radius: 3.5px;
  background-color: #D9D9D9;

  .left-container:hover {
    background-color: #adb5bd;
  }
}
.left-container::-webkit-scrollbar-track {
  background: #ffffff;
}
.titleBox{
  width: 100%;
  font-size: 30px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
  margin-bottom: 2px;
}
.searchBox{
	width: 100%;
	height: 30px;
}
.search-letfBox{
	float: left;
    height: 30px;
    padding-top: 13px;
}
.search-rightBox{
	float: right;
	height: 30px;
}
.search-btn{
  width: 60px;
  height: 30px;
  margin-left: 10px;
  padding: 6px 0 7px;
  border-radius: 4px;
  box-shadow: 5px 5px 10px 0 rgba(0, 0, 0, 0.16);
  background-image: linear-gradient(117deg, #ff8000, #ff540f);
  font-size: 15px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff; 
}
.input_group{
	display: inline-block;
    width: 300px;
    padding: 4px 15px 4px 15px;
    border-radius: 5px;
    box-shadow: 5px 5px 10px 0 rgb(0 0 0 / 16%);
    border: solid 1px #cccccc;
    background-color: #ffffff;
    text-align: left;
}
.search-rightBox .input-text{
	width: 100%;
	font-size: 15px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: left;
	color: #000000;
}
.partner_bnr3 hr{
  width: 100%;
  height: 0;
  margin: 15px 0;
  border: solid 2px #343434;
}
.left-container{
    position: fixed;
    width: 260px;
    height: 600px;
    margin-right: 20px;
    padding: 20px 0;
    border-radius: 10px;
    border: solid 1px #cccccc;
    background-color: #ffffff;
    overflow-x: hidden;
    overflow-y: auto;
}
.textBox1{
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
  margin-bottom: 20px;
}
.contents-container{
	width: 100%;
    min-height: 1000px;
    padding-left: 280px;
}
.contentsBox{
	width: 100%;
}
.countAll{
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
}
.countAll span{
  color: #ff540f;
  font-weight: 800;
}
.leftBox{
	float: left;
}
.rightBox{
	float: right;
}
a.sort{
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  color: #000000;
  margin-right: 20px;
}
a.sort.select{
	font-weight: bold;
}
.contents{
  width: 100%;
  height: 277px;
  margin: 9px 0 5px 0;
  padding: 30px;
  border-radius: 10px;
  border: solid 1px #cccccc;
  background-color: #ffffff;
}
.contents .leftBox{
    float: left;
    margin: 0;
    height: auto;
    width: 600px;
}
.contents .rightBox{
    float: right;
    margin: 0;
    height: auto;
    width: 260px;
    text-align: right;
}
.project-titleBox{
  height: 53px;
  object-fit: contain;
  font-family: NanumGothic;
  font-size: 20px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
  margin-bottom: 15px;
  /* 말줄임 표시 */
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical; 
}
.project-detailBox{
  height: 37px;
  object-fit: contain;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
  margin-bottom: 26px;
  /* 말줄임 표시 */
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical; 
}
.regDate{
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: right;
  color: #707070;
  margin-bottom: 35px;
}
.regDate span{
  font-size: 15px;
  font-weight: bold;
  color: #000000;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  margin-right: 10px;
}
.infoBox {
  display: inline-block;
  width: 125px;
  padding: 9px 0 9px 0;
  border-radius: 5px;
  border: solid 1px #cccccc;
  text-align: center;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
}
.infoBox:first-child{
    margin-right: 5px;
}
.infoBox span{
  margin-right: 12px;
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
}
.infoBox2{
  width: 100%;
  margin: 5px 0;
  padding: 8px 10px 9px 10px;
  border-radius: 5px;
  border: solid 1px #cccccc;
  text-align: center;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;  
}
.infoBox2 span{
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
  margin-left: 10px;
}
.infoBox3{
  width: 260px;
  height: 70px;
  border-radius: 5px;
  border: solid 1px #cccccc;
}
.sFindBox{
  display: inline-block;
  width: 90px;
  padding: 3px 0 4px;
  border-radius: 5px;
  background-color: #8000c9;
  font-size: 15px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
  vertical-align: top;
  line-height: normal !important;  
}
.pFindBox{
  display: inline-block;
  padding: 3px 0 4px;
  width: 90px;
  border-radius: 5px;
  background-color: #eb00bc;
  font-size: 15px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
  vertical-align: top;
  line-height: normal !important;
}
.left-infoBox{
	margin-bottom: 30px;
}
.areaBox{
  display: inline-block;
  width: 90px;
  height: 26px;
  padding: 4px 0 5px;
  border-radius: 5px;
  border: solid 0.5px #ff0000;
  background-color: #ffffff;
}
a.proj-link{
	color: #000 !important;
}
.D-day{
	display: inline-block;
	width: 90px;
	margin-right: 10px;
	padding: 2px 0 1px;
	border-radius: 5px;
	border: solid 0.5px #ff0000;
	background-color: #ffffff;
	font-size: 15px;
	font-weight: 800;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ff0000;
	vertical-align: top;
}
.left-infoBox2{
}
.tagBox{
  display: inline-block;
  width: 90px;
  height: 30px;
  margin-right: 10px;
  padding: 6px 0 7px;
  border-radius: 5px;
  background-color: #eeeeee;
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
}
.partner_list{
	display: inline-block;
    width: 100%;
    padding: 0 25px;
}
.partner_list span{
  font-size: 15px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
}
.partner_list ul{
	display: none;
	margin-bottom: 30px;
}
.partner_list ul li{
	height: 10px;
	margin-top: 10px;
}
/*--------------------------------------*/
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
.row1.leftBox{
}
.row1 .leftBox{
	float: left;
	margin: 0;
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

a:focus, a:hover{
	text-decoration: none;
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
</style>
<div class="partner_bnr">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="titleBox">거래처 찾기</div>
			<div class="searchBox clearfix">
				<div class="search-letfBox">
					조건에 맞는 공급자와 판매자를 찾고 거래 신청할 수 있습니다.
				</div>
				<div class="search-rightBox">
					<form id="search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/project/find">
				        <div class="input_group">
				            <input class="input-text" type="text" name="keyword" placeholder="원하는 키워드로 검색해보세요">
				        </div>
				        <button type="submit" class="search-btn">검색</button>
				        <input type="hidden" value="defaultSort" id="sort" name="sort">
				    </form>
				</div>
			</div>
			<hr>
		</div>
		<div>
			<div class="left-container">
				<div class="textBox1">
					거래처 찾기 설정
				</div>
				<div class="partner_list">
					<div>
						<span class="check_list">등록지역</span>
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
		            <div>
		            	<span class="check_list">상품분류</span>
		            	<ul>
		            		<li><input id="projIndus" class="checkAll" type="checkbox"><label for="projIndus"><span>전체</span></label></li>
		            		<c:forEach var="indusList" items="${indusList}" varStatus="status">
		            			<li><input type="checkbox" class="check" name="projIndus" value="${indusList.indusId}" id="i${status.count}"><label for="i${status.count}"><span>${indusList.indusName}</span></label></li>
		            		</c:forEach>
		            	</ul>
	            	</div>
	            </div>
        	</div>
        	<div class="contents-container">
        		<div class="contentsBox">
      					<div class="countAllbox clearfix">
						<div class="leftBox countAll">전체 <span>${projCount}</span><span>건</span>이 검색되었습니다</div>
						<div class="rightBox">
							<a href="javascript:void(0)" class="sort select" id="regSort">등록순
								<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
							</a>
							<a href="javascript:void(0)" class="sort" id="endSort">마감순
								<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
							</a>
							<a href="javascript:void(0)" class="sort" id="applySort">지원자순
								<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
							</a>
						</div>
					</div>
        		</div>
        		<c:forEach var="output" items="${output}" varStatus="status">
        		<div class="contents clearfix">
					<div class="clearfix">
						<input type="hidden" id="projId${status.index}" value="${output.projId}">
						<div class="leftBox">
							<div class="left-infoBox">
								<c:choose>
									<c:when test="${output.projDday < 0}">
										<div class="D-day">마감완료</div>
									</c:when>
									<c:otherwise>
										<div class="D-day">마감 ${output.projDday}일전</div>
									</c:otherwise>
								</c:choose>
								<c:if test="${output.projSort == 1}">
					        		<div class="sFindBox">판매자 찾음</div>
					        	</c:if>
					        	<c:if test="${output.projSort == 2}">
					        		<div class="pFindBox">공급자 찾음</div>
					        	</c:if>
					        	<div class="areaBox">${output.projNationName}지역</div>
							</div>
							<div class="project-titleBox">
								<a class="proj-link" href="javascript:void(0);">${output.projTitle}</a>
							</div>
							<div class="project-detailBox">
								<a class="proj-link" href="javascript:void(0);">${output.projDetail}</a>
							</div>	
							<div class="left-infoBox2">
								<c:if test="${output.profileBizCerti == 1}">
									<div class="tagBox">사업자인증</div>
								</c:if>
								<c:if test="${output.memRname == 1}">
									<div class="tagBox">신원인증</div>
								</c:if>
								<c:if test="${output.projProfit == 1}">
									<div class="tagBox">수익성검증</div>
								</c:if>
								<c:if test="${output.projProdCerti == 1}">
									<div class="tagBox">상품검증</div>
								</c:if>
								<c:if test="${output.profileChChk == 1}">
									<div class="tagBox">채널검증</div>
								</c:if>
								<c:if test="${output.profileSaleChk == 1}">
									<div class="tagBox">매출검증</div>
								</c:if>
							</div>
						</div>								
						<div class="rightBox">
							<div class="regDate">
								<span>등록일</span>${output.projRegDate}
							</div>
							<div>
								<div class="infoBox">
									<span>모집수</span> ${output.projRecruitNum}명
								</div>
								<div class="infoBox">
									<span>지원수</span> ${output.applyCount}명
								</div>						
							</div>
							<c:if test="${output.projPrice != 0}">
								<div class="infoBox2"><span>단가 / 마진</span> ${output.projPrice}원 / ${output.projMarginName}</div>
							</c:if>
							<c:if test="${output.projPrice == 0}">
								<div class="infoBox2"><span>마진</span> ${output.projMarginName}</div>
							</c:if>
							<div class="infoBox3">
							
							</div>
						</div>
					</div>
        		</div>
        		</c:forEach>
				<c:if test="${output == ''}">
					<div class="emptyResult">검색결과가 없습니다.</div>
				</c:if>
				<div class="partner_bnr2 pageBox clearfix">
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
			<div class="container1 contents">
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
					<div class="row1 leftBox proj-link">
						<div class="titleBox">
							{{projTitle}}
						</div>
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
						<div class="infoBox" style="margin-right: 7px;">
							모집수 <span>{{projRecruitNum}}명 </span>
						</div>
						<div class="infoBox">
							 지원수 <span>{{applyCount}}명 </span>
						</div>
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
							관심등록
						</button>
						<button class="match" data-index="{{@key}}">
						<img class="matchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
							지원하기
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

	$(document).on("click", ".check_list", function(){
		var checkList = $(this).closest("div").children('ul');
		checkList.toggle();
	});
	
	$(document).on("click", ".search_chk", function(){
		$('.search_chk').removeClass('search_check');
		var id = $(this).id;
		var value = $(this).attr('data-value');
		$(this).addClass('search_check');
		
		$('#projSort').val(value);
		
		$("#projSort").trigger("click");
		
	});
	
	$(document).on("click", ".match", function(){
		
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
		$(".contents").remove();
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
        	   	var contents = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(contents);
           		
           		var page_contents = json.pageData
           		console.log(page_contents)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_contents);
           		
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
		$(".contents").remove();
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
        	   	var contents = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(contents);
           		
           		var page_contents = json.pageData
           		console.log(page_contents)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_contents);
           		
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
		$(".contents").remove();
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
        	   	var contents = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(contents);
           		
           		var page_contents = json.pageData
           		console.log(page_contents)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_contents);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});
	
	
	// 체크박스 선택 검색
	$(".check").click(function(){
		// 초기화
		$(".countAllbox").remove();
		$(".contents").remove();
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
        	   	var contents = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(contents);
           		
           		var page_contents = json.pageData
           		console.log(page_contents)
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_contents);
           		
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
		$(".contents").remove();
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
        	   	var contents = json
           		var template = Handlebars.compile($("#project-list-tmpl").html());
           		var html = template(contents);
           		
           		var page_contents = json.pageData
           		var page_template = Handlebars.compile($("#page-tmpl").html());
           		var page_html = page_template(page_contents);
           		
           		$("#premium").after(html);
           		$("footer").before(page_html);
           }
    	});
	});
});
</script>    
    </body>
</html>
