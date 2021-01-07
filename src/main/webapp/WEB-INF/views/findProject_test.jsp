<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
.chk_list_container{
	height: 150px;
	margin: 0 260px;
}
.chk_listBox{
	display: inline-block;
	overflow-x:hidden;
	overflow-y:auto;
	width:12.27%;
	height:200px;
	border: 1px solid #e3e3e3;
	text-align: left;
	margin-right: -5px;
}
.container1{
	border: 2px solid #e3e3e3;
	margin: 0 240px;
	height: 100%;
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
.titleBox span{
	color: #E62267;
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
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
        <span class="font-30">프로젝트 찾기</span>
    </div>
</div>
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
		    </form>
	    </div>    
	</div>
</div>
<div class="partner_bnr2">
    <div class="partner_wrap">
        <div class="partner_list vertical-middle">
            <div class="search_chk"><input type="checkbox" class="check" name="projSort" value="0" >전체검색</div>
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
	            		<li><input type="checkbox" class="check" name="projNation" value="0">전체</li>
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
	            		<li><input type="checkbox">전체</li>
	            		<c:forEach var="indusList" items="${indusList}">
	            			<li><input type="checkbox" class="check" name="projIndus" value="${indusList.indusId}">${indusList.indusName}</li>
	            		</c:forEach>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>상품단가</span>
	            	<ul>
	            		<li><input type="checkbox" class="check" name="projPrice" value="0">전체</li>
	            		<li><input type="checkbox" class="check" name="projPrice" value="9999">1만원 미만</li>
	            		<li><input type="checkbox" class="check" name="projPrice" value="19999">2만원 미만</li>
	            		<li><input type="checkbox" class="check" name="projPrice" value="49999">5만원 미만</li>
	            		<li><input type="checkbox" class="check" name="projPrice" value="99999">10만원 미만</li>
	            		<li><input type="checkbox" class="check" name="projPrice" value="100000">10만원 이상</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>판매마진</span>
	            	<ul>
	            		<li><input type="checkbox" class="check"  name="projMargin" value="0">전체</li>
	            		<li><input type="checkbox" class="check"  name="projMargin" value="10">10%이하</li>
	            		<li><input type="checkbox" class="check"  name="projMargin" value="20">11%~20%</li>
	            		<li><input type="checkbox" class="check"  name="projMargin" value="30">21%~30%</li>
	            		<li><input type="checkbox" class="check"  name="projMargin" value="31">30%초과</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>공급방법</span>
	            	<ul>
	            		<li><input type="checkbox" class="check" name="projSupplyType" value="0">전체</li>
	            		<li><input type="checkbox" class="check" name="projSupplyType" value="1">OEM</li>
	            		<li><input type="checkbox" class="check" name="projSupplyType" value="2">위탁판매</li>
	            		<li><input type="checkbox" class="check" name="projSupplyType" value="3">도매공급</li>
	            		<li><input type="checkbox" class="check" name="projSupplyType" value="4">운영대행</li>
	            		<li><input type="checkbox" class="check" name="projSupplyType" value="5">경매공급</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>공급자검증</span>
	            	<ul>
	            		<li><input type="checkbox" class="check" value="0">전체</li>
	            		<li><input type="checkbox" class="check" name="ppmemRname" value="1">신원인증</li>
	            		<li><input type="checkbox" class="check" name="ppBizCerti" value="1">사업자인증</li>
	            		<li><input type="checkbox" class="check" name="projProdCerti" value="1">상품검증</li>
	            		<li><input type="checkbox" class="check" name="ppProfit" value="1">수익성검증</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>판매자검증</span>
	            	<ul>
	            		<li><input type="checkbox" class="check" value="0">전체</li>
	            		<li><input type="checkbox" class="check" name="sellermemRname" value="1">신원인증</li>
	            		<li><input type="checkbox" class="check" name="sellerBizCerti" value="1">사업자인증</li>
	            		<li><input type="checkbox" class="check" name="sellerChChk" value="1">채널검증</li>
	            		<li><input type="checkbox" class="check" name="sellerSaleChk" value="1">매출검증</li>
	            	</ul>
            	</div>
            	<div class="chk_listBox"><span>판매채널</span>
	            	<ul>
	            		<li><input type="checkbox" class="check" name="projChannel" value="0">전체</li>
	            		<li><input type="checkbox" class="check" name="projChannel" value="오픈마켓">오픈마켓</li>
	            		<li><input type="checkbox" class="check" name="projChannel" value="종합몰">종합몰</li>
	            		<li><input type="checkbox" class="check" name="projChannel" value="폐쇄몰">폐쇄몰</li>
	            		<li><input type="checkbox" class="check" name="projChannel" value="커뮤니티">커뮤니티</li>
	            		<li><input type="checkbox" class="check" name="projChannel" value="SNS">SNS</li>
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
        	<c:forEach var="output" items="${output}">
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
<div class="partner_bnr2 height-500">
	<div class="container2">
		<span class="leftBox">전체 ${projCount}건</span>
		<div class="rightBox">
			<span>기본정렬</span>/
			<span>마감일순</span>/
			<span>최신등록순</span>/
			<span>참여자순</span>/
			<span style="margin-right: 0;">조회순</span>
		</div>
	</div>
	<div class="container1">
		<div class="container2">
			<div class="row1">
				<div class="leftBox">
					<span>• 등록일 : 2020년 12월 12일</span>
				</div>	
				<div class="rightBox">
					<span>+ 관심프로젝트등록</span>
				</div>
			</div>
			<div class="row1 leftBox">
				<div class="orangeBox">사업자인증</div>
				<div class="orangeBox">신원인증</div>
				<div class="orangeBox">수익성검증</div>
				<div class="orangeBox">상품검증</div>
			</div>
			<div class="clearfix"></div>
			<div class="row1 leftBox">
				<div class="titleBox"><span>공급자</span> | 다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집</div>
			</div>
			<div class="clearfix"></div>
			<div class="row1 leftBox">
				<div class="contentsBox">선글라스를 전문적으로 생산하는 제조회사입니다. 
				10여가지 라인업을 보유하고 있으며 재고가 풍부하여 끊임없이 공급이 가능합니다. 도매를 구하지만, 위탁판매도 구하고 있습니다
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="row1 leftBox">
				<div class="tagContainer">
					<div class="tagBox">#고경력선호</div>
					<div class="tagBox">#고마진상품</div>
					<div class="tagBox">#매출보장판매자</div>
					<div class="tagBox">#수출가능상품</div>
					<div class="tagBox">#요즘뜨는제품</div>
				</div>
			</div>
		</div>
		<div class="container3">
			<div class="row1 text-left">
				<div class="blueBox">마감 15일전</div>
			</div>
			<div class="row2"></div>
			<div class="row1">
				<span class="leftBox">모집자수</span>
				<span class="rightBox">1명</span>
			</div>
			<div class="row1">
				<span class="leftBox">지원자수</span>
				<span class="rightBox">1명</span>
			</div>
			<div class="row1">
				<span class="leftBox">지원마감일</span>
				<span class="rightBox">2020-12-20</span>
			</div>
			<div class="row1">
				<span class="leftBox">관심조회</span>
				<span class="rightBox">1회</span>
			</div>
		</div>
	</div>
</div>
<div class="partner_bnr2">
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
	// 체크박스 선택 검색
	$(".check").click(function(){
		
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
		var ppProfit;
		var sellermemRname;
		var sellerBizCerti;
		var sellerChChk;
		var sellerSaleChk;
		var projChannel;
		
		
		var param_list_name = ['projSort', 'projNation', 'projIndus', 
			'projPrice', 'projMargin', 'projSupplyType', 'ppmemRname', 
			'ppBizCerti', 'projProdCerti', 'ppProfit', 'sellermemRname', 
			'sellerBizCerti', 'sellerChChk', 'sellerSaleChk', 'projChannel'];
		
		var param_list = {
				projSort, projNation, projIndus, 
				projPrice, projMargin, projSupplyType, ppmemRname, 
				ppBizCerti, projProdCerti, ppProfit, sellermemRname, 
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
					}
					
				}
				
			});
			console.log("----------------")
			console.log(param_list)
			console.log("----------------")
		}
		var url = formData.attr('action');
		
		$.ajax({
           type: "GET",
           url: ROOT_URL+"/project/find",
           data: param_list,
           success: function(json) {
           	
           }
    	});
		
/* 		$(".check:checked").each(function(i,e){
			var param_list = {
					projSort, projNation, projIndus, 
					projPrice, projMargin, projSupplyType, ppmemRname, 
					ppBizCerti, projProdCerti, ppProfit, sellermemRname, 
					sellerBizCerti, sellerChChk, sellerSaleChk, projChannel
					}
			
			var name = this.name
			var value = this.value
				
			param_list[name]=[];
			for (var i = 0; i < param_list_name.length; i++){
					
				if (String(param_list_name[i]) == name) {
					param_list[name].push(value)
					console.log(param_list[name])
						//projNation.push(value);
				}
				
			}
		}); */
		
		//param_list_name2.push(projNation);
		
		//console.log(param_list_name2)
		//console.log("----------------------")
		
		/* for (var i = 0; i < param_list_name.length; i++) {
			const input = [];
			input[i] = $("<input>");
            input[i].attr({
                type: 'hidden',
                name: param_list_name[i],
                value: param_list[param_list_name[i]]
            })
            

            formData.append(input);
			//formData.append(param_list_name[i],param_list[i]);
		}
		
		
		var url = formData.attr('action');
	        
	       
        $.ajax({
               type: "GET",
               url: url,
               data: formData.serialize(),
               success: function(json) {
               	window.location = json.referer;
               }
        }); */
	});
});
</script>    
    </body>
</html>
