<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%> 
<%@ include file="../modal/memberEdit.jsp"%>
<%@ include file="../modal/ppProfileEdit.jsp"%>
<%@ include file="../modal/sellerProfileEdit.jsp"%>
<!-- bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/division/css/style.css">
<style>
.table-center th{
	text-align: center;
}

/* 필수항목 표시를 위한 `*` */
.identify {
	font-size: 14px;
	color: #f00;
}

/* 에러 메시지에 대한 글자 색상 */
.error {
	color: red;
}

/* 에러가 발생한 <input>태그 */
input.error {
	
}
/* 에러메시지가 표시중인 <label> 태그 */
label.error {
	font-size: 10px;
	color: red;
	display: inline-block;
	padding: 5px 10px;
	margin: 0;
}
.jFiler-input-dragDrop {
    width: 100%;
    background-color: #fafafa;
}
.ck-blurred.ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-editor__editable_inline {
	height: 300px;
}
.modal-header {
	display: block;
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
                                            <h4>회원 관리</h4>
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
                                                        
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="simpletable" class="table-center table table-striped table-bordered text-center">
                                                                <thead>
                                                                    <tr>
                                                                    	<th>번호</th>
                                                                        <th>아이디</th>
                                                                        <th>비밀번호</th>
                                                                        <th>회원상태</th>
                                                                        <th>유료회원상태</th>
                                                                        <th>유료시작일</th>
                                                                        <th>유료종료일</th>
                                                                        <th>회원분류</th>
                                                                        <th>국가</th>
                                                                        <th>지역</th>
                                                                        <th>주소</th>
                                                                        <th>연락처</th>
                                                                        <th>이름</th>
                                                                        <th>실명인증</th>
                                                                        <th>닉네임</th>
                                                                        <th>대표사진</th>
                                                                    	<th>가입 IP</th>
                                                                    	<th>최근로그인</th>
                                                                    	<th>회원탈퇴일</th>
                                                                    	<th>회원등록일</th>
                                                                    	<th>회원정보수정일</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach var="output" items="${output}" varStatus="status">
	                                                                    <tr>
	                                                                    	<td>${output.memIdx}</td>
	                                                                        <td>
	                                                                        	<a href="#" onclick="return false;" class="m-modal" data-toggle="modal" data-target="#memberModal">${output.memId}</a>		
	                                                                        </td>
	                                                                        <td>${output.memPw}</td>
	                                                                        <td  data-value="${output.memState}">${output.memStateName}</td>
	                                                                        <td data-value="${output.memClass}">${output.memClassName}</td>
	                                                                        <td>${output.memClassSdate}</td>
	                                                                        <td>${output.memClassEdate}</td>
	                                                                        <c:if test="${output.memSort == '0'}">
		                                                                        <td data-value="${output.memSort}">${output.memSortName}</td>
	                                                                        </c:if>
	                                                                        <c:if test="${output.memSort == '1'}">
	                                                                        	<td data-value="${output.memSort}">
		                                                                       		<a href="#" onclick="return false;" class="profile-modal" data-toggle="modal" 
		                                                                       			data-target="#p-profileModal">${output.memSortName}</a>
		                                                                       	</td>
	                                                                        </c:if>
	                                                                        <c:if test="${output.memSort == '2'}">
	                                                                        	<td data-value="${output.memSort}">
		                                                                       		<a href="#" onclick="return false;" class="profile-modal" data-toggle="modal" 
		                                                                       			data-target="#s-profileModal">${output.memSortName}</a>
		                                                                       	</td>
	                                                                        </c:if>
	                                                                        <td data-value="${output.memCountry}">${output.memCountryName}</td>
	                                                                        <td data-value="${output.memNation}">${output.memNationName}</td>
	                                                                        <td data-value="${output.memAddr}">${output.memPost} ${output.memAddr} ${output.memAddr2}</td>
	                                                                        <td data-value="${output.memAddr2}">${output.memTel}</td>
	                                                                        <td data-value="${output.memPost}">${output.memName}</td>
	                                                                        <td data-value="${output.memRname}">${output.memRnameName}</td>
	                                                                        <td>${output.memNick}</td>
	                                                                        <td>${output.memPhoto}</td>
	                                                                        <td>${output.memIp}</td>
	                                                                        <td>${output.memLoginDate}</td>
	                                                                        <td>${output.memOutDate}</td>
	                                                                        <td>${output.memDate}</td>
	                                                                        <td>${output.memEditDate}</td>
	                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                                <tfoot>
                                                                	<tr class="footable-paging">
                                                                		<td colspan="21">
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
$(document).on("click",".m-modal",function(event){
	var parent = event.target.parentNode;
	var tr = parent.parentNode;
	var memIdx = tr.children[0].innerText;
	var memId = tr.children[1].innerText;
	var memPw = tr.children[2].innerText;
	var memState = tr.children[3].getAttribute("data-value");
	var memClass = tr.children[4].getAttribute("data-value");
	var memClassSdate = tr.children[5].innerText;
	var memClassEdate = tr.children[6].innerText;
	var memSort = tr.children[7].getAttribute("data-value");
	var memCountry = tr.children[8].getAttribute("data-value");
	var memNation = tr.children[9].getAttribute("data-value");
	var memPost = tr.children[12].getAttribute("data-value");
	var memAddr = tr.children[10].getAttribute("data-value");
	var memAddr2 = tr.children[11].getAttribute("data-value");
	var memTel = tr.children[11].innerText;
	var memName = tr.children[12].innerText;
	var memRname = tr.children[13].getAttribute("data-value");
	var memNick = tr.children[14].innerText;
	var memPhoto = tr.children[15].innerText;
	var memIp = tr.children[16].innerText;
	var memLoginDate = tr.children[17].innerText;
	var memOutDate = tr.children[18].innerText;
	var memEditDate = tr.children[19].innerText;
	
	
	
	$("#memberModal .modal-body #memId").val(memId);
	$("#memberModal .modal-body #memState").val(memState);
	$("#memberModal .modal-body #memClass").val(memClass);
	$("#memberModal .modal-body #memClassSdate").val(memClassSdate);
	$("#memberModal .modal-body #memClassEdate").val(memClassEdate);
	$("#memberModal .modal-body #memSort").val(memSort);
	$("#memberModal .modal-body #memCountry").val(memCountry);
	$("#memberModal .modal-body #memNation").val(memNation);
	$("#memberModal .modal-body #postcode").val(memPost);
	$("#memberModal .modal-body #memAddr").val(memAddr);
	$("#memberModal .modal-body #memAddr2").val(memAddr2);
	$("#memberModal .modal-body #memTel").val(memTel);
	$("#memberModal .modal-body #memName").text(memName);
	$("#memberModal .modal-body #memRname").val(memRname);
	$("#memberModal .modal-body #memNick").val(memNick);
	$("#memberModal .modal-body #img").attr("src", "../../../upload/"+memPhoto);
	$("#memberModal .modal-body #memLoginDate").val(memLoginDate);
	$("#memberModal .modal-body #memOutDate").val(memOutDate);
	$("#memberModal .modal-body #memEditDate").val(memEditDate);
	$("#memberModal .modal-body #memIp").val(memIp);
	
	if (memRname != '') {
		$("#memberModal .modal-body #emailBox").remove();
		$("#memberModal .modal-body #emailBox2").remove();
	}

});
$(document).on("click",".profile-modal",function(event){
	var parent = event.target.parentNode;
	var tr = parent.parentNode;
	var memSort = tr.children[7].getAttribute("data-value");
	var memId = tr.children[1].innerText;
	if (memSort == '1' || memSort == '2') {
		$.get(ROOT_URL + "/admin/profile", {
			'memSort':memSort,
			'memId':memId
			}, function(json) {
				console.log(json.output);
				if (json.memSort == '1') {
					$("#p-profileModal .modal-body #ppBizCerti").val(json.output.ppBizCerti);
					$("#p-profileModal .modal-body #ppBizNum").val(json.output.ppBizNum);
					$("#p-profileModal .modal-body #ppBizSort").val(json.output.ppBizSort);
					var ppCh = json.output.ppCh.split(',');
					console.log(ppCh);
					// 초기화
					$("#p-profileModal .modal-body input[name=ppCh]").attr('checked', false);
					for (var i = 0; i < ppCh.length; i++) {
						$("#p-profileModal .modal-body input[name=ppCh]").eq(ppCh[i]-1).attr('checked', true);
					}
					$("#p-profileModal .modal-body #ppGrade").val(json.output.ppGrade);
					$("#p-profileModal .modal-body #ppId").val(json.output.ppId);
					$("#p-profileModal .modal-body #ppIdx").val(json.output.ppIdx);
					$("#p-profileModal .modal-body #ppIndus").val(json.output.ppIndus);
					$("#p-profileModal .modal-body #ppIntro").val(json.output.ppIntro);
					$("#p-profileModal .modal-body #ppMemId").val(json.output.ppMemId);
					$("#p-profileModal .modal-body #ppNation").val(json.output.ppNation);
					//$("#p-profileModal .modal-body #img").attr("src", "../../../upload/"+memPhoto);
					$("#p-profileModal .modal-body #ppProfit").val(json.output.ppProfit);
					$("#p-profileModal .modal-body #ppProfitChkDate").val(json.output.ppProfitChkDate);
					$("#p-profileModal .modal-body #ppProjId").val(json.output.ppProjId);
					$("#p-profileModal .modal-body #ppRegDate").val(json.output.ppRegDate);
					$("#p-profileModal .modal-body #ppEditDate").val(json.output.ppEditDate);
					$("#p-profileModal .modal-body #ppState").val(json.output.ppState);
				}
				if (json.memSort == '2') {
					$("#s-profileModal .modal-body #sellerBizCerti").val(json.output.sellerBizCerti);
					$("#s-profileModal .modal-body #sellerBizNum").val(json.output.sellerBizNum);
					$("#s-profileModal .modal-body #sellerBizSort").val(json.output.sellerBizSort);
					var sellerCh = json.output.sellerCh.split(',');
					// 초기화
					$("#s-profileModal .modal-body input[name=sellerCh]").attr('checked', false);
					console.log(sellerCh);
					for (var i = 0; i < sellerCh.length; i++) {
						$("#s-profileModal .modal-body input[name=sellerCh]").eq(sellerCh[i]-1).attr('checked', true);
					}
					
					$("#s-profileModal .modal-body #sellerCareer").val(json.output.sellerCareer);
					$("#s-profileModal .modal-body #sellerChChk").val(json.output.sellerChChk);
					$("#s-profileModal .modal-body #sellerGrade").val(json.output.sellerGrade);
					$("#s-profileModal .modal-body #sellerId").val(json.output.sellerId);
					$("#s-profileModal .modal-body #sellerIdx").val(json.output.sellerIdx);
					$("#s-profileModal .modal-body #sellerIntro").val(json.output.sellerIntro);
					$("#s-profileModal .modal-body #sellerIndus").val(json.output.sellerIndus);
					//$("#s-profileModal .modal-body #img").attr("src", "../../../upload/"+memPhoto);
					$("#s-profileModal .modal-body #sellerMemId").val(json.output.sellerMemId);
					$("#s-profileModal .modal-body #sellerNation").val(json.output.sellerNation);
					$("#s-profileModal .modal-body #sellerRegDate").val(json.output.sellerRegDate);
					$("#s-profileModal .modal-body #sellerSaleChk").val(json.output.sellerSaleChk);
					$("#s-profileModal .modal-body #sellerState").val(json.output.sellerState);
				}
			});
	}
});
</script>
<!-- bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>
<%@ include file="inc/footer.jsp"%>