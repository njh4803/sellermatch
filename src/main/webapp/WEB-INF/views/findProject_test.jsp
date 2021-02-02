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
    padding-top: 180px;
    padding-bottom: 100px;
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
	height: 150px;
}
.chk_listBox{
	display: inline-block;
	overflow-x:hidden;
	overflow-y:auto;
	width:12.66%;
	height:200px;
	border: 1px solid #e3e3e3;
	text-align: left;
	margin-right: -5px;
}
.container1{
	border: 2px solid #e3e3e3;
	height: 400px;
}
.container2{
	height: 50px;
}
.container1 .container2{
	margin: 0;
    width: 100%;
    height: 100%;
    float: left;
    padding: 10px 20px;
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
.row2{
	height: 25px;
	margin-left: 0;
	margin-right: 0;
}
.height-500{
	height: 500px;
	margin: 0;
}
.leftBox{
	float: left;
	margin: 10px 15px;
}
.rightBox{
	float: right;
	margin: 10px 0;
}
.rightBox a{
	margin: 0 15px;
	font-weight: 0;
	text-decoration: none;
	color: #000;
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
	background-color: #E62267;
	color: white;
	width: 100px;
	height: 40px;
}
.s-findBtn{
	background-color: #57207C;
	color: white;
	width: 100px;
	height: 40px;
}
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
	padding: 13px 13px;
	margin-right: 10px;
}
.grayBox{
	background-color: #e3e3e3;
	color: black;
	display: inline-block;
	border-radius: 1px;
	padding: 13px 13px;
	margin-right: 10px;
}
.pFindBox{
	background-color: #E62267;
	color: white;
	display: inline-block;
	border-radius: 1px;
	padding: 13px 13px;
	margin-right: 10px;
	
}
.sFindBox{
	background-color: #57207C;
	color: white;
	display: inline-block;
	border-radius: 1px;
	padding: 13px 13px;
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
.countBox {
	border: 2px solid #e3e3e3;
    display: inline-block;
    color: #ccc;
    border-radius: 10px;
    padding: 10px;
    font-size: 15px;
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
</style>
<div class="partner_bnr">
	<div class="partner_bnr2">
		<div class="search_bnr">
		    <div class="search_wrap">
		        <form id="search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/project/find">
			        <div class="input_group">
			            <input type="text" name="keyword" placeholder="매치 할 프로젝트를 입력하세요.">
			            <button type="submit" class="btn_search">
			                <i class="fas fa-bolt"> 검색</i>   
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
		            <div class="search_chk"><input type="checkbox" class="check" name="projSort" value="2" >판매자검색</div>
		            <div class="search_chk"><input type="checkbox" class="check" name="projSort" value="1" >공급자검색</div>
		        </div>
		    </div>
		</div>
		<div class="partner_bnr2">
		    <div class="partner_wrap">
		        <div class="partner_list">
		            <div class="chk_list_container">
		            	<div class="chk_listBox basic-scroll">
		            		<span>지역구분</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projNation">전체</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="02">서울</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="031">경기</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="032">인천</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="033">강원</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="041">충남</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="042">대전</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="043">충북</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="051">부산</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="052">울산</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="053">대구</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="054">경북</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="055">경남</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="061">전남</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="062">광주</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="063">전북</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="044">세종특별자치시</li>
			            		<li><input type="checkbox" class="check" name="projNation" value="064">세종특별자치도</li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>상품분류</span>
			            	<ul>
			            		<li><input id="projIndus" class="checkAll" type="checkbox">전체</li>
			            		<c:forEach var="indusList" items="${indusList}">
			            			<li><input type="checkbox" class="check" name="projIndus" value="${indusList.indusId}">${indusList.indusName}</li>
			            		</c:forEach>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>상품단가</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projPrice">전체</li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="9999">1만원 미만</li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="19999">2만원 미만</li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="49999">5만원 미만</li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="99999">10만원 미만</li>
			            		<li><input type="checkbox" class="check" name="projPrice" value="100000">10만원 이상</li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>판매마진</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll"  id="projMargin">전체</li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="10">10%이하</li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="20">11%~20%</li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="30">21%~30%</li>
			            		<li><input type="checkbox" class="check"  name="projMargin" value="31">30%초과</li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>공급방법</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projSupplyType">전체</li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="1">OEM</li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="2">위탁판매</li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="3">도매공급</li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="4">운영대행</li>
			            		<li><input type="checkbox" class="check" name="projSupplyType" value="5">경매공급</li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>공급자검증</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="ppmemRname">전체</li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="ppmemRname" value="1">신원인증</li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="ppBizCerti" value="1">사업자인증</li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="projProdCerti" value="1">상품검증</li>
			            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="projProfit" value="1">수익성검증</li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>판매자검증</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="sellermemRname">전체</li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellermemRname" value="1">신원인증</li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerBizCerti" value="1">사업자인증</li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerChChk" value="1">채널검증</li>
			            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerSaleChk" value="1">매출검증</li>
			            	</ul>
		            	</div>
		            	<div class="chk_listBox"><span>판매채널</span>
			            	<ul>
			            		<li><input type="checkbox" class="checkAll" id="projChannel">전체</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="1">오픈마켓</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="2">종합몰</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="3">폐쇄몰</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="4">커뮤니티</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="5">SNS</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="6">오프라인</li>
			            		<li><input type="checkbox" class="check" name="projChannel" value="7">해외</li>
			            	</ul>
		            	</div>
		            </div>
		        </div>
		    </div>
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
					        <div class="row1">
					        	<c:if test="${output.projSort == 1}">
					        		<button class="p-findBtn">${output.projSortName} 찾기</button>
					        	</c:if>
					        	<c:if test="${output.projSort == 2}">
					        		<button class="s-findBtn">${output.projSortName} 찾기</button>
					        	</c:if>
					        </div>
					        <div class="row1">
					        	${output.projNationName}지역
					        </div>
					        <div class="row1">
					        	${output.projTitle}
					        </div>
					        <hr>
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
					      </div>
					    </div>
		        	</c:forEach>
				</div>
			  </div>	    
		      <!--post slider-->
		    </div>
		<div class="container2 content">
			<span class="leftBox">전체 ${projCount}건</span>
			<div class="rightBox">
				<a href="javascript:void(0)" class="sort" id="defaultSort">기본정렬 /</a>
				<a href="javascript:void(0)" class="sort" id="endSort">마감일순 /</a>
				<a href="javascript:void(0)" class="sort" id="regSort">최신등록순 /</a>
				<a href="javascript:void(0)" class="sort" id="applySort">참여자순 /</a>
				<a href="javascript:void(0)" class="sort" id="hitSort" style="margin-right: 0;">조회순</a>
			</div>
		</div>
		<c:forEach var="output" items="${output}" varStatus="status">
			<div class="container1 content">
				<div class="container2">
					<input type="hidden" id="projId${status.index}" value="${output.projId}">
					<div class="row1">
						<div class="leftBox">
							<c:choose>
								<c:when test="${output.projDday < 0}">
									<div class="blueBox">마감</div>
								</c:when>
								<c:otherwise>
									<div class="blueBox">마감 ${output.projDday}일전</div>
								</c:otherwise>
							</c:choose>
							<c:if test="${output.projSort == 1}">
				        		<button class="pFindBox">${output.projSortName} 찾기</button>
				        	</c:if>
				        	<c:if test="${output.projSort == 2}">
				        		<button class="sFindBox">${output.projSortName} 찾기</button>
				        	</c:if>
				        	<button class="grayBox">${output.projNationName}지역</button>
						</div>	
						<div class="rightBox">
							<span>• 등록일 : ${output.projRegDate}</span>
						</div>
					</div>
					<div class="row1 leftBox">
						<c:if test="${output.profileBizCerti == 1}">
							<div class="orangeBox">사업자인증</div>
						</c:if>
						<c:if test="${output.memRname == 1}">
							<div class="orangeBox">신원인증</div>
						</c:if>
						<c:if test="${output.projProfit == 1}">
							<div class="orangeBox">수익성검증</div>
						</c:if>
						<c:if test="${output.projProdCerti == 1}">
							<div class="orangeBox">상품검증</div>
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							<div class="orangeBox">채널검증</div>
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							<div class="orangeBox">매출검증</div>
						</c:if>
						<div class="countBox">
							<c:if test="${output.projPrice != 0}">
								단가/마진 : ${output.projPrice}원/${output.projMarginName}
							</c:if>
							<c:if test="${output.projPrice == 0}">
								마진 : ${output.projMarginName}
							</c:if>
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
					<div class="leftBox projDetail" data-index="${status.index}" style="width: 97%;">
						<div class="contentsBox">
							<a>${output.projDetail}</a>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row1 leftBox">
						<div class="leftBox">
							<c:forEach var="projKeywordList" items="${output.projKeywordList}">
			            		<div class="tagBox">#${projKeywordList}</div>
			            	</c:forEach>
						</div>
						<div class="rightBox margin-0">
							<div class="countBox">
								모집수 : ${output.projRecruitNum}명
							</div>
							<div class="countBox">
								 지원수 : ${output.applyCount}명
							</div>
						</div>
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
<div class="container2 content">
	<span class="leftBox">전체 {{projCount}}건</span>
	<div class="rightBox">
		<a href="javascript:void(0)" class="sort" id="defaultSort">기본정렬 /</a>
		<a href="javascript:void(0)" class="sort" id="endSort">마감일순 /</a>
		<a href="javascript:void(0)" class="sort" id="regSort">최신등록순 /</a>
		<a href="javascript:void(0)" class="sort" id="applySort">참여자순 /</a>
		<a href="javascript:void(0)" class="sort" id="hitSort" style="margin-right: 0;">조회순</a>
	</div>
</div>
{{#output}}
<div class="container1 content">
	<input type="hidden" id="projId{{@key}}" value="{{projId}}">
	<div class="container2">
		<div class="row1">
			<div class="leftBox">
				{{#ifCond projDday '<' 0}}
		            <div class="blueBox">마감</div>
		        {{else}}
		            <div class="blueBox">마감 {{projDday}}일전</div>
		        {{/ifCond}}
				{{#ifCond projSort '==' 1}}
					<button class="pFindBox">{{projSortName}} 찾기</button>
				{{/ifCond}}
				{{#ifCond projSort '==' 2}}
					<button class="sFindBox">{{projSortName}} 찾기</button>
				{{/ifCond}}
				<button class="grayBox">{{projNationName}}지역</button>				
			</div>	
			<div class="rightBox">
				<span>• 등록일 : {{projRegDate}}</span>
			</div>
		</div>
		<div class="row1 leftBox">
			{{#ifCond profileBizCerti '==' 1}}
				<div class="orangeBox">사업자인증</div>
			{{/ifCond}}
			{{#ifCond memRname '==' 1}}
				<div class="orangeBox">신원인증</div>
			{{/ifCond}}
			{{#ifCond projProfit '==' 1}}
				<div class="orangeBox">수익성검증</div>
			{{/ifCond}}
			{{#ifCond projProdCerti '==' 1}}
				<div class="orangeBox">상품검증</div>
			{{/ifCond}}
			{{#ifCond sprofileChChk '==' 1}}
				<div class="orangeBox">채널검증</div>
			{{/ifCond}}
			{{#ifCond sprofileSaleChk '==' 1}}
				<div class="orangeBox">매출검증</div>
			{{/ifCond}}
			<div class="countBox">
				{{#ifCond projPrice '!=' 0}}
					단가/마진 : {{projPrice}}원/{{projMarginName}}
				{{/ifCond}}
				{{#ifCond projPrice '==' 0}}
					마진 : {{projMarginName}}
				{{/ifCond}}
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row1 leftBox projDetail" data-index="{{@key}}">
			{{#ifCond projSort '==' 1}}
				<div class="titleBox"><a<span class="pp">공급자</span> | {{projTitle}}</a></div>
			{{/ifCond}}
			{{#ifCond projSort '==' 2}}
				<div class="titleBox"><a><span class="sp">판매자</span> | {{projTitle}}</a></div>
			{{/ifCond}}
		</div>
		<div class="clearfix"></div>
		<div class="leftBox projDetail" data-index="{{@key}}" style="width: 97%;">
			<div class="contentsBox">
				<a>{{projDetail}}</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row1 leftBox">
			<div class="tagContainer">
				{{#each projKeywordList as |value key|}}
					<div class="tagBox">&num;{{value}}</div>
				{{/each}}
			</div>
			<div class="rightBox margin-0">
				<div class="countBox">
					모집수 : {{projRecruitNum}}명
				</div>
				<div class="countBox">
					 지원수 : {{applyCount}}명
				</div>
			</div>
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
		$(".content").remove();
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
		$(".content").remove();
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
		$(".content").remove();
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
		$(".content").remove();
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
		$(".content").remove();
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
