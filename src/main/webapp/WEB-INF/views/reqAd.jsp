<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/boardFree.css" rel="stylesheet" type="text/css">

<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="use-top-left">
	    			<div class="use-title">홍보요청</div>
		    		<div class="use-text">매칭을 홍보하여 빠르게 거래처를 찾아보세요.</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="use-hr">
			<table id="boardTable">
				<thead>
					<tr>
						<th class="board-no">번호</th>
						<th class="board-title">제목</th>
						<th class="board-writer">작성자</th>
						<th class="board-regdate">등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="outputTopNotice" items="${outputTopNotice}" varStatus="status">
					<tr>
						<td class="useTopNotice">공지사항</td>
						<td class="noticeTopDetail" data-id="${outputTopNotice.boardId}">${outputTopNotice.boardTitle}</td>
						<td>관리자</td>
						<td>${outputTopNotice.boardRegDate}</td>
					</tr>
				</c:forEach>
				<c:forEach var="output" items="${output}" varStatus="status">
					<tr>
						<td>${boardCount - minusCount - status.count +1} </td>
						<td class="boardDetail" data-id="${output.boardId}">${output.boardTitle}
							<c:if test="${output.replyCount >0}">
								<label style="color:#ff540f;">&nbsp&nbsp[${output.replyCount}]</label>
							</c:if>
						</td>
						<td>
							<c:if test="${output.boardWriterSort=='2'}">
							<span class="memSort">판매자</span>
							</c:if>
							<c:if test="${output.boardWriterSort=='1'}">
							<span class="memSort producer">공급자</span>
							</c:if>
								${output.boardWriterNick}
						</td>
						<td>${output.boardRegDate}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div>
				<button class="board-write">글쓰기</button>
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
					            <c:url value="/board?boardType=4" var="prevPageUrl">
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
					        <c:url value="/board?boardType=4" var="pageUrl">
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
					            <c:url value="/board?boardType=4" var="nextPageUrl">
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
	$(document).on("submit", "#board-form", function(e){
		e.preventDefault();
		
		var keyword = $('#boardSearch').val();
		// 초기화
		$('#boardTable').remove();
		
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
	       		var template = Handlebars.compile($("#board-tmpl").html());
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
		var keyword = $('#boardSearch').val();
		var page = $(this)[0].firstChild.data
		// 초기화
		$('#boardTable').remove();
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/usageFee2',
	        data: {
	        	'tabNum' : 1,
	        	'keyword': keyword,
	        	'page' : page,
	        },
			success : function(json) {
				var content = {
					keyword : json.keyword,
					boardCount : json.boardCount,
					minusCount : json.minusCount,
					output : json.output
				} 
	       		var template = Handlebars.compile($("#board-tmpl").html());
	       		var html = template(content);
	       		 
	       		
	       		var page_content = json.pageData
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$("#tab-1").append(html);
	       		$("tfoot").prepend(page_html);
	       		
			}
		});
	});

	$(document).on("click", ".boardDetail", function(){
		var boardId = $(this).data('id');
		window.location = ROOT_URL + '/board/reqAdDetail?boardId='+boardId;
	});
	$(document).on("click", ".noticeTopDetail", function(){
		var boardId = $(this).data('id');
		window.location = ROOT_URL + '/board/reqAdDetail?boardId='+boardId;
	});
	$(document).on("click", ".board-write", function(){
		var login_id = $('.projectInsert').data('member');
		if (login_id == '') {
			swal({
				customClass: 'swalcustom',
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
		} else {
			window.location = ROOT_URL + '/board/reqAdBoardWrite';
		}
	});
});
</script>