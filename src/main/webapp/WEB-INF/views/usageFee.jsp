<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
	ul.tabs{
		list-style: none;
		text-align: left;
	}
	ul.tabs li{
		background: none;
		color: #222;
		display: inline-block;
		padding: 10px 15px;
		cursor: pointer;
		width: 256px;
		height: 40px;
		border: solid 1px #707070;
		border-bottom: solid 3px #000000;
		background-color: #ffffff;
		margin-right: -4px;
	}
	
	ul.tabs li.current{
		background: #ededed;
		color: #222;
		width: 256px;
		height: 40px;
		border: solid 1px #707070;
		border-bottom: solid 3px #000000;
		background-color: #8333ab;
		margin-right: -4px;
	}
	ul.tabs li .tabTitle{
		font-size: 15px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		letter-spacing: normal;
		text-align: center;
		color: #000000;
	}
	ul.tabs li.current .tabTitle{
		font-size: 15px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		letter-spacing: normal;
		text-align: center;
		color: #ffffff;
	}
	.tab-content{
		display: none;
		background: #ededed;
	}
	
	.tab-content.current{
		display: inherit;
	}
	/* 공지사항 */
	.noticeDetail{
		cursor: pointer;
	}
	.tabBox{
		width: 1280px;
		height: 270px;
		border-bottom: solid 3px #000000;
		background-color: #ffffff;
		padding-top: 60px;	
	}
	.tab-title{
		margin: 0 206px 15px 205px;
		font-size: 50px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		line-height: 1.34;
		letter-spacing: normal;
		text-align: center;
		color: #000000;
	}
	.tab-text{
		margin: 15px 0 0;
		font-size: 15px;
		font-weight: normal;
		font-stretch: normal;
		font-style: normal;
		line-height: 1.35;
		letter-spacing: normal;
		color: #707070;	
	}
	.notice-title{
	  width: 900px;
	  height: 60px;
	  margin: 270px 0 57px;
	  padding: 17px 330px 16px;
	  background-color: #f8f2f9;
	}
	#noticeTable thead th {
		font-size: 15px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		letter-spacing: normal;
		text-align: center;
		color: #000000;
	}
	#noticeTable tbody td {
		  height: 60px;
		  border-bottom: solid 1px #707070;
		  background-color: #ffffff;
		  font-size: 15px;
		  font-weight: normal;
		  font-stretch: normal;
		  font-style: normal;
		  letter-spacing: normal;
		  text-align: center;
		  color: #000000;
	}
	 
	#noticeTable tbody td:nth-child(1) {
		font-weight: bold;
		width: 200px;
	 }
	 #noticeTable tbody td:nth-child(2) {
		text-align: left;
		padding-left: 20px;
	 }
	.notice-regdate{
		width: 240px;
		height: 60px;
		background-color: #f8f2f9;
	}
	.notice-hit{
		width: 140px;
		height: 60px;
		background-color: #f8f2f9;
	}
	
	input::placeholder {
	  font-size: 15px;
	  font-weight: normal;
	  font-stretch: normal;
	  font-style: normal;
	  letter-spacing: normal;
	  color: #818181;
	  text-align: center;
	}
	/* 자주하는질문 */
	.FAQ-tabBox{
		width: 1280px;
		height: 500px;
		border-bottom: solid 3px #000000;
		background-color: #ffffff;
		padding-top: 60px;	
	}
	ul.FAQ-tabs{
		margin-top: 49px;
		padding: 0px;
		list-style: none;
	}
	ul.FAQ-tabs li{
		width: 256px;
		height: 60px;
		border: solid 1px #c9c9c9;
		background-color: #ffffff;
		display: inline-block;
		cursor: pointer;
		margin-right: -4px;
		padding: 19.5px;
	}
	ul.FAQ-tabs li .tabTitle{
		font-size: 17px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		letter-spacing: normal;
		text-align: center;
		color: #000000;
	}
	ul.FAQ-tabs li.current .tabTitle{
		color: #3f0088;
	}
	.FAQ-tab-content{
		display: none;
		background: #ededed;
	}
	
	.FAQ-tab-content.current{
		display: inherit;
	}
	
	ul.FAQ-tabs li.current{
		width: 256px;
		height: 60px;
		border: solid 1px #c9c9c9;
		background-color: #ffffff;
	}
	.FAQ-form{
	  width: 1280px;
	  height: 150px;
	  background-color: #f8f2f9;
	  margin-top: 38px;
	  padding: 45px;
	}
.boardSearch{
	width: 600px;
	height: 50px;
	border: solid 1px #707070;
	background-color: #ffffff;
	margin-bottom: 66px;
	margin-top: 16px;
}

.FAQ-form .boardSearch{
	width: 600px;
	height: 50px;
	border: solid 1px #707070;
	background-color: #ffffff;
	margin-bottom: 0;
	margin-top: 0;
}

tfoot{
	background-color: #fff;
}
.searchBtn{
    background-image: url(./local_assets/img/검색아이콘.jpg);
    background-position: center;
    background-repeat: no-repeat;
    box-sizing: border-box;
    outline: none;
    position: relative;
    width: 33px;
    height: 30px;
    margin: 6px;
    right: 51px;
    top: 8px;
}
/* 페이징 CSS */
ul.pagination>li>a {
	position: relative;
    float: left;
    padding: 0;
    margin: 0 13.5px;
    background-color: #fff;
    border: none;
	font-size: 15px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: left;
	color: #000000;
}
.pagination{
	margin-top: 75.5px;
}
.pagination>li:first-child>a, .pagination>li:first-child>span{
	margin-left: 13.5px;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
        	<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1" data-num="1"><div class="tabTitle">공지사항</div></li>
				<li class="tab-link" data-tab="tab-2" data-num="2"><div class="tabTitle">FAQ</div></li>
				<li class="tab-link" data-tab="tab-3" data-num="3"><div class="tabTitle">1:1 문의하기</div></li>
				<li class="tab-link" data-tab="tab-4" data-num="4"><div class="tabTitle">간편한 이용방법</div></li>
				<li class="tab-link" data-tab="tab-5" data-num="5"><div class="tabTitle">이용요금</div></li>
			</ul>
		
			<div id="tab-1" class="tab-content current">
				<div class="tabBox">
		        	<div class="tab-title">공지사항</div>
		        	<div class="tab-text">셀러매치 서비스의 새소식, 오류, 장애, 기타 공지사항을 안내드립니다</div>
		        </div>
				<table id="noticeTable">
					<thead>
					<tr>
						<th colspan="2" class="notice-title">제목</th>
						<th class="notice-regdate">등록일</th>
						<th class="notice-hit">조회</th>
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
				<tfoot>
					<tr class="footable-paging">
						<td colspan="4">
							<div class="text-center">
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
							            <li><a href="${prevPageUrl}">&lt; 이전</a></li>
							        </c:when>
							        <c:otherwise>
							            <li><a>&lt; 이전</a></li>
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
							            <li><a href="${nextPageUrl}">다음 &gt;</a></li>
							        </c:when>
							        <c:otherwise>
							            <li><a>다음 &gt;</a></li>
							        </c:otherwise>
							    </c:choose>
							</ul>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<div>
							<form action="${pageContext.request.contextPath}/usageFee2" id="notice-form">
								<input type="search" id="noticeSearch" class="boardSearch" placeholder="제목 또는 내용으로 검색">
								<button type="submit" class="searchBtn"></button>
							</form>
						</div>
					</td>
				</tr>
			</tfoot>
			</table>
		</div>
			<div id="tab-2" class="tab-content">
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

Handlebars.registerHelper('createNum', function (boardCount, minusCount, index) {
	var add = boardCount - minusCount - (index+1) +1
    return add;
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
		
		var keyword = $('#noticeSearch').val();
		
		// 초기화
		$('#noticeTable').remove();
		// 초기화
		$('#FAQ').remove();
		
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
		if (tab_id == 'tab-1') {
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/usageFee2',
		        data: {
		        	'tabNum' : 1,
		        	'keyword': keyword,
		        },
				success : function(json) {
					var content = {
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
		}
		
		if (tab_id == 'tab-2') {
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/usageFee2',
		        data: {
		        	'tabNum' : 2,
		        	'keyword': keyword,
		        	'boardQaType': '',
		        },
				success : function(json) {
					console.log(json.output)
					var content = {
						output : json.output
					} 
		       		var template = Handlebars.compile($("#FAQ-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#tab-2").append(html);
				}
			});
		}
	});
	
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
	
	
	$(document).on("click", "ul.FAQ-tabs li", function(e){

		
		var tab_id = $(this).attr('data-tab');
		var keyword = $('#FAQSearch').val();
		var boardQaType = $(this).data('type');
		// 초기화
		$('#FAQ').remove();
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/usageFee2',
	        data: {
	        	'tabNum' : 2,
	        	'keyword': keyword,
	        	'boardQaType': boardQaType,
	        },
			success : function(json) {
				console.log(json.output)
				var content = {
					output : json.output,
					FAQType : json.output.boardQaType
				} 
	       		var template = Handlebars.compile($("#FAQ-tmpl").html());
	       		var html = template(content);
	       		
	       		$("#tab-2").append(html);
	       		
	    		$('ul.FAQ-tabs li').removeClass('current');
	    		$('.FAQ-tab-content').removeClass('current');
	    		$('#select'+tab_id).addClass('current');
	    		$("#"+tab_id).addClass('current');
			}
		});

		
	});
	
	$(document).on("submit", "#FAQ-form", function(e){
		e.preventDefault();
		
		var keyword = $('#FAQSearch').val();
		var boardQaType = $('.FAQ-tab-link.current').data('type');
		var tab_id = $('.FAQ-tab-content.current').attr('id');
		// 초기화
		$('#FAQ').remove();
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/usageFee2',
	        data: {
	        	'tabNum' : 2,
	        	'keyword': keyword,
	        	'boardQaType': boardQaType,
	        },
			success : function(json) {
				console.log(json)
				var content = {
					keyword : json.keyword,
					output : json.output,
					FAQType : json.output.boardQaType
				} 
	       		var template = Handlebars.compile($("#FAQ-tmpl").html());
	       		var html = template(content);
	       		
	       		$("#tab-2").append(html);
	       		
	    		$('ul.FAQ-tabs li').removeClass('current');
	    		$('.FAQ-tab-content').removeClass('current');
	    		$('#select'+tab_id).addClass('current');
	    		$("#"+tab_id).addClass('current');
			}
		});
	});
	
});
</script>
<script type="text/x-handlebars-template" id="page-tmpl">
<tr class="footable-paging">
	<td colspan="4">
		<div class="col-lg-12 col-md-12 col-sm12 text-center">
			<ul class="pagination">
		        {{#ifCond prevPage '>' 0}}
		            <li><a href="javascript:void(0)" class="pageMove" value="{{prevPage}}">&lt; 이전</a></li>
		        {{else}}
		            <li><a>&lt; 이전</a></li>
		        {{/ifCond}}
		        {{creatPage startPage endPage nowPage}}
			    {{#ifCond nextPage '>' 0}}
		            <li><a href="javascript:void(0)" class="pageMove" value="{{nextPage}}">다음 &gt;</a></li>
		        {{else}}
		            <li><a>다음 &gt;</a></li>
		        {{/ifCond}}
			</ul>
		</div>
	</td>
</tr>
</script>
<script type="text/x-handlebars-template" id="notice-tmpl">
<table id="noticeTable">
	<thead>
		<tr>
			<th colspan="2" class="notice-title"><div class="notice">제목</div></th>
			<th class="notice-regdate">등록일</th>
			<th class="notice-hit">조회</th>
		</tr>
	</thead>
	<tbody>
		{{#output}}
			<tr>
				<td>{{createNum ../boardCount ../minusCount @key}}</td>
				<td class="noticeDetail" data-id="{{boardId}}">{{boardTitle}}</td>
				<td>{{boardRegDate}}</td>
				<td>{{boardHit}}</td>
			</tr>
		{{/output}}
	</tbody>
	<tfoot>
		<tr>
			<td colspan="4">
				<div>
					<form action="${pageContext.request.contextPath}/usageFee2" id="notice-form">
						<input type="search" id="noticeSearch" class="boardSearch" value="{{keyword}}" placeholder="제목 또는 내용으로 검색">
						<button type="submit" class="searchBtn"></button>
					</form>
				</div>
			</td>
		</tr>
	</tfoot>
</table>
</script>
<script type="text/x-handlebars-template" id="FAQ-tmpl">
			<div id="FAQ">
				<div class="FAQ-tabBox">
		        	<div class="tab-title">FAQ</div>
		        	<div class="tab-text">셀러매치 이용 중 자주묻는 질문과 답변을 확인해보세요</div>
					<form action="${pageContext.request.contextPath}/usageFee2" id="FAQ-form" class="FAQ-form" data-type="{{FAQType}}">
						<input type="search" id="FAQSearch" class="boardSearch" placeholder="검색어를 입력해주세요" value="{{keyword}}">
						<button type="submit" class="searchBtn"></button>
					</form>
					<ul class="FAQ-tabs">
						<li class="FAQ-tab-link current" data-tab="FAQ-1" id="selectFAQ-1" data-type=""><div class="tabTitle">전체</div></li>
						<li class="FAQ-tab-link" data-tab="FAQ-2" id="selectFAQ-2" data-type="회원"><div class="tabTitle">회원관련</div></li>
						<li class="FAQ-tab-link" data-tab="FAQ-3" id="selectFAQ-3" data-type="프로젝트"><div class="tabTitle">프로젝트관련</div></li>
						<li class="FAQ-tab-link" data-tab="FAQ-4" id="selectFAQ-4" data-type="시스템"><div class="tabTitle">시스템관련</div></li>
						<li class="FAQ-tab-link" data-tab="FAQ-5" id="selectFAQ-5" data-type="기타"><div class="tabTitle">기타</div></li>
					</ul>
		        </div>
				<div id="FAQ-1" class="FAQ-tab-content current">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2" style="border: 1px solid;">이미지</td>
								<td style="border: 1px solid;">[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr>
								<td style="border: 1px solid;">{{boardTitle}}</td>
							</tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-2" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2" style="border: 1px solid;">이미지</td>
								<td style="border: 1px solid;">[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr>
								<td style="border: 1px solid;">{{boardTitle}}</td>
							</tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-3" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2" style="border: 1px solid;">이미지</td>
								<td style="border: 1px solid;">[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr>
								<td style="border: 1px solid;">{{boardTitle}}</td>
							</tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-4" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2" style="border: 1px solid;">이미지</td>
								<td style="border: 1px solid;">[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr>
								<td style="border: 1px solid;">{{boardTitle}}</td>
							</tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-5" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2" style="border: 1px solid;">이미지</td>
								<td style="border: 1px solid;">[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr>
								<td style="border: 1px solid;">{{boardTitle}}</td>
							</tr>
							{{/output}}
						</tbody>
					</table>
				</div>
			<div>
</script>