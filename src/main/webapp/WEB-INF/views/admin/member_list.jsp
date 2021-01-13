<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%> 
<%@ include file="modal/memberEdit.jsp"%>
<%@ include file="modal/memberAdd.jsp"%>
<%@ include file="modal/profileEdit.jsp"%>
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
.main-body .page-wrapper .page-header-title h6 {
    display: inline-block;
    margin-bottom: 0;
    font-weight: 600;
    color: #4a6076;
    font-size: 14px;
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
                                    <div style="margin-bottom:20px;">
                                        <div class="page-header-title" style="width: 100%;">
                                        	<div class="col-sm-10" style="display: inline-block;">
                                        		<h4>회원 관리</h4>
                                        	</div>
                                            <div class="col-sm-2" style="display: inline-block; text-align: right;">
                                            	<h6><a id="logout" href="#">로그아웃</a></h6>
                                            </div>
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
	                                                    <form name="search-form" class="form" method="get" action="${pageContext.request.contextPath}/admin/memberList">
	                                                        <div class="form-group row">
	                                                    		<div class="col-sm-8">
		                                                    		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#memberAddModal">회원 등록</button>
		                                                    	</div>
		                                                        <div class="col-sm-4" style="float: right;">
		                                                            <input name="keyword" type="search" class="form-control col-sm-10" placeholder="검색어">
		                                							<div class="col-sm-2" style="padding: 0;">
			                                                        	<button type="submit" class="btn btn-primary">검색</button>
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
                                                                    	<th>번호</th>
                                                                        <th>아이디</th>
                                                                        <th style="display: none;">비밀번호</th>
                                                                        <th>회원상태</th>
                                                                        <th>유료회원상태</th>
                                                                        <th style="display: none;">유료시작일</th>
                                                                        <th style="display: none;">유료종료일</th>
                                                                        <th>회원분류</th>
                                                                        <th style="display: none;">국가</th>
                                                                        <th style="display: none;">지역</th>
                                                                        <th style="display: none;">주소</th>
                                                                        <th style="display: none;">연락처</th>
                                                                        <th>이름</th>
                                                                        <th>실명인증</th>
                                                                        <th>닉네임</th>
                                                                        <th style="display: none;">대표사진</th>
                                                                    	<th style="display: none;">가입 IP</th>
                                                                    	<th style="display: none;">최근로그인</th>
                                                                    	<th style="display: none;">회원탈퇴일</th>
                                                                    	<th>회원등록일</th>
                                                                    	<th style="display: none;">회원정보수정일</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach var="output" items="${output}" varStatus="status">
	                                                                    <tr>
	                                                                    	<td>${output.memIdx}</td>
	                                                                        <td>
	                                                                        	<a href="#" onclick="return false;" class="m-modal" data-toggle="modal" data-target="#memberModal">${output.memId}</a>		
	                                                                        </td>
	                                                                        <td style="display: none;">${output.memPw}</td>
	                                                                        <td data-value="${output.memState}">${output.memStateName}</td>
	                                                                        <td data-value="${output.memClass}">${output.memClassName}</td>
	                                                                        <td style="display: none;">${output.memClassSdate}</td>
	                                                                        <td style="display: none;">${output.memClassEdate}</td>
	                                                                        <c:choose>
		                                                                        <c:when test="${output.memSort != '1' && output.memSort != '2'}">
			                                                                        <td data-value="${output.memSort}">${output.memSortName}</td>
		                                                                        </c:when>
		                                                                        <c:otherwise>
		                                                                        	<td data-value="${output.memSort}">
			                                                                       		<a href="#" onclick="return false;" class="profile-modal" data-toggle="modal" 
			                                                                       			data-target="#profileModal">${output.memSortName}</a>
			                                                                       	</td>
		                                                                        </c:otherwise>
	                                                                        </c:choose>
	                                                                        <td style="display: none;" data-value="${output.memCountry}">${output.memCountryName}</td>
	                                                                        <td style="display: none;" data-value="${output.memNation}">${output.memNationName}</td>
	                                                                        <td style="display: none;" data-value="${output.memAddr}">${output.memPost} ${output.memAddr} ${output.memAddr2}</td>
	                                                                        <td style="display: none;" data-value="${output.memAddr2}">${output.memTel}</td>
	                                                                        <td data-value="${output.memPost}">${output.memName}</td>
	                                                                        <td data-value="${output.memRname}">${output.memRnameName}</td>
	                                                                        <td>${output.memNick}</td>
	                                                                        <td style="display: none;">${output.memPhoto}</td>
	                                                                        <td style="display: none;">${output.memIp}</td>
	                                                                        <td style="display: none;">${output.memLoginDate}</td>
	                                                                        <td style="display: none;">${output.memOutDate}</td>
	                                                                        <td>${output.memDate}</td>
	                                                                        <td style="display: none;">${output.memEditDate}</td>
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
																			            <c:url value="/admin/memberList" var="prevPageUrl">
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
																			        <c:url value="/admin/memberList" var="pageUrl">
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
																			            <c:url value="/admin/memberList" var="nextPageUrl">
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
	$("#memberModal .modal-body #memName").val(memName);
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
				$("#profileModal .modal-body .seller").show();
				$("#profileModal .modal-body #profileCareer").val(json.output.profileCareer);
				$("#profileModal .modal-body #profileChChk").val(json.output.profileChChk);
				$("#profileModal .modal-body #profileSaleChk").val(json.output.profileSaleChk);
				if (json.output.profileSort != 2) {
					$("#profileModal .modal-body .seller").hide();
				}
				$("#profileModal .modal-body #profileBizCerti").val(json.output.profileBizCerti);
				$("#profileModal .modal-body #profileBizNum").val(json.output.profileBizNum);
				$("#profileModal .modal-body #profileBizSort").val(json.output.profileBizSort);
				var profileCh = json.output.profileCh.split(',');
				// 초기화
				$("#profileModal .modal-body input[name=profileCh]").attr('checked', false);
				for (var i = 0; i < profileCh.length; i++) {
					$("#profileModal .modal-body input[name=profileCh]").eq(profileCh[i]-1).attr('checked', true);
				}
				
				
				$("#profileModal .modal-body #profileGrade").val(json.output.profileGrade);
				$("#profileModal .modal-body #profileId").val(json.output.profileId);
				$("#profileModal .modal-body #profileIdx").val(json.output.profileIdx);
				$("#profileModal .modal-body #profileIntro").val(json.output.profileIntro);
				$("#profileModal .modal-body #profileIndus").val(json.output.profileIndus);
				//$("#profileModal .modal-body #img").attr("src", "../../../upload/"+memPhoto);
				$("#profileModal .modal-body #profileMemId").val(json.output.profileMemId);
				$("#profileModal .modal-body #profileNation").val(json.output.profileNation);
				$("#profileModal .modal-body #profileRegDate").val(json.output.profileRegDate);
				$("#profileModal .modal-body #profileState").val(json.output.profileState);
				$("#profileModal .modal-body #profileSort").val(json.output.profileSort);
				$("#profileModal .modal-body input[name=profileSort]").val(json.output.profileSort);
				var profileHashtag = json.output.profileHashtag.split(',');
				// 초기화
				$("#profileModal .modal-body input[name=profileHashtag]").attr('checked', false);
				for (var i = 0; i < profileHashtag.length; i++) {
					$("#profileModal .modal-body input[name=profileHashtag]").eq(profileHashtag[i]-1).attr('checked', true);
				}
				$("#profileModal .modal-body #profileRname").val(json.output.profileRname);
				$("#profileModal .modal-body #profileHit").val(json.output.profileHit);
			});
	}

});

$(function(){
	$("#logout").on("click", function(){
		$.ajax({
			type: "GET",
			url: ROOT_URL+"/admin/member/logout",
			dataType: "json",
			success: function(){
					//swal("알림", "로그아웃되었습니다.", "success");
					swal({
                        title: '알림',
                        text: '로그아웃 되었습니다.',
                       	type: 'success',
                    }).then(function(result) {
                    	window.location.href = ROOT_URL+"/admin/memberList";
                    });
			}

		});
	});	
});
</script>
<!-- bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>
<%@ include file="inc/footer.jsp"%>