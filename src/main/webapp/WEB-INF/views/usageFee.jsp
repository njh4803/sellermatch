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

<!-- 		</div>
			<div id="tab-2" class="tab-content2">
			</div>
			<div id="tab-3" class="tab-content2">
			</div>
			<div id="tab-4" class="tab-content2">

			</div>
			<div id="tab-5" class="tab-content2">
				<div class="tabBox">
		        	<div class="tab-title">이용요금</div>
		        	<div class="tab-text">셀러매치 서비스 이용요금 안내입니다.</div>
		        </div>
				<div style="width:1115px;height: 579px;margin:20px 82px 201px 83px; padding: 258px 0 257px;border: solid 1px #cccccc;background-color: #ffffff;text-align: center;">
					<div style="display: inline-block;font-size: 20px;font-weight: bold;font-stretch: normal;font-style: normal;letter-spacing: normal;color: #000000;">
						BATA 서비스 중으로 <br> 무료 이용기간입니다
					</div>
				</div>
			</div>
    </div>
</div> -->
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
		// 초기화
		$('#OneToOne').remove();
		// 초기화
		$('#show1').remove();
		$('#show1').remove();
		
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		$('ul.tabs li').removeClass('current');
		$('.tab-content2').removeClass('current');

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
		
		if (tab_id == 'tab-3') {
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/usageFee2',
		        data: {
		        	'tabNum' : 3,
		        	'boardQaType': '',
		        },
				success : function(json) {
					var content = {
							
					} 
		       		var template = Handlebars.compile($("#OneToOne-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#tab-3").append(html);
				}
			});
		}
		
		if (tab_id == 'tab-4') {
			var template = Handlebars.compile($("#howUse-tmpl").html());
       		var html = template();
       		
       		$("#tab-4").append(html);
		}
	});
	

	
	

	


	
	$(document).on("click", "#boardEmail3", function(e){
		var boardEmail3 = $('#boardEmail3').val();
		$('#boardEmail2').val(boardEmail3);
	});
	
	// 유효성 검사
	$(document).on("focus", "#OneToOne-form", function(e){
	    $('#OneToOne-form').validate({
			
	        rules: {
	            boardTitle: 'required',
	            boardContents: 'required',
	            
	        },
	        messages: {
	            boardTitle: '문의제목을 입력해 주세요.',
	            boardContents: '문의내용을 입력해주세요',
	        }
	    });
	});
	$(document).on("submit", "#OneToOne-form", function(e){
		e.preventDefault();
		
	    $('#OneToOne-form').ajaxForm({
	        // submit 전에 호출된다.
	        beforeSubmit: function(arr, form, options) {
	            return $(form).valid();
	        },
	        success: function(json) {
				swal('알림', '문의가 접수되었습니다.', 'success').then(function(result) {    					
		            if (result.value) {
		            	window.location = ROOT_URL+ "/usageFee"
		            }
		        });
	        },
	    });
	});
	
	$(document).on("click", "#spMember", function(e){
		$("#show1").remove();
		var html = '<img id="show1" alt="" src="${pageContext.request.contextPath}/assets/img/이용방법02.PNG">';
		$("#tab-4").append(html);
	});
	
	$(document).on("click", "#ppMember", function(e){
		$("#show1").remove();
		var html = '<img id="show1" alt="" src="${pageContext.request.contextPath}/assets/img/이용방법03.PNG">';
		$("#tab-4").append(html);
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

<script type="text/x-handlebars-template" id="OneToOne-tmpl">

</script>
<script type="text/x-handlebars-template" id="howUse-tmpl">
			<div id="OneToOne">
				<div class="board-tabBox" style="height:250px;">
		        	<div class="tab-title">간편한 이용방법</div>
		        	<div class="tab-text">아주 쉽게, 효율적으로 이용해보세요! 판매자/공급자 찾기가 쉬워집니다</div>
		        </div>
			<div>
				<div id="show1">
					<div class="howUse-box1">
						<div>당신은 누구인가요? 선택해주세요!</div>
					</div>
					<div class="howUse-box2" id="spMember">
						<img alt="" src="${pageContext.request.contextPath}/assets/img/seller01.png">
						<span>판매자 회원</span>
					</div>
					<div class="howUse-box3">
					</div>
					<div class="howUse-box2" id="ppMember">
						<img alt="" src="${pageContext.request.contextPath}/assets/img/seller02.png">
						<span>공급자 회원</span>
					</div>
				</div>
</script>