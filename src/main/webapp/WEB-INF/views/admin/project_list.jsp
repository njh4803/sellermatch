<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%> 
<!-- bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
.table-center th{
	text-align: center;
}

/* modal css */
*{margin:0; padding:0;}
#modal{
  display:none;
  position:fixed; 
  width:100%; height:100%;
  top:0; left:0; 
  background:rgba(0,0,0,0.3);
}
.modal-con{
  display:none;
  position:fixed;
  top:50%; left:50%;
  transform: translate(-50%,-50%);
  max-width: 60%;
  min-height: 30%;
  background:#fff;
}
.modal-con .title{
  font-size:20px; 
  padding: 20px; 
  background : #1abc9c;
}
.modal-con .con{
  font-size:15px; line-height:1.3;
  padding: 30px;
}
.modal-con .close{
  display:block;
  position:absolute;
  width:30px; height:30px;
  border-radius:50%; 
  border: 3px solid #000;
  text-align:center; line-height: 30px;
  text-decoration:none;
  color:#000; font-size:20px; font-weight: bold;
  right:10px; top:10px;
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
                                            <h4>Basic DataTables</h4>
                                            <span>Basic initialisation of DataTables</span>
                                        </div>
                                        <div class="page-header-breadcrumb">
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
                                        </div>
                                    </div>
                                    <!-- Page-header end -->
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Zero config.table start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                    	<!-- <a href="javascript:openModal('modal1');" class="button modal-open">프로젝트 등록</a> -->
                                                    	<button class="btn form-bg-primary wl-btn">프로젝트 등록</button>
                                                    	<div id="modal"></div>
														<div class="modal-con modal1">
															<a href="javascript:;" class="close">X</a>
															<p class="title">제목</p>
															<div class="con">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
															</div>
														</div>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="simpletable" class="table-center table table-striped table-bordered nowrap text-center">
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
                                                                        <th>모집인원 </th>
                                                                        <th>상세설명</th>
                                                                        <th>필수요건</th>
                                                                        <th>키워드</th>
                                                                        <th>상세사진</th>
                                                                        <th>첨부파일 </th>
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
	                                                                        	<a href="${pageContext.request.contextPath}/admin/project/edit?projId=${output.projId}">
	                                                                        		${output.projId}
	                                                                        	</a>		
	                                                                        </td>
	                                                                        <td>${output.projMemId}</td>
	                                                                        <td>${output.projTitle}</td>
	                                                                        <td>${output.projSort}</td>
	                                                                        <td>${output.projIndus}</td>
	                                                                        <td>${output.projPrice}</td>
	                                                                        <td>${output.projMargin}</td>
	                                                                        <td>${output.projNation}</td>
	                                                                        <td>${output.projSupplyType}</td>
	                                                                        <td>${output.projEndDate}</td>
	                                                                        <td>${output.projRecruitNum}</td>
	                                                                        <td>${output.projDetail}</td>
	                                                                        <td>${output.projRequire}</td>
	                                                                        <td>${output.projKeyword}</td>
	                                                                        <td>${output.projDetailImg}</td>
	                                                                        <td>${output.projFile}</td>
	                                                                        <td>${output.projState}</td>
	                                                                        <td>${output.projRegDate}</td>
	                                                                        <td>${output.projEditDate}</td>
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
																			            <c:url value="/topSub.do" var="prevPageUrl">
																			            	<c:param name="product_isnew" value="${product_isnew}" />
																			            	<c:param name="category" value="${category}" />
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
																			        <c:url value="/topSub.do" var="pageUrl">
																			        	<c:param name="product_isnew" value="${product_isnew}" />
																			        	<c:param name="category" value="${category}"/>
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
																			            <c:url value="/topSub.do" var="nextPageUrl">
																			            	<c:param name="product_isnew" value="${product_isnew}" />
																			            	<c:param name="category" value="${category}" />
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
																			    <div class="divider"></div>
	                                                                			<span class="label label-primary">
	                                                                				<font style="vertical-align: inherit;">
	                                                                				<font style="vertical-align: inherit;">1/2</font></font>
	                                                                			</span>
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
function openModal(modalname){
	document.get
	$("#modal").fadeIn(300);
	$("."+modalname).fadeIn(300);
}
$(function(){
	$("#modal, .close").on('click',function(){
		$("#modal").fadeOut(300);
		$(".modal-con").fadeOut(300);
	});
	
	
	$("#projectBtn").on("click", function(){
		
	});
});

</script>
<!-- bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%@ include file="inc/footer.jsp"%>