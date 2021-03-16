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
	    			<div class="use-title">FAQ</div>
		    		<div class="use-text">셀러매치 이용 중 자주 묻는 질문과 답변을 확인하세요.</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="use-hr">
			<div id="FAQ">
				<div class="board-tabBox">
					<form action="${pageContext.request.contextPath}/usageFee2" id="FAQ-form" class="FAQ-form" data-type="${boardQaType}">
						<input type="search" id="FAQSearch" class="boardSearch" placeholder="검색어를 입력해주세요" value="${keyword}">
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
							<c:forEach var="output" items="${output}">
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ ${output.boardQaType}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>${output.boardTitle}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									${output.boardContents}
								</td>
							</tr>
							<tr></tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div id="FAQ-2" class="FAQ-tab-content">
					<table>
						<tbody>
							<c:forEach var="output" items="${output}">
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ ${output.boardQaType}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>${output.boardTitle}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									${output.boardContents}
								</td>
							</tr>
							<tr></tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div id="FAQ-3" class="FAQ-tab-content">
					<table>
						<tbody>
							<c:forEach var="output" items="${output}">
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ ${output.boardQaType}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>${output.boardTitle}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									${output.boardContents}
								</td>
							</tr>
							<tr></tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div id="FAQ-4" class="FAQ-tab-content">
					<table>
						<tbody>
							<c:forEach var="output" items="${output}">
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ ${output.boardQaType}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>${output.boardTitle}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									${output.boardContents}
								</td>
							</tr>
							<tr></tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div id="FAQ-5" class="FAQ-tab-content">
					<table>
						<tbody>
							<c:forEach var="output" items="${output}">
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ ${output.boardQaType}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>${output.boardTitle}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									${output.boardContents}
								</td>
							</tr>
							<tr></tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
		   	</div>
		</div>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	
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
	       		
	       		$(".partner_bnr3").append(html);
	       		
	    		$('ul.FAQ-tabs li').removeClass('current');
	    		$('.FAQ-tab-content').removeClass('current');
	    		$('#select'+tab_id).addClass('current');
	    		$("#"+tab_id).addClass('current');
			}
		});
	});	
	
	
	$(document).on("click", ".boardTitle", function(e){
		console.log($(this));
		var boardContents = $(this).next();
		console.log(boardContents);
		boardContents.toggle();
	});
	
});
</script>
<script type="text/x-handlebars-template" id="FAQ-tmpl">
			<div id="FAQ">
				<div class="board-tabBox">
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
								<td rowspan="2"><span>Q</span></td>
								<td>[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>{{boardTitle}}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									{{boardContents}}
								</td>
							</tr>
							<tr></tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-2" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>{{boardTitle}}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									{{boardContents}}
								</td>
							</tr>
							<tr></tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-3" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>{{boardTitle}}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									{{boardContents}}
								</td>
							</tr>
							<tr></tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-4" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>{{boardTitle}}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									{{boardContents}}
								</td>
							</tr>
							<tr></tr>
							{{/output}}
						</tbody>
					</table>
				</div>
				<div id="FAQ-5" class="FAQ-tab-content">
					<table>
						<tbody>
							{{#output}}
							<tr>
								<td rowspan="2"><span>Q</span></td>
								<td>[ {{boardQaType}}관련 ]</td>
							</tr>
							<tr class="boardTitle">
								<td>{{boardTitle}}</td>
							</tr>
							<tr class="boardContents">
								<td colspan="2">
									{{boardContents}}
								</td>
							</tr>
							<tr></tr>
							{{/output}}
						</tbody>
					</table>
				</div>
			<div>
</script>