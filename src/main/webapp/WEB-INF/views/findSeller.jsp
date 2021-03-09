<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  font-size: 25px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
}
.searchBox{
	width: 100%;
	height: 30px;
}
.search-letfBox{
	float: left;
    height: 30px;
    padding-top: 10px;
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
.left-container.fix{
	position: absolute;
}
.left-container{
    position: fixed;
    width: 260px;
    height: 500px;
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
.seller-intro{
  height: 55px;
  margin: 9px 0 22px 0;
  object-fit: contain;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
  /* 말줄임 표시 */
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical; 
}
.seller-intro a.s-link:hover{
	font-weight: 800;
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
  margin-bottom: 10px;
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
	font-size: 15px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: left;
	color: #343434;
    border-bottom: solid 1px #cccccc;
    padding: 7px 0 8px 0;
}
.infoBox2 span:nth-child(2){
	float: right;
}
.infoBox3{
	width: 260px;
    height: 84px;
    padding: 19px 30px 18px;
    border-radius: 5px;
    border: solid 1px #cccccc;
    text-align: left;
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
	margin-bottom: 11px;
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
a.s-link{
	color: #000 !important;
}
.seller-status{
	display: inline-block;
	width: 60px;
	padding: 5px 0;
	border-radius: 5px;
	background-color: #0800ff;
	font-size: 15px;
	font-weight: 800;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
	vertical-align: top;
}
.seller-auth{
  display: inline-block;
  width: 60px;
  padding: 5px 0;
  border-radius: 5px;
  background-color: #44ab00;
  font-size: 15px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
  vertical-align: top;
}
.profileBizSort{
	display: inline-block;
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: left;
	color: #343434;
	vertical-align: -webkit-baseline-middle;
	margin-left: 10px;
}
.left-infoBox2{
	width: 110%;
}
.tagBox{
  display: inline-block;
  height: 30px;
  margin-right: 10px;
  padding: 6px 10px 7px 10px;
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
	margin-top: 3px;
}
.b-172{
	bottom: 172;
}
.auth-container{
	display: inline-block;
	margin-left: 10px;
}
.authBox{
  display: inline-block;
  font-family: NanumGothic;
  font-size: 15px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #343434;
  vertical-align: -webkit-baseline-middle;
}
.authImg{
	margin-top: -3px;
}
.photoBox{
	width: 140px;
    height: 140px;
    margin: 0 30px 11px 0;
    object-fit: contain;
    border-radius: 70%;
}
#list-container{
	min-height: 1000px;
}
.check_list_box{
	margin-bottom: 16px;
	cursor: pointer;
}
div.partner_list > div:nth-child(2){
	margin-right: 29px;
}
div.partner_list > div:nth-child(1) > ul, div.partner_list > div:nth-child(2) > ul{
	display: block;
}
.emptyResult{
	text-align: center;
    height: 500px;
    padding: 240px;
    font-size: 24px;
}
a.sort:last-child{
	margin-right: 0;
}
.photo-container{
	float: left;
}
.star-score{
	text-align: center;
	width: 140px;
}
.nick{
  font-size: 15px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #343434;
}
/*--------------------------------------*/
</style>
<div class="partner_bnr">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="titleBox">판매자 찾기</div>
			<div class="searchBox clearfix">
				<div class="search-letfBox">
					원하는 판매자를 찾아 지원하기 요청을 할 수 있습니다.
				</div>
				<div class="search-rightBox">
					<form id="search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/project/find">
				        <div class="input_group">
				            <input class="input-text" type="text" name="keyword" placeholder="원하는 키워드로 검색해보세요">
				        </div>
				        <button type="submit" class="search-btn">검색</button>
				        <input type="hidden" value="regSort" id="sort" name="sort">
				    </form>
				</div>
			</div>
			<hr>
		</div>
		<div id="list-container">
			<div class="left-container">
				<div class="textBox1">
					판매자 조건 설정
				</div>
				<div class="partner_list">
					<div>
						<span>판매자유형</span>
		            	<ul>
							<li><input type="checkbox" class="checkAll" id="profileBizSort"><label for="profileBizSort"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="1" id="b1"><label for="b1"><span>법인사업자</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="2" id="b2"><label for="b2"><span>개인사업자</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="3" id="b3"><label for="b3"><span>간이과세자</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="4" id="b4"><label for="b4"><span>개인(사업자없음)</span></label></li>
		            	</ul>
					</div>
					<div class="check_list_box">
						<span>판매자검증</span>
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="sellermemRname"><label for="sellermemRname"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellermemRname" value="1" id="sp1"><label for="sp1"><span>신원인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerBizCerti" value="1" id="sp2"><label for="sp2"><span>사업자인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerChChk" value="1" id="sp3"><label for="sp3"><span>채널검증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerSaleChk" value="1" id="sp4"><label for="sp4"><span>매출검증</span></label></li>
		            	</ul>
	            	</div>
	            	<div class="check_list_box">
	            		<span class="check_list">판매채널</span>
	            		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="profileChannel"><label for="profileChannel"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="1" id="c1"><label for="c1"><span>오픈마켓</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="2" id="c2"><label for="c2"><span>종합몰</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="3" id="c3"><label for="c3"><span>폐쇄몰</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="4" id="c4"><label for="c4"><span>커뮤니티</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="5" id="c5"><label for="c5"><span>SNS</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="6" id="c6"><label for="c6"><span>오프라인</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileChannel" value="7" id="c7"><label for="c7"><span>해외</span></label></li>
		            	</ul>
	            	</div>
	            	<div class="check_list_box">
		            	<span class="check_list">판매상품</span>
		            	<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
		            	<ul>
		            		<li><input id="profileIndus" class="checkAll" type="checkbox"><label for="profileIndus"><span>전체</span></label></li>
		            		<c:forEach var="indusList" items="${indusList}" varStatus="status">
		            			<li><input type="checkbox" class="check" name="profileIndus" value="${indusList.indusId}" id="i${status.count}"><label for="i${status.count}"><span>${indusList.indusName}</span></label></li>
		            		</c:forEach>
		            	</ul>
	            	</div>
	            	<div class="check_list_box">
	            		<span class="check_list">매출규모</span>
	            		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="projPrice"><label for="projPrice"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="9999" id="p1"><label for="p1"><span>1만원 미만</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="19999" id="p2"><label for="p2"><span>2만원 미만</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="49999" id="p3"><label for="p3"><span>5만원 미만</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="99999" id="p4"><label for="p4"><span>10만원 미만</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="100000" id="p5"><label for="p5"><span>10만원 이상</span></label></li>
		            	</ul>
	            	</div>
	            	<div class="check_list_box">
	            		<span class="check_list">판매경력</span>
	            		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll"  id="projMargin"><label for="projMargin"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="10" id="m1"><label for="m1"><span>10%이하</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="20" id="m2"><label for="m2"><span>11%~20%</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="30" id="m3"><label for="m3"><span>21%~30%</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="31" id="m4"><label for="m4"><span>30%초과</span></label></li>
		            	</ul>
	            	</div>
	            	<div class="check_list_box">
	            		<span class="check_list">판매자특징</span>
	            		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="projSupplyType"><label for="projSupplyType"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="1" id="s1"><label for="s1"><span>OEM</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="2" id="s2"><label for="s2"><span>위탁판매</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="3" id="s3"><label for="s3"><span>도매공급</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="4" id="s4"><label for="s4"><span>운영대행</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="5" id="s5"><label for="s5"><span>경매공급</span></label></li>
		            	</ul>
	            	</div>
					<div class="check_list_box">
						<span class="check_list">판매자지역</span>
						<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
			           	<ul>
			           		<li><input type="checkbox" class="checkAll" id="profileNation"><label for="profileNation"><span>전체</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="02" id="n1"><label for="n1"><span>서울</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="031" id="n2"><label for="n2"><span>경기</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="032" id="n3"><label for="n3"><span>인천</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="033" id="n4"><label for="n4"><span>강원</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="041" id="n5"><label for="n5"><span>충남</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="042" id="n6"><label for="n6"><span>대전</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="043" id="n7"><label for="n7"><span>충북</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="051" id="n8"><label for="n8"><span>부산</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="052" id="n9"><label for="n9"><span>울산</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="053" id="n10"><label for="n10"><span>대구</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="054" id="n11"><label for="n11"><span>경북</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="055" id="n12"><label for="n12"><span>경남</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="061" id="n13"><label for="n13"><span>전남</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="062" id="n14"><label for="n14"><span>광주</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="063" id="n15"><label for="n15"><span>전북</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="044" id="n16"><label for="n16"><span>세종특별자치시</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="064" id="n17"><label for="n17"><span>세종특별자치도</span></label></li>
			           	</ul>
					</div>
	            </div>
        	</div>
        	<div class="contents-container">
        		<div class="contentsBox">
      					<div class="countAllbox clearfix">
						<div class="leftBox countAll">총<span>${totalCount}건</span>이 검색되었습니다</div>
						<div class="rightBox">
							<a href="javascript:void(0)" class="sort select" id="regSort">등록순
								<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
							</a>
							<a href="javascript:void(0)" class="sort" id="endSort">매출순
								<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
							</a>
							<a href="javascript:void(0)" class="sort" id="applySort">요청받은순
								<img alt="" src="${pageContext.request.contextPath}/local_assets/img/sort-bottom.png">
							</a>
						</div>
					</div>
        		</div>
        		<c:forEach var="output" items="${output}" varStatus="status">
        		<div class="contents clearfix">
					<div class="clearfix">
						<input type="hidden" id="profileId${status.index}" value="${output.profileId}">
						<div class="leftBox">
							<div class="photo-container">
								<img class="photoBox" alt="" src="${pageContext.request.contextPath}/local_assets/img/pruduct.png">
								<div class="star-score">
									<div class="nick">
										닉네임자리입니다
									</div>
									<div>
										★★★★★
									</div>
								</div>
							</div>
							<div class="left-infoBox">
								<div class="seller-status">활동 중</div>
								<div class="profileBizSort">${output.profileBizSortName}</div>
							</div>
							<div class="left-infoBox">
								<div class="seller-auth">검 증</div>
								<div class="auth-container">
								<c:if test="${output.memRname == 1}">
									<div class="authBox">신원인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/v-button.png">
									</div>
								</c:if>
								<c:if test="${output.memRname == 0}">
									<div class="authBox">신원인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/x-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileBizCerti == 1}">
									<div class="authBox">사업자인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/v-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileBizCerti == 0}">
									<div class="authBox">사업자인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/x-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileChChk == 1}">
									<div class="authBox">채널검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/v-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileChChk == 0}">
									<div class="authBox">채널검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/x-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileSaleChk == 1}">
									<div class="authBox">매출검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/v-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileSaleChk == 0}">
									<div class="authBox">매출검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/local_assets/img/x-button.png">
									</div>
								</c:if>									
								</div>
							</div>
							<div class="seller-intro">
								<a class="s-link" href="javascript:void(0);" id="profileMemId${status.index}" data-value="${output.profileMemId}" data-index="${status.index}">${output.profileIntro}</a>
							</div>
							<div class="left-infoBox">
								<c:forEach var="hashtag" items="${output.profileHashtagList}">
									<c:if test="${hashtag == null}">
										<div class="tagBox"></div>
									</c:if>
									<c:if test="${hashtag != null}">
										<div class="tagBox">${hashtag}</div>
									</c:if>
					           	</c:forEach>
							</div>
						</div>
						<div class="rightBox">
							<div class="infoBox2"><span>계약 프로젝트</span><span>${output.contractCount}건</span></div>
							<div class="infoBox2"><span>등록 프로젝트</span><span>${output.projAddCount}건</span></div>
							<div class="infoBox2"><span>요청 받은 수</span><span>${output.recommendCount}건</span></div>
							<div class="infoBox2">
								<span>판매채널</span>
								<span>
								<c:forEach var="profileChannel" items="${output.profileChannelList}" varStatus="status2">
			        					<c:if test="${status2.first}">
			        						${profileChannel} 외
			        					</c:if>
			        					<c:if test="${status2.last}">
			        						${status2.count-1}채널
			        					</c:if>
			        			</c:forEach>
								</span>
							</div>
							<div class="infoBox2">
								<span>매출규모</span>
								<span>
									<fmt:formatNumber value="${output.profileVolume}" type="number"/>원
								</span>
							</div>
							<div class="infoBox2"><span>판매경력</span><span>${output.profileCareerName}</span></div>
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
						                <li><a class="pageSelect"><strong>${i}</strong></a></li>
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
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
Handlebars.registerHelper('creatPage', function (startPage, endPage, nowPage) {
	var tag = '';
	for (var i = startPage; i < endPage+1; i++) {
	    if (nowPage == i) {
	    	tag += '<li><a href="javascript:void(0)" class="pageMove pageSelect" value='+i+'><strong>'+i+'</strong></a></li>'
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
		<div class="container2 countAllbox content">
			<div class="leftBox countAll">전체 <span>{{totalCount}}</span><span>건</span>이 검색되었습니다</div>
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
					<div class="leftBox2">
						<img class="photoBox" alt="" src="${pageContext.request.contextPath}/local_assets/img/profile.png">
					</div>
					<div class="row1 leftBox">
						<div class="row2 leftBox">
							<div class="nick">{{memNick}}</div>
							{{#each profileHashtagList as |value key|}}
		        				<div class="purpleBox"># {{value}}</div>
		        			{{/each}}
						</div>
					</div>
					<div class="row1 leftBox">
						<div class="row2 leftBox">
							<div class="intro">
								{{profileIntro}}
							</div>
						</div>
					</div>
					<div class="row1 leftBox">
						<div class="row2 leftBox">
							<span class="textBox5">{{profileIndusName}}</span>
							<span class="textBox5">{{profileNationName}}지역</span>
							<span class="textBox5">{{profileBizSortName}}</span>
							<span class="textBox5">
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
					<div class="row1 leftBox">
						<div class="leftBox">
							<div class="sellerInfo">
								계약<span>{{contractCount}}건</span>
								등록프로젝트<span>{{projAddCount}}건</span>
								요청수<span>{{recommendCount}}건</span>
								매출<span>{{profileVolume}}원</span>
								경력<span style="margin-right: 0;">{{profileCareerName}}</span>
							</div>
						</div>
					</div>
					<div class="btnBox">
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/person.png">
							판매자 상세정보
						</button>
						<button class="scrap">
						<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
							관심등록
						</button>
						<button class="match" id="profileMemId{{@key}}" data-value="{{profileMemId}}" data-index="{{@key}}">
						<img class="matchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
							지원요청
						</button>
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
	
	$(document).on("click", ".s-link", function(){
		
		var idx = $(this).data('index');
		var profileMemId = $("#profileMemId"+idx).attr('data-value');
		window.location.href = ROOT_URL+"/seller/detail?profileMemId="+profileMemId;
	});	
	
	$(document).on("click", ".check_list_box", function(){
		var checkList = $(this).closest("div").children('ul');
		checkList.toggle();
	});


  	$(window).on('scroll', function() {
  		var footerHei = $('footer').outerHeight()
		var sT = $(window).scrollTop();
	    var val = $(document).height() - $(window).height() - footerHei;
	    
	    console.log(sT+'st');
	    console.log(val+'val');

	    if (sT >= val){
	    	$('.left-container').addClass('fix');
	    	$('.b-172').css({"bottom": -1*parseInt(sT- footerHei)});
	    } else if(window.pageYOffset >= $('.partner_bnr3 > hr').offset().top){
	    	$('.left-container').addClass('b-172');
	    	$('.left-container').removeClass('fix');
	    	$('.left-container').removeAttr('style');
	    }
	    else{
	    	$('.left-container').removeClass('fix');
	    	$('.left-container').addClass('b-172');
	    	$('.left-container').removeAttr('style');
    	}
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
		$(".count-hr").remove();
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
	       		
	       		$(".profile-box").append(html);
	       		$(".profile-box").append(page_html);
	       		
	       }
		});
	});
	
	// 정렬 선택시
	$(document).on("click", ".sort", function(){
		var value = this.id;
		$("#sort").val(value);
		
		// 초기화
		$(".count-hr").remove();
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
	       		
	       		$(".profile-box").append(html);
	       		$(".profile-box").append(page_html);
	       		
	       }
		});
	});
	
	//체크박스 전체선택
	$(".checkAll").click(function(){
		$("#sort").val();
		// 초기화
		var str = ''
		$(".count-hr").remove();
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
				
				var textVal = $(this).next().children().text();
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
					}
				}
				str = str + textVal + ', ';
				
			});

			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		
		str = str.substring(0, str.length-2);
		$('.resultText').text(str)
		if (str == '') {
			$('.resultText').text('선택이 없을시에는 전체를 기준으로 리스트가 보여집니다')
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
	       		
	       		$(".profile-box").append(html);
	       		$(".profile-box").append(page_html);
	       		
	       }
		});
	});
	
	
	// 체크박스 선택 검색
	$(".check").click(function(){
		// 초기화
		var str = ''
		$(".count-hr").remove();
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
				
				var textVal = $(this).next().children().text();
				
				for (var i = 0; i < param_list_name.length; i++){
					if (String(param_list_name[i]) == name) {
						param_list[name].push(value)
					}
					
				}
				str = str + textVal + ', ';
			});
			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		str = str.substring(0, str.length-2);
		$('.resultText').text(str)
		if (str == '') {
			$('.resultText').text('선택이 없을시에는 전체를 기준으로 리스트가 보여집니다')
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
	       		
	       		$(".profile-box").append(html);
	       		$(".profile-box").append(page_html);
	       		
	       }
		});
	});
	
	// 페이지 이동
	$(document).on("click", ".pageMove", function(){
		var keyword = $("input[name=keyword]").val();
		 
		// 초기화
		$(".count-hr").remove();
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
	       		
	       		$(".profile-box").append(html);
	       		$(".profile-box").append(page_html);
	       }
		});
	});
});
</script>    
    </body>
</html>
