<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
	ul.tabs{
		margin: 0px;
		padding: 0px;
		list-style: none;
	}
	ul.tabs li{
		background: none;
		color: #222;
		display: inline-block;
		padding: 10px 15px;
		cursor: pointer;
	}
	
	ul.tabs li.current{
		background: #ededed;
		color: #222;
	}
	
	.tab-content{
		display: none;
		background: #ededed;
	}
	
	.tab-content.current{
		display: inherit;
	}
.tableTitle {
  width: 1280px;
  height: 80px;
  margin: 97px 0 20px;
  padding: 0 0 24px;
  background-color: #f8f2f9;
}
.aaa{
  width: 44px;
  height: 29px;
  margin: 27px 465px 0 69px;
  font-family: SegoeUI;
  font-size: 22px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.59;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap" style="height: 517px;">
        <h2>이용요금</h2>
        	<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1" data-num="1"><div>공지사항</div></li>
				<li class="tab-link" data-tab="tab-2" data-num="2">FAQ</li>
				<li class="tab-link" data-tab="tab-3" data-num="3">1:1 문의하기</li>
				<li class="tab-link" data-tab="tab-4" data-num="4">간편한 이용방법</li>
				<li class="tab-link" data-tab="tab-5" data-num="5">이용요금</li>
			</ul>
		
			<div id="tab-1" class="tab-content current">
				<table>
					<thead style="border: 1px solid;">
						<tr>
							<th colspan="2" class="tableTitle"><div class="aaa">제목</div></th>
							<th class="tableTitle"><div class="aaa">등록일</div></th>
							<th class="tableTitle"><div class="aaa">조회</div></th>
						</tr>
					</thead>
					<tbody style="border: 1px solid;">
						<c:forEach var="output" items="${output}" varStatus="status">
							<tr>
								<td style="border: 1px solid;">${boardCount - minusCount - status.count +1}</td>
								<td style="border: 1px solid;">${output.boardTitle}</td>
								<td style="border: 1px solid;">${output.boardRegDate}</td>
								<td style="border: 1px solid;">${output.boardHit}</td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr class="footable-paging">
							<td colspan="4">
								<div class="col-lg-12 col-md-12 col-sm12 text-center">
									<ul class="pagination">
										<!-- 페이지 번호 구현 -->
										<%-- 이전 그룹에 대한 링크 --%>
										<c:choose>
											<%-- 이전 그룹으로 이동 가능하다면? --%>
											<c:when test="${pageData.prevPage > 0}">
								            <%-- 이동할 URL 생성 --%>
									            <c:url value="/admin/boardList" var="prevPageUrl">
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
									        <c:url value="/admin/boardList" var="pageUrl">
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
									            <c:url value="/admin/boardList" var="nextPageUrl">
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
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<div>
									<input type="search" id="boardSearch" placeholder="제목 또는 내용으로 검색">
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<div id="tab-2" class="tab-content">
		---- ---- ★------ ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ★-- ---- ---- ------★ ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- ---- ★------ ---- ---- ---- ----
			</div>
			<div id="tab-3" class="tab-content">
		---- ★-- -------- ---- ---- ---- -★- ---- ---- -------- ---- -★- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
			</div>
			<div id="tab-4" class="tab-content">
		---- ★-- -------- ---- ---- ---- -★- ---- ---- -------- ---- -★- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
			</div>
			<div id="tab-5" class="tab-content">
		---- ★-- -------- ---- ---- ---- -★- ---- ---- -------- ---- -★- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
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
<script type="text/javascript">
$(document).ready(function(){
	
	$(document).on("click", "ul.tabs li", function(e){
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/board',
	        data: {
	        	'tabNum' : tabNum
	        },
			success : function(json) {
				//var content = json
	       		//var template = Handlebars.compile($("#seller-list-tmpl").html());
	       		//var html = template(content);
	       		
	       		var page_content = json.pageData
	       		var page_template = Handlebars.compile($("#page-tmpl").html());
	       		var page_html = page_template(page_content);
	       		
	       		$("tfoot").append(page_html);
	       		//$(".search-box").after(html);
			}
		});
	});

});
</script>
<script type="text/x-handlebars-template" id="page-tmpl">
	<div class="rightBox pageBox" style="margin-right: -15px;">
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
</script>