<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/findProject.css" rel="stylesheet" type="text/css">
<div class="partner_bnr w-find">
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
				            <input class="input-text" type="text" name="keyword">
				        </div>
				        <button type="submit" class="search-btn">검색</button>
				    </form>
				</div>
			</div>
			<hr>
		</div>
		<div id="list-container">
			<div class="left-container">
				<div class="partner_list">
					<div>
						<input type="checkbox" class="check" name="projSort" id="projSort-pp" value="1">
						<label for="projSort-pp">
							<span>공급자 찾기</span>
						</label>
						<input type="checkbox" class="check" name="projSort" id="projSort-sp" value="2">
						<label for="projSort-sp">
							<span>판매자 찾기</span>
						</label>
					</div>
				</div>
				<div class="partner_list">
					<span class="check_list downImg">공급자검증</span>
					<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="ppmemRname"><label for="ppmemRname"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="ppmemRname" value="1" id="pp1"><label for="pp1"><span>신원인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="ppBizCerti" value="1" id="pp2"><label for="pp2"><span>사업자인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="projProdCerti" value="1" id="pp3"><label for="pp3"><span>상품검증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="ppmemRname" name="projProfit" value="1" id="pp4"><label for="pp4"><span>수익성검증</span></label></li>
		            	</ul>
	            	</div>
	            </div>
	            <div class="partner_list">
	            	<span class="check_list downImg">판매자검증</span>
	            	<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="sellermemRname"><label for="sellermemRname"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellermemRname" value="1" id="sp1"><label for="sp1"><span>신원인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerBizCerti" value="1" id="sp2"><label for="sp2"><span>사업자인증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerChChk" value="1" id="sp3"><label for="sp3"><span>채널검증</span></label></li>
		            		<li><input type="checkbox" class="check" data-name="sellermemRname" name="sellerSaleChk" value="1" id="sp4"><label for="sp4"><span>매출검증</span></label></li>
		            	</ul>
	            	</div>
	            </div>
 	            <div class="partner_list">
	            	<span class="check_list downImg">판매채널</span>
	            	<div class="check_list_box">
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
	            <div class="partner_list">
	            	<span class="check_list downImg">상품단가</span>
	            	<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll" id="projPrice"><label for="projPrice"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="9999" id="p1"><label for="p1"><span>~1만원</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="29999" id="p2"><label for="p2"><span>1만원 ~ 3만원</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="99999" id="p3"><label for="p3"><span>3만원 ~ 10만원</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="499999" id="p4"><label for="p4"><span>10만원 ~50만원</span></label></li>
		            		<li><input type="checkbox" class="check" name="projPrice" value="500000" id="p5"><label for="p5"><span>50만원 이상</span></label></li>
		            	</ul>
	            	</div>
	            </div>
	            <div class="partner_list">	
	            	<span class="check_list downImg">판매마진</span>
	            	<div class="check_list_box">
		            	<ul>
		            		<li><input type="checkbox" class="checkAll"  id="projMargin"><label for="projMargin"><span>전체</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="10" id="m1"><label for="m1"><span>10%이하</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="20" id="m2"><label for="m2"><span>11~20%</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="30" id="m3"><label for="m3"><span>21~30%</span></label></li>
		            		<li><input type="checkbox" class="check"  name="projMargin" value="31" id="m4"><label for="m4"><span>30%초과</span></label></li>
		            	</ul>
	            	</div>
	            </div>
	            <div class="partner_list">
	            	<span class="check_list downImg">상품분류</span>
	            	<div class="check_list_box">
		            	<ul>
		            		<li><input id="projIndus" class="checkAll" type="checkbox"><label for="projIndus"><span>전체</span></label></li>
		            		<c:forEach var="indusList" items="${indusList}" varStatus="status">
		            			<li><input type="checkbox" class="check" name="projIndus" value="${indusList.indusId}" id="i${status.count}"><label for="i${status.count}"><span>${indusList.indusName}</span></label></li>
		            		</c:forEach>
		            	</ul>
	            	</div>
	            </div>
<!--  	            <div class="partner_list">	
	            	<span class="check_list">공급방법</span>
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
	            	<span class="check_list downImg">등록지역</span>
					<div class="check_list_box">
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
		            		<li><input type="checkbox" class="check" name="projNation" value="064" id="n17"><label for="n17"><span>제주특별자치도</span></label></li>
		            	</ul>
					</div>
	            </div>
        	</div>
        	<div class="contents-container">
        		<div class="contentsBox">
   					<div class="countAllbox clearfix">
						<div class="countAll">총 <span>${projCount}</span>개의 거래처</div>
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
								<c:when test="${sort == 'endSort'}">
									<a href="javascript:void(0)" class="sort select" id="endSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">마감 임박 순
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0)" class="sort" id="endSort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">마감 임박 순
									</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${sort == 'applySort'}">
									<a href="javascript:void(0)" class="sort select" id="applySort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-check.png">지원 많은 순
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0)" class="sort" id="applySort">
										<img class="sort-check" alt="" src="${pageContext.request.contextPath}/assets/img/sort-checkNone.png">지원 많은 순
									</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
        		</div>
        		<c:forEach var="output" items="${output}" varStatus="status">
        		<div class="contents clearfix proj-link" data-index="${status.index}">
					<div class="clearfix">
						<input type="hidden" id="projId${status.index}" value="${output.projId}">
						<div class="leftBox">
							<img class="photoBox" alt="" src="/upload/${output.projThumbnailImg}">
							<div class="left-infoBox">
								<c:if test="${output.projSort == 1}">
					        		<div class="sFindBox">판매자 찾음</div>
					        	</c:if>
					        	<c:if test="${output.projSort == 2}">
					        		<div class="pFindBox">공급자 찾음</div>
					        	</c:if>						
								<c:choose>
									<c:when test="${output.projDday < 0}">
										<div class="D-day">마감완료</div>
									</c:when>
									<c:otherwise>
										<div class="D-day">마감 ${output.projDday}일전</div>
									</c:otherwise>
								</c:choose>
					        	<%-- <div class="areaBox">${output.projNationName}지역</div> --%>
							</div>
							<div class="project-titleBox">
								${output.projTitle}
							</div>
							<div class="project-detailBox">
								${output.projDetail}
							</div>	
							<div class="left-infoBox">
								<c:if test="${output.hashTag1 != null}">
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
							<div class="regDate">
								<span>등록일</span>${output.projRegDate}
							</div>
							<div class="clearfix">
								<div class="infoBox">
									모집수 <span>${output.projRecruitNum}명</span>
								</div>
								<div class="infoBox">
									지원수 <span>${output.applyCount}명</span>
								</div>						
							</div>
							<div class="clearfix">
							<c:if test="${output.projPrice != 0}">
								<div class="infoBox2">단가<span><fmt:formatNumber value="${output.projPrice}" type="number"/>원</span></div>
								<div class="infoBox2">마진<span>${output.projMarginName}</span></div>
							</c:if>
							<c:if test="${output.projPrice == 0}">
								<div class="infoBox2">단가<span>협상</span></div>
								<div class="infoBox2">마진<span>${output.projMarginName}</span></div>
							</c:if>
							</div>
							<div class="infoBox3">
								<div class="authContainer">
									<c:if test="${output.memRname == 1}">
										<div class="authBox">신원인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									</c:if>
									<c:if test="${output.memRname == 0}">
										<div class="authBox">신원인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
										</div>
									</c:if>
									<c:if test="${output.profileBizCerti == 1}">
										<div class="authBox">사업자인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									</c:if>
									<c:if test="${output.profileBizCerti == 0}">
										<div class="authBox">사업자인증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
										</div>
									</c:if>
								</div>
								<div class="authContainer">
									<c:if test="${output.projProdCerti == 1}">
										<div class="authBox">상품검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									</c:if>
									<c:if test="${output.projProdCerti == 0}">
										<div class="authBox">상품검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
										</div>
									</c:if>
									<c:if test="${output.projProfit == 1}">
										<div class="authBox">수익성검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									</c:if>
									<c:if test="${output.projProfit == 0}">
										<div class="authBox">수익성검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
										</div>
									</c:if>
									<c:if test="${output.profileChChk == 1}">
										<div class="authBox">채널검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									</c:if>
									<c:if test="${output.profileChChk == 0}">
										<div class="authBox">채널검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
										</div>
									</c:if>
									<c:if test="${output.profileSaleChk == 1}">
										<div class="authBox">매출검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
										</div>
									</c:if>
									<c:if test="${output.profileSaleChk == 0}">
										<div class="authBox">매출검증
											<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
										</div>
									</c:if>								
								</div>
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
		<div class="clearfix"></div>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
 	
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
	
	$(document).on("click", ".proj-link", function(){
		
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
           url: ROOT_URL+"/project/find",
           data: param_list,
           success: function() {
        	   location.reload();
           }
    	});
	});	
	
	// 정렬 선택시
	$(document).on("click", ".sort", function(){
		var value = this.id;
		$("#sort").val(value);	
		
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
           url: ROOT_URL+"/project/find",
           data: param_list,
           success: function() {        
        	   location.reload();
           }
    	});
	});
	
	//체크박스 전체선택
	$(".checkAll").click(function(){
		$("#sort").val();
		// 초기화
		$(".countAllbox").remove();
		$(".contents").remove();
		$(".contents-container").remove();
		$(".pageBox").remove();
		$(".emptyResult").remove();
		// 모바일 초기화
		$('.m-contents-container').remove();		
		
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
           url: ROOT_URL+"/project/find",
           data: param_list,
           success: function() {    
        	   location.reload();
           }
    	});
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
           url: ROOT_URL+"/project/find",
           data: param_list,
           success: function() {
        	   location.reload();
           }
    	});
	});
	
	// 페이지 이동
	$(document).on("click", ".pageMove", function(){
		var keyword = $("input[name=keyword]").val();	
		
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
           url: ROOT_URL+"/project/find",
           data: param_list,
           success: function() {
        	   location.reload();
           }
    	});
	});
});
</script>    
    </body>
</html>
