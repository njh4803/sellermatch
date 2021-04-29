<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="${pageContext.request.contextPath}/assets/css/findSeller.css" rel="stylesheet" type="text/css">

<div class="partner_bnr w-find">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="titleBox">판매자 리스트</div>
			<div class="searchBox clearfix">
				<div class="search-letfBox">
					원하는 판매자를 찾아 지원하기 요청을 할 수 있습니다.
				</div>
				<div class="search-rightBox">
					<form id="seller_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/seller/find">
				        <div class="input_group">
				            <input class="input-text" type="text" name="keyword">
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
				<div class="partner_list">
					<span class="check_list upImg">판매자유형</span>
					<div class="check_list_box">
		            	<ul>
							<li><input type="checkbox" class="checkAll" id="profileBizSort"><label for="profileBizSort"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="1" id="b1"><label for="b1"><span>법인사업자</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="2" id="b2"><label for="b2"><span>개인사업자</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="3" id="b3"><label for="b3"><span>간이과세자</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileBizSort" value="4" id="b4"><label for="b4"><span>개인(사업자없음)</span></label></li>
		            	</ul>
	            	</div>
				</div>
				<div class="partner_list">
					<span class="check_list downImg">판매자검증</span>
					<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="sellermemRname"><label for="sellermemRname"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellermemRname" value="1" id="sp1"><label for="sp1"><span>신원인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="profileBizCerti" value="1" id="sp2"><label for="sp2"><span>사업자인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="profileChChk" value="1" id="sp3"><label for="sp3"><span>채널검증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="profileSaleChk" value="1" id="sp4"><label for="sp4"><span>매출검증</span></label></li>
		            	</ul>
	            	</div>
            	</div>
				<div class="partner_list">
            		<span class="check_list downImg">판매채널</span>
            		<div class="check_list_box">
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
            	</div>
             	<div class="partner_list">
	            	<span class="check_list downImg">판매상품</span>
	            	<div class="check_list_box">
		            	<ul>
		            		<li><input id="profileIndus" class="checkAll" type="checkbox"><label for="profileIndus"><span>전체</span></label></li>
		            		<c:forEach var="indusList" items="${indusList}" varStatus="status">
		            			<li><input type="checkbox" class="check" name="profileIndus" value="${indusList.indusId}" id="i${status.count}"><label for="i${status.count}"><span>${indusList.indusName}</span></label></li>
		            		</c:forEach>
		            	</ul>
	            	</div>
            	</div>
            	<div class="partner_list">
            		<span class="check_list downImg">매출규모</span>
            		<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="profileVolume"><label for="profileVolume"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileVolume" value="10000000" id="p1"><label for="p1"><span>1000만원  미만</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileVolume" value="29999999" id="p2"><label for="p2"><span>1000만원~2999만원</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileVolume" value="49999999" id="p3"><label for="p3"><span>3000만원~4999만원</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileVolume" value="100000000" id="p4"><label for="p4"><span> 5000만원~1억원</span></label></li>
		            		<li><input type="checkbox" class="check" name="profileVolume" value="100000001" id="p5"><label for="p5"><span>1억 초과</span></label></li>
		            	</ul>
	            	</div>
            	</div>
            	<div class="partner_list">
            		<span class="check_list downImg">판매경력</span>
            		<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" name="profileCareer" value="0" id="profileCareer"><label for="profileCareer"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check"  name="profileCareer" value="1" id="m1"><label for="m1"><span> 1개월 이상~3개월 미만</span></label></li>
		            		<li><input type="checkbox" class="check"  name="profileCareer" value="3" id="m2"><label for="m2"><span>3개월 이상~6개월 미만</span></label></li>
		            		<li><input type="checkbox" class="check"  name="profileCareer" value="6" id="m3"><label for="m3"><span>6개월 이상~1년 미만</span></label></li>
		            		<li><input type="checkbox" class="check"  name="profileCareer" value="9" id="m4"><label for="m4"><span>1년 이상 ~ 3년 미만</span></label></li>
		            		<li><input type="checkbox" class="check"  name="profileCareer" value="8" id="m5"><label for="m5"><span>3년 이상</span></label></li>
		            	</ul>
	            	</div>
            	</div>
<!--              	<div class="partner_list">
            		<span class="check_list">판매자특징</span>
            		<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="projSupplyType"><label for="projSupplyType"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="1" id="s1"><label for="s1"><span>OEM</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="2" id="s2"><label for="s2"><span>위탁판매</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="3" id="s3"><label for="s3"><span>도매공급</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="4" id="s4"><label for="s4"><span>운영대행</span></label></li>
		            		<li><input type="checkbox" class="check" name="projSupplyType" value="5" id="s5"><label for="s5"><span>경매공급</span></label></li>
		            	</ul>
	            	</div>
            	</div> -->
				<div class="partner_list">
					<span class="check_list downImg">판매자지역</span>
					<div class="check_list_box">
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
			           		<li><input type="checkbox" class="check" name="profileNation" value="064" id="n17"><label for="n17"><span>제주특별자치도</span></label></li>
			           		<li><input type="checkbox" class="check" name="profileNation" value="999" id="n18"><label for="n18"><span>해외</span></label></li>
			           	</ul>
		           	</div>
				</div>
        	</div>
        	<div class="contents-container">
        		<div class="contentsBox">
      					<div class="countAllbox clearfix">
						<div class="countAll">총 <span>${totalCount}</span>명의 판매자</div>
						<div class="sortBox">
							<c:choose>
								<c:when test="${sort == 'regSort'}">
									<a href="javascript:void(0)" class="sort select" id="regSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">최신 등록순
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0)" class="sort" id="regSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">최신 등록순
									</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${sort == 'volumeSort'}">
									<a href="javascript:void(0)" class="sort select" id="volumeSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">매출 높은 순
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0)" class="sort" id="volumeSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">매출 높은 순
									</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${sort == 'recommendSort'}">
									<a href="javascript:void(0)" class="sort select" id="recommendSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">요청 많은 순
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0)" class="sort" id="recommendSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">요청 많은 순
									</a>
								</c:otherwise>
							</c:choose>							
						</div>
					</div>
        		</div>
        		<c:forEach var="output" items="${output}" varStatus="status">
        		<div class="contents s-link clearfix" data-index="${status.index}">
					<div class="clearfix">
						<input type="hidden" id="profileMemId${status.index}" name="profileMemId" value="${output.profileMemId}">
						<div class="leftBox">
							<div class="photo-container">
								<c:if test="${output.profilePhoto == null}">
									<img class="photoBox" alt="" src="${pageContext.request.contextPath}/assets/img/profile.png">
								</c:if>
								<c:if test="${output.profilePhoto != null}">
									<img class="photoBox" alt="" src="/upload/${output.profilePhoto}">
								</c:if>
								<div class="star-score">
									<div>
										<c:forEach begin="1" end="5">
											<img class="starImg" alt="" src="${pageContext.request.contextPath}/assets/img/star.png">
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="left-infoBox">
								<c:if test="${output.memState == 1}">
									<div class="seller-status">탈퇴</div>
								</c:if>
								<c:if test="${output.memState == 0}">
									<div class="seller-status">활동중</div>
								</c:if>
								<div class="profileBizSort">${output.profileBizSortName}</div>
							</div>
							<div class="nick">
								${output.memNick}
							</div>							
							<div class="seller-intro">
								<span>${output.profileIntro}</span>
							</div>
							<div class="left-infoBox">
								<div class="auth-container">
								<c:if test="${output.memRname == 1}">
									<div class="authBox">신원인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
									</div>
								</c:if>
								<c:if test="${output.memRname == 0}">
									<div class="authBox">신원인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileBizCerti == 1}">
									<div class="authBox">사업자인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
									</div>
								</c:if>
								<c:if test="${output.profileBizCerti == 0}">
									<div class="authBox">사업자인증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileChChk == 1}">
									<div class="authBox">채널검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
									</div>
								</c:if>
								<c:if test="${output.profileChChk == 0}">
									<div class="authBox">채널검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
									</div>
								</c:if>
								<c:if test="${output.profileSaleChk == 1}">
									<div class="authBox">매출검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
									</div>
								</c:if>
								<c:if test="${output.profileSaleChk == 0}">
									<div class="authBox">매출검증
										<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
									</div>
								</c:if>									
								</div>							
							</div>
							<div class="left-infoBox">
								<c:if test="${output.hashTag1 != null and output.hashTag1 != ''}">
									<div class="tagBox">${output.hashTag1}</div>
								</c:if>
					           	<c:if test="${output.hashTag2 != null}">
									<div class="tagBox">${output.hashTag2}</div>
								</c:if>
								<c:if test="${output.hashTag3 != null}">
									<div class="tagBox">${output.hashTag3}</div>
								</c:if>
								<c:if test="${output.hashTag4 != null}">
									<div class="tagBox">${output.hashTag4}</div>
								</c:if>
								<c:if test="${output.hashTag5 != null}">
									<div class="tagBox">${output.hashTag5}</div>
								</c:if>
							</div>
						</div>
						<div class="rightBox">
							<div class="infoBox2"><span>등록한 거래</span><span>${output.projAddCount}건</span></div>
							<div class="infoBox2"><span>완료한 거래</span><span>${output.contractCount}건</span></div>
							<div class="infoBox2"><span>요청 받은 수</span><span>${output.recommendCount}건</span></div>
							<div class="infoBox2">
								<span>판매채널</span>
								<span>
								<c:forEach var="profileChannel" items="${output.profileChannelList}" varStatus="status2">
			        					<c:if test="${status2.first}">
			        						${profileChannel}
			        					</c:if>
			        					<c:if test="${status2.last}">
			        						<c:if test="${status2.count-1 > 0}">
			        							외 ${status2.count-1}채널
			        						</c:if>
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
		<div class="clearfix"></div>
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

Handlebars.registerHelper('numberWithCommas', function (x) {
	if (x == null) {
		return "0";
	}
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
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
        		<div class="contentsBox">
      					<div class="countAllbox clearfix">
						<div class="countAll">총 <span>{{totalCount}}</span>명의 판매자</div>
						<div class="sortBox">
							{{#ifCond sort '==' 'regSort'}}
								<a href="javascript:void(0)" class="sort select" id="regSort">
									<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">최신 등록순
								</a>
							{{else}}
								<a href="javascript:void(0)" class="sort" id="regSort">
									<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">최신 등록순
								</a>
							{{/ifCond}}
							{{#ifCond sort '==' 'volumeSort'}}
								<a href="javascript:void(0)" class="sort select" id="volumeSort">
									<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">매출 높은 순
								</a>
							{{else}}
								<a href="javascript:void(0)" class="sort" id="volumeSort">
									<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">매출 높은 순
								</a>
							{{/ifCond}}
							{{#ifCond sort '==' 'recommendSort'}}
								<a href="javascript:void(0)" class="sort select" id="recommendSort">
									<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">요청 많은 순
								</a>
							{{else}}
								<a href="javascript:void(0)" class="sort" id="recommendSort">
									<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">요청 많은 순
								</a>
							{{/ifCond}}						
						</div>
					</div>
        		</div>
        		{{#output}}
        		<div class="contents s-link clearfix" data-index="{{@key}}">
					<div class="clearfix">
						<input type="hidden" id="profileMemId{{@key}}" name="profileMemId" value="{{profileMemId}}">
						<div class="leftBox">
							<div class="photo-container">
								{{#if profilePhoto}}
									<img class="photoBox" alt="" src="/upload/{{profilePhoto}}">
								{{else}}	
									<img class="photoBox" alt="" src="${pageContext.request.contextPath}/assets/img/profile.png">
								{{/if}}
								<div class="star-score">
									<div>
										<c:forEach begin="1" end="5">
											<img class="starImg" alt="" src="${pageContext.request.contextPath}/assets/img/star.png">
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="left-infoBox">
								<div class="seller-status">활동중</div>
								<div class="profileBizSort">{{profileBizSortName}}</div>
							</div>
							<div class="nick">
								{{memNick}}
							</div>							
							<div class="seller-intro">
								<span>{{profileIntro}}</span>
							</div>
							<div class="left-infoBox">
								<div class="auth-container">
									{{#ifCond memRname '==' '1'}}
										<div class="authBox">신원인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									{{/ifCond}}
									{{#ifCond memRname '==' '0'}}
										<div class="authBox">신원인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
										</div>
									{{/ifCond}}
									{{#ifCond profileBizCerti '==' '1'}}
										<div class="authBox">사업자인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									{{/ifCond}}
									{{#ifCond profileBizCerti '==' '0'}}
										<div class="authBox">사업자인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
										</div>
									{{/ifCond}}
									{{#ifCond profileChChk '==' '1'}}
										<div class="authBox">채널검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									{{/ifCond}}
									{{#ifCond profileChChk '==' '0'}}
										<div class="authBox">채널검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
										</div>
									{{/ifCond}}
									{{#ifCond profileSaleChk '==' '1'}}
										<div class="authBox">매출검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									{{/ifCond}}
									{{#ifCond profileSaleChk '==' '0'}}
										<div class="authBox">매출검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/xx-button.png">
										</div>
									{{/ifCond}}							
								</div>							
							</div>
							<div class="left-infoBox">
								{{#if hashTag1}}
									<div class="tagBox">{{hashTag1}}</div>
								{{/if}}
					           	{{#if hashTag2}}
									<div class="tagBox">{{hashTag2}}</div>
								{{/if}}	
					           	{{#if hashTag3}}
									<div class="tagBox">{{hashTag3}}</div>
								{{/if}}	
					           	{{#if hashTag4}}
									<div class="tagBox">{{hashTag4}}</div>
								{{/if}}	
					           	{{#if hashTag5}}
									<div class="tagBox">{{hashTag5}}</div>
								{{/if}}
							</div>
						</div>
						<div class="rightBox">
							<div class="infoBox2"><span>등록한 거래</span><span>{{contractCount}}건</span></div>
							<div class="infoBox2"><span>완료한 거래</span><span>{{projAddCount}}건</span></div>
							<div class="infoBox2"><span>요청 받은 수</span><span>{{recommendCount}}건</span></div>
							<div class="infoBox2">
								<span>판매채널</span>
								<span>
									{{#each profileChannelList as |value key|}}
						        		{{#if @first}}
						        			{{value}}
										{{/if}}
						        		{{#if @last}}
											{{#ifCond @key "!=" "0"}}
			        							외 {{@key}}채널
											{{/ifCond}}
						        		{{/if}}
									{{/each}}
								</span>
							</div>
							<div class="infoBox2">
								<span>매출규모</span>
								<span>
									{{numberWithCommas profileVolume}}원
								</span>
							</div>
							<div class="infoBox2"><span>판매경력</span><span>{{profileCareerName}}</span></div>
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
		
		var idx = $(this).attr('data-index');
		var profileMemId = $("#profileMemId"+idx).val();
		window.location.href = ROOT_URL+"/seller/detail?profileMemId="+profileMemId;
	});
	
 	$(document).on("click", ".check_list", function(){
		var check_list_box = $(this).closest(".partner_list").children('.check_list_box');
		var checkList = $(this).closest(".partner_list").children('.check_list');
		console.log(check_list_box);
		check_list_box.toggle();
		
		if (checkList.hasClass("upImg")) {
			checkList.removeClass("upImg");
			checkList.addClass("downImg");
		} else {
			checkList.removeClass("downImg");
			checkList.addClass("upImg");		
		}
	});
	
	$(document).on("click", ".m-check_list_box", function(){
		var m_checkList = $(this).closest(".filter").children('.m-check_list_box').children('ul');
		m_checkList.toggle();
	});	


/*   	$(window).on('scroll', function() {
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
  	}); */
	
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
		$(".contentsBox").remove();
		$(".contents").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var sellermemRname;
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		var profileCareer;
		var profileVolume;	
		var profileChChk;
		var profileSaleChk;
		var profileBizCerti;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 'sellermemRname', 
			'profileChannel', 'profileCareer', 'profileVolume','profileBizCerti',  'profileChChk', 'profileSaleChk'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel, profileCareer, profileVolume,
				profileBizCerti, profileChChk, profileSaleChk, sellermemRname};
		
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
	       		
	       		$(".contents-container").append(html);
	       		$(".contents-container").append(page_html);
	       		
	       }
		});
	});
	
	// 정렬 선택시
	$(document).on("click", ".sort", function(){
		var value = this.id;
		$("#sort").val(value);
		
		// 초기화
		$(".contentsBox").remove();
		$(".contents").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var sellermemRname;
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		var profileCareer;
		var profileVolume;	
		var profileChChk;
		var profileSaleChk;
		var profileBizCerti;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 'sellermemRname', 
			'profileChannel', 'profileCareer', 'profileVolume','profileBizCerti',  'profileChChk', 'profileSaleChk'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel, profileCareer, profileVolume,
				profileBizCerti, profileChChk, profileSaleChk, sellermemRname};
		
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
	       		
	       		$(".contents-container").append(html);
	       		$(".contents-container").append(page_html);
	       		
	       }
		});
	});
	
	//체크박스 전체선택
	$(".checkAll").click(function(){
		$("#sort").val();
		// 초기화
		var str = ''
		$(".contentsBox").remove();
		$(".contents").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var sellermemRname;
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		var profileCareer;
		var profileVolume;	
		var profileChChk;
		var profileSaleChk;
		var profileBizCerti;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 'sellermemRname', 
			'profileChannel', 'profileCareer', 'profileVolume','profileBizCerti',  'profileChChk', 'profileSaleChk'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel, profileCareer, profileVolume,
				profileBizCerti, profileChChk, profileSaleChk, sellermemRname};
		
		var checked = this.checked;
		
		if (this.id == 'sellermemRname') {
			$("input[name=sellermemRname]").prop('checked', checked);
			$("input[name=profileBizCerti]").prop('checked', checked);
			$("input[name=profileChChk]").prop('checked', checked);
			$("input[name=profileSaleChk]").prop('checked', checked);
		}
		if (this.id != 'sellermemRname') {
			$("input[name="+this.id+"]").each(function(i,e){
				this.checked = checked;
			});
		}
			
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
	       		
	       		$(".contents-container").append(html);
	       		$(".contents-container").append(page_html);
	       		
	       }
		});
	});
	
	
	// 체크박스 선택 검색
	$(".check").click(function(){
		// 초기화
		var str = ''
		$(".contentsBox").remove();
		$(".contents").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var sellermemRname;
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		var profileCareer;
		var profileVolume;	
		var profileChChk;
		var profileSaleChk;
		var profileBizCerti;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 'sellermemRname',
			'profileChannel', 'profileCareer', 'profileVolume','profileBizCerti',  'profileChChk', 'profileSaleChk'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel, profileCareer, profileVolume,
				profileBizCerti, profileChChk, profileSaleChk, sellermemRname};
		
		for (var i = 0; i < param_list_name.length; i++) {
			//초기화
			param_list[param_list_name[i]]= [];
			var data_name = $("input[name="+param_list_name[i] +"]").data('name');

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
			if (data_name != 'sellermemRname') {
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
	       		
	       		$(".contents-container").append(html);
	       		$(".contents-container").append(page_html);
	       		
	       }
		});
	});
	
	// 페이지 이동
	$(document).on("click", ".pageMove", function(){
		var keyword = $("input[name=keyword]").val();
		 
		// 초기화
		$(".contentsBox").remove();
		$(".contents").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		
		var formData = $("#search_frm");
		var sellermemRname;
		var profileBizSort;
		var profileNation;
		var profileIndus;
		var profileChannel;
		var profileCareer;
		var profileVolume;
		var profileChChk;
		var profileSaleChk;
		var profileBizCerti;
		
		var param_list_name = ['profileBizSort', 'profileNation', 'profileIndus', 'sellermemRname',
			'profileChannel', 'profileCareer', 'profileVolume','profileBizCerti', 'profileChChk', 'profileSaleChk'];
		
		var param_list = {
				profileBizSort, profileNation, profileIndus, profileChannel, profileCareer, profileVolume,
				profileBizCerti, profileChChk, profileSaleChk, sellermemRname};
		
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
	       		
	       		$(".contents-container").append(html);
	       		$(".contents-container").append(page_html);
	       }
		});
	});
});
</script>    
    </body>
</html>
