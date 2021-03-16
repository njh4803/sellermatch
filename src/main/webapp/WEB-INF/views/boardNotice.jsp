<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/usageFee.css" rel="stylesheet" type="text/css">

<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="use-top-left">
	    			<div class="use-title">공지사항</div>
		    		<div class="use-text">셀러매치 서비스의 새소식, 오류, 장애, 기타 공지사항을 안내드립니다.</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="use-hr">
			<table id="noticeTable">
				<thead>
					<tr>
						<th class="notice-sort">분류</th>
						<th class="notice-title">제목</th>
						<th class="notice-regdate">등록일</th>
						<th class="notice-hit">조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="output" items="${output}" varStatus="status">
					<tr>
						<td>${boardCount - minusCount - status.count +1}</td>
						<td class="noticeDetail" data-id="${output.boardId}">${output.boardTitle}</td>
						<td>${output.boardRegDate}</td>
						<td>${output.boardHit}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
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
			<div>
				<form action="${pageContext.request.contextPath}/usageFee2" id="notice-form">
					<input type="search" id="noticeSearch" class="boardSearch" placeholder="제목 또는 내용으로 검색">
					<button type="submit" class="searchBtn"></button>
				</form>
			</div>
	    </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("submit", "#notice-form", function(e){
		e.preventDefault();
		
		var keyword = $('#noticeSearch').val();
		// 초기화
		$('#noticeTable').remove();
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/usageFee2',
	        data: {
	        	'tabNum' : 1,
	        	'keyword': keyword,
	        },
			success : function(json) {
				console.log(json)
				var content = {
					keyword : json.keyword,
					boardCount : json.boardCount,
					minusCount : json.minusCount,
					output : json.output
				} 
	       		var template = Handlebars.compile($("#notice-tmpl").html());
	       		var html = template(content);
	       		 
	       		
	       		var page_content = json.pageData
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$("#tab-1").append(html);
	       		$("tfoot").prepend(page_html);
	       		
			}
		});
	});
	
	$(document).on("click", ".pageMove", function(){
		var keyword = $('#noticeSearch').val();
		var page = $(this)[0].firstChild.data
		// 초기화
		$('#noticeTable').remove();
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/usageFee2',
	        data: {
	        	'tabNum' : 1,
	        	'keyword': keyword,
	        	'page' : page,
	        },
			success : function(json) {
				console.log(json)
				var content = {
					keyword : json.keyword,
					boardCount : json.boardCount,
					minusCount : json.minusCount,
					output : json.output
				} 
	       		var template = Handlebars.compile($("#notice-tmpl").html());
	       		var html = template(content);
	       		 
	       		
	       		var page_content = json.pageData
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$("#tab-1").append(html);
	       		$("tfoot").prepend(page_html);
	       		
			}
		});
	});

	$(document).on("click", ".noticeDetail", function(){
		var boardId = $(this).data('id');
		window.location = ROOT_URL + '/notice?boardId='+boardId;
	});
});
</script>