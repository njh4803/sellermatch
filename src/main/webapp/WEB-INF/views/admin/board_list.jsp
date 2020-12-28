<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="../modal/boardEdit.jsp"%>
<%@ include file="../modal/boardAdd.jsp"%>

<!-- bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/division/css/style.css">
<style>
.table-center th{
	text-align: center;
}

#simpletable > tbody > tr > td .checkbox-fade{
	margin: 0;
}
#simpletable > tbody > tr > td .checkbox-fade label{
	margin: 0;
}
#simpletable > tbody > tr > td .checkbox-fade .cr{
	margin: 0;
}
#simpletable > thead > tr > th .checkbox-fade{
	margin: 0;
}
#simpletable > thead > tr > th .checkbox-fade label{
	margin: 0;
}
#simpletable > thead > tr > th .checkbox-fade .cr{
	margin: 0;
}

</style>
<%@ include file="inc/navigation.jsp"%>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div></div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-header start -->
                                    <div class="page-header">
                                        <div class="page-header-title">
                                            <h4>게시판 관리</h4>
                                        </div>
                                        <!-- <div class="page-header-breadcrumb">
                                            <ul class="breadcrumb-title">
                                                <li class="breadcrumb-item">
                                                    <a href="index.html">
                                                        <i class="icofont icofont-home"></i>
                                                    </a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Data Table</a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Basic Initialization</a>
                                                </li>
                                            </ul>
                                        </div> -->
                                    </div>
                                    <!-- Page-header end -->
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Zero config.table start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                    	<!-- Trigger the modal with a button -->
                                                    	<form name="search-form" class="form" method="get" action="${pageContext.request.contextPath}/admin/boardList">
															<div class="form-group row">
	                                                    		<div class="col-sm-8">
		                                                    		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#boardAddModal">게시판 등록</button>
		                                                    		<button id="B-delBtn" type="button" class="btn btn-info btn-lg">선택 삭제</button>
		                                                    	</div>
		                                                        <div class="col-sm-4" style="float: right;">
		                                                            <input name="keyword" type="search" class="form-control col-sm-10" placeholder="Search here...">
		                                							<div class="col-sm-2" style="padding: 0;">
			                                                        	<button type="submit" class="btn btn-primary">Search</button>
			                                                        </div>
		                                                        </div>
	                                                    	</div>
                                                    	</form>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="simpletable" class="table-center table table-striped table-bordered text-center">
                                                                <thead>
                                                                    <tr>
                                                                    	<th>
                                                                    		<div class="checkbox-fade fade-in-primary">
			                                                                    <label>
			                                                                    	<input id="checkAll" type="checkbox" name="sellerCh" value="1">
			                                                                    	<span class="cr">
			                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
			                                                                    	</span>
			                                                                    </label>
		                                                                	</div>
                                                                    	</th>
                                                                        <th>번호</th>
                                                                        <th>게시판번호</th>
                                                                        <th>제목</th>
                                                                        <th>내용</th>
                                                                        <th>작성자</th>
                                                                        <th>게시판 유형</th>
                                                                        <th>질문유형</th>
                                                                        <th>이메일</th>
                                                                        <th>조회수</th>
                                                                        <th>등록일시</th>
                                                                        <th>수정일시</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach var="output" items="${output}" varStatus="status">
	                                                                    <tr>
	                                                                    	<td>
	                                                                    		<div class="checkbox-fade fade-in-primary">
				                                                                    <label>
				                                                                    	<input class="check" type="checkbox">
				                                                                    	<span class="cr">
				                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
				                                                                    	</span>
				                                                                    </label>
			                                                                	</div>
	                                                                    	</td>
	                                                                    	<td>${output.boardIdx}</td>
	                                                                        <td>
	                                                                        	<a href="javascript:void(0)" id="boardId${status.index}" class="b-modal" data-toggle="modal" data-target="#boardModal">${output.boardId}</a>		
	                                                                        </td>
	                                                                        <td>${output.boardTitle}</td>
	                                                                        <td>${output.boardContents}</td>
	                                                                        <td>${output.boardWriter}</td>
	                                                                        <td data-value="${output.boardType}">${output.boardTypeName}</td>
	                                                                        <td data-value="${output.boardQaType}">
	                                                                        	<c:if test="${output.boardQaType != null}">
	                                                                        		${output.boardQaTypeName}
	                                                                        	</c:if>
	                                                                        </td>
	                                                                        <td>${output.boardEmail}</td>
	                                                                        <td>${output.boardHit}</td>
	                                                                        <td>${output.boardRegDate}</td>
	                                                                        <td>${output.boardEditDate}</td>
	                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                                <tfoot>
                                                                	<tr class="footable-paging">
                                                                		<td colspan="21">
                                                                			<!-- <ul class="pagination">
                                                                				<li class="footable-page-nav disabled" data-page="first">
                                                                					<a class="footable-page-link" href="#">
                                                                						<font style="vertical-align: inherit;">
                                                                						<font style="vertical-align: inherit;">«</font></font>
                                                                					</a>
                                                                				</li>
                                                                				<li class="footable-page-nav disabled" data-page="prev">
                                                                					<a class="footable-page-link" href="#">
                                                                						<font style="vertical-align: inherit;">
                                                                						<font style="vertical-align: inherit;">‹</font></font>
                                                                					</a>
                                                                				</li>
                                                                				<li class="footable-page visible active" data-page="1">
                                                                					<a class="footable-page-link" href="#">
                                                                						<font style="vertical-align: inherit;">
                                                                						<font style="vertical-align: inherit;">1</font></font>
                                                                					</a>
                                                                				</li>
                                                                				<li class="footable-page visible" data-page="2">
                                                                					<a class="footable-page-link" href="#">
                                                                						<font style="vertical-align: inherit;">
                                                                						<font style="vertical-align: inherit;">2</font></font>
                                                                					</a>
                                                                				</li>
                                                                				<li class="footable-page-nav" data-page="next">
                                                                					<a class="footable-page-link" href="#">
                                                                						<font style="vertical-align: inherit;">
                                                                						<font style="vertical-align: inherit;">›</font></font>
                                                                					</a>
                                                                				</li>
                                                                				<li class="footable-page-nav" data-page="last">
                                                                					<a class="footable-page-link" href="#">
                                                                						<font style="vertical-align: inherit;">
                                                                						<font style="vertical-align: inherit;">»</font></font>
                                                                					</a>
                                                                				</li>
                                                                			</ul>
                                                                			<div class="divider"></div>
                                                                			<span class="label label-default">
                                                                				<font style="vertical-align: inherit;">
                                                                				<font style="vertical-align: inherit;">1/2</font></font>
                                                                			</span> -->
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
                                                                </tfoot>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Zero config.table end -->
                                                <!-- Language - Comma Decimal Place table end -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
$(document).on("click",".b-modal",function(event){
 	var parent = event.target.parentNode;
	var tr = parent.parentNode;
	var boardIdx = tr.children[1].innerText;
	var boardId = tr.children[2].innerText;
	var boardTitle = tr.children[3].innerText;
	var boardContents = tr.children[4].innerText;
	var boardWriter = tr.children[5].innerText;
	var boardType = tr.children[6].getAttribute("data-value");
	var boardQaType = tr.children[7].getAttribute("data-value");
	var boardEmail = tr.children[8].innerText;
	var boardHit = tr.children[9].innerText;
	var boardRegDate = tr.children[10].innerText;
	var boardEditDate = tr.children[11].innerText;
	
	$("#boardModal .modal-body #boardIdx").val(boardIdx);
	$("#boardModal .modal-body #boardId").val(boardId);
	$("#boardModal .modal-body #boardTitle").val(boardTitle);
	$("#boardModal .modal-body #boardContents").val(boardContents);
	$("#boardModal .modal-body #boardWriter").val(boardWriter);
	$("#boardModal .modal-body #boardType").val(boardType);
	$("#boardModal .modal-body #boardQaType").val(boardQaType);
	$("#boardModal .modal-body #boardEmail").val(boardEmail);
	$("#boardModal .modal-body #boardHit").val(boardHit);
	$("#boardModal .modal-body #boardRegDate").val(boardRegDate);
	$("#boardModal .modal-body #boardEditDate").val(boardEditDate);
	
});
$(function(){
	//체크박스 전체선택
	$("#checkAll").on("click",function(){
		var checked = this.checked;
		console.log("checkAll = " + checked);
		console.log("check = " + $('.check').val());
		$('.check').each(function(){
			this.checked = checked;
		});
	});
	
	//체크박스 단일선택
	$(".check").click(function(){
		//체크박스 총 갯수
		total_len = $(".check").length;
		//선택된 갯수
		var len = $(".check:checked").length;
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$("#checkAll").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$("#checkAll").prop('checked', false);	
		}
	});
	
	//선택 상품 삭제
	$("#B-delBtn").click(function(){
		const boardId = [];
		const obj = $(".check:checked");
		
		if (obj.length < 1) {
            swal('알림', '삭제하실 게시판을 선택해 주세요.');
            return false;
        }
		
        swal({
            title: '확인',
            text: '정말 삭제하시겠습니까?', 
            type: "question",
            showCancelButton: true
        }).then(function(result) {
            if (result.value) {
                obj.each(function(i, v) {
                	boardId.push($('#boardId'+i).text());
                });
                console.log("boardId = " + boardId);
                $.delete(ROOT_URL + "/admin/board", {
                	boardId: boardId,
                }, function(json) {
                    swal({
                        title: '확인',
                        text: '삭제되었습니다.'
                    }).then(function(result) {
                        window.location.href = ROOT_URL+"/admin/boardList";
                    });
                });
            }
        });		
	});
});


</script>
<!-- bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- CKEditor js -->
<script src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
<%@ include file="inc/footer.jsp"%>