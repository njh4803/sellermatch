<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="../modal/projectAdd.jsp"%>
<%@ include file="../modal/projectEdit.jsp"%>


<!-- bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/division/css/style.css">
<style>
.table-center th{
	text-align: center;
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
                                            <h4>프로젝트 관리</h4>
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
                                                    	<form name="search-form" class="form" method="get" action="${pageContext.request.contextPath}/admin/projectList">
	                                                    	<div class="form-group row">
	                                                    		<div class="col-sm-8">
		                                                    		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#projectModal">프로젝트 등록</button>
		                                                    	</div>
		                                                        <div class="col-sm-4" style="float: right;">
		                                                            <input name="keyword" type="search" class="form-control col-sm-10" placeholder="Search here...">
		                                							<div class="col-sm-2" style="padding: 0;">
			                                                        	<button type="submit" class="btn btn-primary">Search</button>
			                                                        </div>
		                                                        </div>
	                                                    	</div>
	                                                    </form>
                                                    <div class="card-block">
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="simpletable" class="table-center table table-striped table-bordered text-center">
                                                                <thead>
                                                                    <tr>
                                                                        <th>번호</th>
                                                                        <th>프로젝트번호</th>
                                                                        <th>아이디</th>
                                                                        <th>제목</th>
                                                                        <th>회원분류</th>
                                                                        <th>산업분류</th>
                                                                        <th>상품가격</th>
                                                                        <th>판매마진</th>
                                                                        <th>등록지역</th>
                                                                        <th>공급방법</th>
                                                                        <th>모집마감일</th>
                                                                        <th>모집인원</th>
                                                                        <th>상세설명</th>
                                                                        <th>필수요건</th>
                                                                        <th>키워드</th>
                                                                        <!-- <th>상세사진</th> -->
                                                                        <th>첨부파일</th>
                                                                        <th>상품검증</th>
                                                                        <th>프로젝트 상태</th>
                                                                        <th>등록일</th>
                                                                        <th>수정일</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach var="output" items="${output}" varStatus="status">
	                                                                    <tr>
	                                                                    	<td>${output.projIdx}</td>
	                                                                        <td>
	                                                                        	<a href="javascript:void(0)" data-hidden="${output.projIndus}" class="p-modal" data-toggle="modal" data-target="#editModal">${output.projId}</a>		
	                                                                        </td>
	                                                                        <td>${output.projMemId}</td>
	                                                                        <td>${output.projTitle}</td>
	                                                                        <td data-value="${output.projSort}">${output.projSortName}</td>
	                                                                        <td data-value="${output.projIndus}">${output.projIndusName}</td>
	                                                                        <td>${output.projPrice}</td>
	                                                                        <td data-value="${output.projMargin}">${output.projMarginName}</td>
	                                                                        <td data-value="${output.projNation}">${output.projNationName}</td>
	                                                                        <td data-value="${output.projSupplyType}">${output.projSupplyTypeName}</td>
	                                                                        <td>${output.projEndDate}</td>
	                                                                        <td>${output.projRecruitNum}</td>
	                                                                        <td>${output.projDetail}</td>
	                                                                        <td>${output.projRequire}</td>
	                                                                        <td>${output.projKeyword}</td>
	                                                                        <%-- <td>${output.projDetailImg}</td> --%>
	                                                                        <td>${output.projFile}</td>
	                                                                        <td data-value="${output.projProdCerti}">${output.projProdCertiName}</td>
	                                                                        <td data-value="${output.projState}">${output.projStateName}</td>
	                                                                        <td>${output.projRegDate}</td>
	                                                                        <td>${output.projEditDate}</td>
	                                                                        <input type="hidden" value="${output.projDetailImg}">
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
																			            <c:url value="/admin/projectList" var="prevPageUrl">
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
																			        <c:url value="/admin/projectList" var="pageUrl">
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
																			            <c:url value="/admin/projectList" var="nextPageUrl">
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
$(document).on("click",".p-modal",function(event){
	var parent = event.target.parentNode;
	var tr = parent.parentNode;
	var projIdx = tr.children[0].innerText;
	var projId = tr.children[1].innerText;
	var projMemId = tr.children[2].innerText;
	var projTitle = tr.children[3].innerText;
	var projSort = tr.children[4].getAttribute("data-value");
	var projIndus = tr.children[5].getAttribute("data-value");
	var projPrice = tr.children[6].innerText;
	var projMargin = tr.children[7].getAttribute("data-value");
	var projNation = tr.children[8].getAttribute("data-value");
	var projSupplyType = tr.children[9].getAttribute("data-value");
	var projEndDate = tr.children[10].innerText;
	var projRecruitNum = tr.children[11].innerText;
	var projDetail = tr.children[12].innerText;
	var projRequire = tr.children[13].innerText;
	var projKeyword = tr.children[14].innerText;
	/* var projDetailImg = tr.children[15].getAttribute("data-value"); */
	var projFile = tr.children[15].innerText;
	var projProdCerti = tr.children[16].getAttribute("data-value");
	var projState = tr.children[17].getAttribute("data-value");
	var projRegDate = tr.children[18].innerText;
	var projEditDate = tr.children[19].innerText;
	
	
	
	$("#editModal .modal-body #projIdx").val(projIdx);
	$("#editModal .modal-body #projId").val(projId);
	$("#editModal .modal-body #projMemId").val(projMemId);
	$("#editModal .modal-body #projTitle").val(projTitle);
	$("#editModal .modal-body #projSort").val(projSort);
	$("#editModal .modal-body #projIndus").val(projIndus);
	$("#editModal .modal-body #projPrice").val(projPrice);
	$("#editModal .modal-body #projMargin").val(projMargin);
	$("#editModal .modal-body #projNation").val(projNation);
	$("#editModal .modal-body #projSupplyType").val(projSupplyType);
	$("#editModal .modal-body #projEndDate").val(projEndDate);
	$("#editModal .modal-body #projRecruitNum").val(projRecruitNum);
	$("#editModal .modal-body #projDetail").text(projDetail);
	$("#editModal .modal-body #projRequire").val(projRequire);
	
	// 초기화
	$("#editModal .modal-body input[name=projKeyword]").attr('checked', false);
	var projKeywordValue = projKeyword.split(',');
	console.log(projKeywordValue);
	for (var i = 0; i < projKeywordValue.length; i++) {
		
		$("#editModal .modal-body input[name=projKeyword][value="+projKeywordValue[i]+"]").attr('checked', true);
	}
	/* $("#editModal .modal-body #projDetailImg").val(projDetailImg); */
	$("#editModal .modal-body #projFile").val(projFile);
	$("#editModal .modal-body #projProdCerti").val(projProdCerti);
	$("#editModal .modal-body #projState").val(projState);
	$("#editModal .modal-body #projRegDate").val(projRegDate);
	$("#editModal .modal-body #projEditDate").val(projEditDate);
	
	
	
});

</script>
<!-- bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- CKEditor js -->
<script src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
<%@ include file="inc/footer.jsp"%>