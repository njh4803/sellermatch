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
	    			<div class="use-title">이용요금</div>
		    		<div class="use-text">셀러매치 서비스 이용요금 안내입니다.</div>
	    		</div>	
    		</div>
	    	<hr class="use-hr">
	    	<div class="imgBox">
	    		<img class="beta-img" alt="" src="${pageContext.request.contextPath}/assets/img/beta-img.png">
	    		<div class="beta-text">BETA 서비스 중으로<br>
	    			 무료 이용 기간입니다.
	    		</div>
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