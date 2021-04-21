<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<%-- <link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/file.css"> --%>
<link href="${pageContext.request.contextPath}/assets/css/myApplyList.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">지원한 거래</div>
		    		<div class="mypage-text">내가 지원한 거래 목록입니다.</div>
	    		</div>
		    	<div class="mypage-top-right">
		    		<img class="mypage-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="mypage-hr">
<!-- 	       	<ul class="my-tabs">
				<li class="tab-link" data-tab="my-tab-1" id="select-my-tab1">MY홈</li>
				<li class="tab-link" data-tab="my-tab-2" id="select-my-tab2">가입정보관리</li>
				<li class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필관리</li>
				<li class="tab-link current" data-tab="my-tab-4" id="select-my-tab4">거래관리</li>
			</ul> -->
			<div id="my-tab-4" class="tab-content2">
						<div id="myProject">
				<div class="myProjBox">
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type projAddCountText">등록한 거래</div>
							<div class="textBox1"><button id="projAddCount" data-value="${myProjectCount.projAddCount}">${myProjectCount.projAddCount}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type myApplyCountText">지원한 거래</div>
							<div class="textBox1"><button id="myApplyCount" value="${myProjectCount.appliedCount}">${myProjectCount.appliedCount}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type closedCountText">마감한 거래/후기</div>
							<div class="textBox1"><button id="closedCount" value="">0건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<c:if test="${myProjectCount.memSort == 1}">
 							<div class="p-type recommendCountText">판매자에게 제안한 거래</div>
						    <div class="textBox1"><button id="recommendCount" value="${myProjectCount.recommendCount}">${myProjectCount.recommendCount}건</button></div>
						    </c:if>
						    <c:if test="${myProjectCount.memSort == 2}">
							<div class="p-type recommendCountText">공급자에게 제안 받은 거래</div>
							<div class="textBox1"><button id="recommendCount" value="${myProjectCount.recommendCount}">${myProjectCount.recommendCount}건</button></div>
							</c:if>
						</div>
					</div>
					<div class="proj-type" style="border-right:0;">
						<div class="myProjBox2">
							<div class="p-type scrapCountText">스크랩한 거래</div>
							<div class="textBox1"><button id="scrapCount" value="${myProjectCount.scrapCount}">${myProjectCount.scrapCount}건</button></div>
						</div>
					</div>
				</div>
				<input type="hidden" id="myMemSort" value="${myProjectCount.memSort}">
				<div id="myProject-table" class="myProject-table">
					<div>
						<div>
							<div class="th">등록일</div>
							<div class="th">거래명</div>						
							<div class="th">마감일</div>
							<div class="th">모집인원</div>
							<div class="th">지원자인원</div>
							<div class="th">지원현황</div>
						</div>
					</div>
					<div>
 						<c:forEach var="myApplyList" items="${myApplyList}" varStatus="status">
						<div class="show-apply" data-projId="${myApplyList.projId}" data-index="${status.count}">
							<div class="td cursor">${myApplyList.projRegDate}</div>
							<div class="td project-title cursor" data-projId="${myApplyList.projId}">
					         <c:choose>
					           <c:when test="${fn:length(myApplyList.projTitle) > 30}">
					            <c:out value="${fn:substring(myApplyList.projTitle,0,29)}"/>...
					           </c:when>
					           <c:otherwise>
					            <c:out value="${myApplyList.projTitle}"/>
					           </c:otherwise> 
					          </c:choose>
							</div>
							<div class="td cursor">${myApplyList.projEndDate}</div>
							<div class="td cursor">${myApplyList.projRecruitNum}명</div>
							<div class="td cursor">${myApplyList.applyCount}명</div>
							<div class="td cursor">
							<c:choose>
								<c:when test="${myApplyList.applyProjState == 0}">
									거절
								</c:when>
								<c:when test="${myApplyList.applyProjState == 1}">
									취소
								</c:when>
								<c:when test="${myApplyList.applyProjState == 2}">
									지원
								</c:when>
								<c:when test="${myApplyList.applyProjState == 3}">
									제안
								</c:when>
								<c:when test="${myApplyList.applyProjState == 4}">
									대기
								</c:when>
								<c:when test="${myApplyList.applyProjState == 5}">
									승인
								</c:when>
							</c:choose>
							</div>
						</div>
						<div class="apply-table" id="apply-table${status.count}">
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
			</div>
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
					            <c:url value="/myPage/delngManage/registDelng" var="prevPageUrl">
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
					        <c:url value="/myPage/delngManage/registDelng" var="pageUrl">
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
					            <c:url value="/myPage/delngManage/registDelng" var="nextPageUrl">
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
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	
    $(document).on("click", "#contractCount", function(e){
    	var contractCount = $('#contractCount').val();
		if (contractCount == 0) {
			swal('알림', '계약된 거래가 없습니다.', 'warning')
		} else {
			//링크이동으로 가면됨
		}
    })
    $(document).on("click", "#projAddCount", function(e){
    	var projAddCount = $('#projAddCount').attr('data-value');
		if (projAddCount == 0) {
			swal('알림', '등록된 거래가 없습니다.', 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/delngManage/registDelng";
		}
    })
    $(document).on("click", "#recommendCount", function(e){
    	var recommendCount = $('#recommendCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (recommendCount == 0) {
			var text = '';
			if (mem_sort == 1) {
				text = '제안한 거래가 없습니다.';
			}
			if (mem_sort == 2) {
				text = '제안 받은 거래가 없습니다.';
			}
			swal('알림', text, 'warning')
		} else {
			// 페이지 이동 하면 됨
		}
    });
    
    $(document).on("click", "#scrapCount", function(e){
    	var scrapCount = $('#scrapCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (scrapCount == 0) {
			var text = '스크랩한 거래가 없습니다.';
			swal('알림', text, 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/delngManage/scrapList";
		}
    });
    $(document).on("click", "#myApplyCount", function(e){
    	var scrapCount = $('#myApplyCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (scrapCount == 0) {
			var text = '지원한 거래가 없습니다.';
			swal('알림', text, 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/delngManage/myApplyList";
		}
    });
    
    //거래처 찾기 상세페이지로 이동
	$(document).on("click", ".project-title", function(e) {
			var projId = $(this).attr('data-projId');
			var options = 'width=1500, height=1000, status=yes, menubar=no, toolbar=no, resizable=yes';
			window.open(ROOT_URL + "/project/detail?projId=" + projId,"전세계 검증된 판매자를 만나는 곳, 셀러매치",options);
	});
});
</script>
<script type="text/javascript">
$(document).ready(function() {
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
});
</script>