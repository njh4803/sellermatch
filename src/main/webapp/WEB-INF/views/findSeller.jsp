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
.chk_listBox{
	overflow-x:hidden;
	overflow-y:auto;
	width:250px;
	text-align: left;
	margin-right: -5px;
	padding: 15px;
}
.chk_list_container{
	border: 1px solid #e3e3e3;
}
.chk_list_container > hr {
	border-top: 1px dashed #bbb;
	border-bottom: 1px dashed #fff;
	width: 220px;
	margin: 0;
}
.container1{
	border: 2px solid #e3e3e3;
	height: 400px;
}
.container2{
	margin: 0 240px;
	height: 50px;
}
.container1 .container2{
	margin: 0;
    width: 70%;
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
	margin: 15px 15px;
}
.rightBox{
	float: right;
	margin: 15px 15px;
}
.rightBox a{
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
.sellerInfoBox{
	border: 1px solid #000;
}
.searchBtn{
	/* background-image: url("../local_assets/img/검색아이콘.jpg");
	background-position: center;
	background-repeat: no-repeat;
	box-sizing: border-box;
	outline: none;
	position: absolute;
    width: 33px;
    height: 30px;
    margin: 7px; */
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
.sellerInfo{
	float: right;
    width: 768px;
}
.sellerInfo span{
	font-size: 10px;
	color: #aaa;
	margin: 20px;
}
.sellerInfo .leftBox span{
    font-size: 10px;
    color: black;
    margin: 10px 0;
}
.sellerInfo .leftBox .projInfo{
    color: #aaa;
}
.sellerInfo hr{
	margin: 6px;
}
.leftBox strong{
	font-size: 17px;
    font-weight: bolder;
}
.sellerInfo .leftBox .nick{
	font-size: 12px;
	color: black;
	margin: 20px;
}
.sellerInfo .leftBox .auth{
	font-size: 12px;
    color: #7fd7a7;
    margin: 5px;
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
</style>
<div class="partner_bnr">
    <div class="partner_wrap" style="text-align: left;">
        <div class="partner_list" style="display: inline-block;">
            <div class="chk_list_container">
            	<div class="chk_listBox">
            		<span>사업자구분</span>
	            	<ul class="biz-chk">
	            		<li><input type="checkbox" class="checkAll" id="">전체</li>
	            		<li><input type="checkbox" class="check" name="" value="01">법인사업자</li>
	            		<li><input type="checkbox" class="check" name="" value="02">개인사업자</li>
	            		<li><input type="checkbox" class="check" name="" value="03">간이과세자</li>
	            		<li><input type="checkbox" class="check" name="" value="04">개인(사업자없음)</li>
	            	</ul>
            	</div>
            	<hr>
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
            	<hr>
            	<div class="chk_listBox"><span>상품분류</span>
	            	<ul>
	            		<li><input id="projIndus" class="checkAll" type="checkbox">전체</li>
	            		<c:forEach var="indusList" items="${indusList}">
	            			<li><input type="checkbox" class="check" name="projIndus" value="${indusList.indusId}">${indusList.indusName}</li>
	            		</c:forEach>
	            	</ul>
            	</div>
            	<hr>
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
        <!-- 오른쪽 영역 -->
        <div class="right-box">
        	<div class="search-box">
        		<div>
        			<span>찾고 싶은 판매자 이름, 상품, 지역 등을 검색 하세요!</span>
        		</div>
        		<div>
        			<form id="search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/seller/find">
        				<button type="submit" class="searchBtn"></button>
        				<input class="search" type="search">
        			</form>
        		</div>
        	</div>
        	<div class="right-box">
	        	<div class="sortBox">
	        		<div class="leftBox">
	        			총 판매자 수 : 0명
	        		</div>
	        		<div class="rightBox">
	        			<a href="javascript:void(0)" class="sort" id="defaultSort">기본정렬 /</a>
						<a href="javascript:void(0)" class="sort" id="endSort">마감일순 /</a>
						<a href="javascript:void(0)" class="sort" id="regSort">최신등록순 /</a>
						<a href="javascript:void(0)" class="sort" id="applySort">참여자순 /</a>
						<a href="javascript:void(0)" class="sort" id="hitSort" style="margin-right: 0;">조회순</a>
	        		</div>
	        	</div>
	        </div>
	        <div class="right-box">
	        	<div class="leftBox">
					<span>총 : 0건</span>
				</div>	
	        </div>
	        <div class="right-box clearfix">
	        	<div class="sellerInfoBox">
	        		<button class="scrapBtn"></button>
	        		<div class="imgBox">
	        			<img class="profile" src="${pageContext.request.contextPath}/local_assets/img/profile.png">
	        		</div>
	        		<div class="sellerInfo">
		        		<div class="leftBox">
		        			<!-- <div style="display: inline-block;">닉(주)위셀글로벌</div>
		        			<div style="display: inline-block;">신원(x), 사업자(o), 채널(x), 매출(o)</div> -->
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="nick">닉(주)위셀글로벌</span>
				        		</div>
				        		<div class="leftBox margin-0">
				        			<span class="auth">신원(x), </span>
				        			<span class="auth">사업자(o), </span>
				        			<span class="auth">채널(x), </span>
				        			<span class="auth">매출(o)</span>
				        		</div>
		        			</div>
		        			<div class="clearfix">
		        				<div class="leftBox">
		        					<strong>신규이지만, 성실함과 꾸준함 그리고 유료광고로 매출 보장합니다.</strong>
		        				</div>
		        			</div>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<div class="indus">도서 분야</div>
				        		</div>
				        		<div class="leftBox margin-0">
				        			<div class="span-box">
					        			<span>서울지역 /</span>
					        			<span>법인사업자 /</span>
					        			<span>오픈마켓, 종합몰, 폐쇄몰</span>
				        			</div>
				        		</div>
		        			</div>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
		        					<div class="seller-tag">#채널검증셀러</div>
		        					<div class="seller-tag">#경력 1년미만 검출셀러</div>
		        					<div class="seller-tag">#매출검증셀러</div>
				        		</div>
		        			</div>
		        		</div>
		        		<div class="rightBox">
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">계약 프로젝트</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>0건</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">등록 프로젝트</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>0건</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">요청 받은 수</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>0건</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">판매채널</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>오픈마켓 외 2채널</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">매출규모</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>연 0 원</span>
				        		</div>
		        			</div>
		        			<hr>
		        			<div class="clearfix">
		        				<div class="leftBox margin-0">
				        			<span class="projInfo">판매경력</span>
				        		</div>
				        		<div class="rightBox margin-0">
				        			<span>12년 7개월</span>
				        		</div>
		        			</div>
		        			<hr>
		        		</div>
		        	</div>
	        	</div>
	        </div>
	        <!-- 페이징 -->
	        <div class="rightBox" style="margin-right: -15px;">
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
<script>
</script>    
    </body>
</html>
