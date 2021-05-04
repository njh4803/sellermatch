<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/myPageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/recommandList.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">마이페이지</div>
	    		</div>
		    	<div class="mypage-top-right">
		    		<img class="mypage-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="mypage-hr">
	    	<div class="myPage_Main">
		    	<div class="myPage_left">
		    		<div class="myPage_l_imgBox">
		    			<c:if test="${member.memSort == '2'}">
		    			<div class="myPage_l_sort_seller">
		    				<span class="sortText">판매자</span>
		    			</div>
		    			</c:if>
		    			<c:if test="${member.memSort == '1'}">
 		    			<div class="myPage_l_sort_provider">
		    				<span class="sortText">공급자</span>
		    			</div>
		    			</c:if>
		    			<div class="imageBox">
		    			<c:if test="${profile.profilePhoto != null}">
							<img id="profile-img" src="${pageContext.request.contextPath}/upload/${profile.profilePhoto}"/>
						</c:if>
						<c:if test="${profile.profilePhoto == null}">
							<img id="profile-img" src="${pageContext.request.contextPath}/assets/img/profile.png"/>
						</c:if>
						</div>
						<div class="myPage_l_nickname">
							<span class="sortNickName">${member.memNick}</span>
						</div>
						<div class="profilePhotoChange">
						<%-- <img id="profilePhotoChange-img" src="${pageContext.request.contextPath}/assets/img/profilePhoto_change.png"/> --%>
						</div>
		    		</div>
		    		<div class="myPage_l_menuBox">
				    	<div class="my-tabs">
							<div class="tab-link tab-link3" data-tab="my-tab-1" id="select-my-tab1">MY 홈
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link" data-tab="my-tab-2" id="select-my-tab2">회원정보 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link current" data-tab="my-tab-4" id="select-my-tab4">거래 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_white.png">
							</div>
							<div class="tab-link2" data-tab="my-tab-5" id="select-my-tab5">회원 탈퇴
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
						</div>
		    		</div>
		    	</div>
		    	<div class="myPage_right">
					<div class="myProjBox">
						<div class="proj-type">
							<div class="myProjBox2">
								<div class="p-type projAddCountText">등록한 거래</div>
								<div class="textBox1"><button id="projAddCount" data-value="${myProjectCount.projAddCount}">${myProjectCount.projAddCount}건</button></div>
							</div>
						</div>
						<div class="proj-type">
							<div class="myProjBox2">
								<div class="p-type myApplyCountText">지원한 거래</div>
								<div class="textBox1"><button id="myApplyCount" data-value="${myProjectCount.appliedCount}">${myProjectCount.appliedCount}건</button></div>
							</div>
						</div>
						<div class="proj-type">
							<div class="myProjBox2">
								<c:if test="${myProjectCount.memSort == 1}">
	 							<div class="p-type recommendCountText">판매자에게 제안한 거래</div>
							    <div class="textBox1"><button id="recommendCount" data-value="${myProjectCount.precommandCount}">${myProjectCount.precommandCount}건</button></div>
							    </c:if>
							    <c:if test="${myProjectCount.memSort == 2}">
								<div class="p-type recommendCountText">공급자에게 제안 받은 거래</div>
								<div class="textBox1"><button id="recommendCount" data-value="${myProjectCount.srecommandCount}">${myProjectCount.srecommandCount}건</button></div>
								</c:if>
							</div>
						</div>
						<div class="proj-type" style="border-right:0;">
							<div class="myProjBox2">
								<div class="p-type projectEndCountText">마감 거래</div>
								<div class="textBox1"><button id="projectEndCount" data-value="${myProjectCount.projectEndCount}">${myProjectCount.projectEndCount}건</button></div>
							</div>
						</div>
					</div>
					<input type="hidden" id="myMemSort" value="${myProjectCount.memSort}">
					<div id="myProject-table" class="myProject-table">
						<div>
							<div>
								
							<c:if test="${myProjectCount.memSort == 1}">
								<div class="th" style="width:400px !important;">거래명</div>						
								<div class="th" style="width:170px !important;">판매자</div>
								<div class="th" style="width:120px !important;">제안현황</div>
								<div class="th" style="width:130px !important;">판매자 연락처</div>
								<div class="th" style="width:230px !important;">판매자 이메일</div>
							</c:if>
							<c:if test="${myProjectCount.memSort == 2}">
								<div class="th">등록일</div>
								<div class="th"style="width:635px;">거래명</div>	
								<div class="th">공급자</div>
								<div class="th">제안관리</div>
							</c:if>
							</div>
						</div>
						<div>
							<c:forEach var="recommandList" items="${recommandList}" varStatus="status">
							<div class="show-apply" data-projId="${recommandList.projId}" data-index="${status.count}">
								<c:if test="${myProjectCount.memSort == 1}">	
								<div class="td project-title cursor" data-projId="${recommandList.projId}"  style="width:400px !important;">
						         <c:choose>
						           <c:when test="${fn:length(recommandList.projTitle) > 28}">
						            <c:out value="${fn:substring(recommandList.projTitle,0,27)}"/>...
						           </c:when>
						           <c:otherwise>
						            <c:out value="${recommandList.projTitle}"/>
						           </c:otherwise> 
						          </c:choose>
								</div>
								<div class="td"  style="width:170px !important;">${recommandList.memNick}</div>
								<div class="td"  style="width:120px !important;">
									<c:if test="${recommandList.applyProjState == 0}">
										<div class="applyStateBox applyReject">제안거절</div>
									</c:if>
									<c:if test="${recommandList.applyProjState == 2}">
										<div class="applyStateBox applyWait">제안요청중</div>
									</c:if>
									<c:if test="${recommandList.applyProjState == 3}">
										<div class="applyStateBox applyAccept">제안승인</div>
									</c:if>
								</div>
								<div class="td" style="width:130px !important;">
									<c:if test="${recommandList.applyProjState == 0}">
										<img class="pojTelIcon" alt="" src="${pageContext.request.contextPath}/assets/img/cancel_icon.png"
										data-toggle="tooltip" data-placement="top" title="상대방이 거절한 거래로 연락처가 표기되지 않습니다.">
									</c:if>
									<c:if test="${recommandList.applyProjState == 3}">
										${fn:substring(recommandList.memTel,0,3)}-${fn:substring(recommandList.memTel,3,7)}-${fn:substring(recommandList.memTel,7,12)}
									</c:if>
									<c:if test="${recommandList.applyProjState == 2}">
										<div>
											<img class="pojTelIcon" alt="" src="${pageContext.request.contextPath}/assets/img/question_icon.png" 
											data-toggle="tooltip" data-placement="top" title="판매자가 승인할경우 연락처가 표기됩니다.">
										</div>
									</c:if>
								</div>
								<div class="td" style="width:230px !important;">
									<c:if test="${recommandList.applyProjState == 0}">
										<img class="pojTelIcon" alt="" src="${pageContext.request.contextPath}/assets/img/cancel_icon.png"
										data-toggle="tooltip" data-placement="top" title="상대방이 거절한 거래로 이메일이 표기되지 않습니다.">
									</c:if>
									<c:if test="${recommandList.applyProjState == 3}">
										${recommandList.memId}
									</c:if>
									<c:if test="${recommandList.applyProjState == 2}">
										<div>
											<img class="pojTelIcon" alt="" src="${pageContext.request.contextPath}/assets/img/question_icon.png" 
											data-toggle="tooltip" data-placement="top" title="판매자가 승인할경우 이메일이 표기됩니다.">
										</div>
									</c:if>
								</div>
							</c:if>
							<c:if test="${myProjectCount.memSort == 2}">
								<div class="td cursor">${recommandList.projRegDate}</div>
								<div class="td project-title cursor" data-projId="${recommandList.projId}" style="width:635px;">
						         <c:choose>
						           <c:when test="${fn:length(recommandList.projTitle) > 28}">
						            <c:out value="${fn:substring(recommandList.projTitle,0,27)}"/>...
						           </c:when>
						           <c:otherwise>
						            <c:out value="${recommandList.projTitle}"/>
						           </c:otherwise> 
						          </c:choose>
								</div>
								<div class="td">${recommandList.memNick}</div>
								<div class="td">
									<c:if test="${recommandList.applyProjState == 3}">
									<div class="applyStateBox applyAccept">제안승인</div>
									</c:if>
									<c:if test="${recommandList.applyProjState == 0}">
									<div class="applyStateBox applyReject">제안거절</div>
									</c:if>
									<c:if test="${recommandList.applyProjState == 2}">
									<div class="btn-group">
        							<button type="button" class="btn btn_toggle" data-toggle="dropdown">관리하기</button>
        								<div class="dropdown-menu">
											<div class="dropdownTextDiv ddtd_accept">
												<button type="button" class="dropdown-item accept_btn" data-applyid="${recommandList.applyId}" data-applyprojid="${recommandList.applyProjId}" data-memidx="">제안승인</button>
											</div>
											<div class="dropdownTextDiv ddtd_reject">
												<button type="button" class="dropdown-item reject_btn" data-applyid="${recommandList.applyId}" data-applyprojid="${recommandList.applyProjId}" data-memidx="">제안거절</button> 
        									</div>
										</div>
									</div>
									</c:if>
								</div>
							</c:if>
							</div>
							<div class="apply-table" id="apply-table${status.count}">
							</div>
							</c:forEach>
						</div>
					</div>
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
							            <c:url value="/myPage/delngManage/registDelng" var="prevPageUrl">
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
							        <c:url value="/myPage/delngManage/registDelng" var="pageUrl">
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
							            <c:url value="/myPage/delngManage/registDelng" var="nextPageUrl">
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
		    	</div>
	    	</div>
    	</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", "div.my-tabs div", function(e){
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		if (tab_id == 'my-tab-1') {
			location.href="/myPage/myHome";
		}
		if (tab_id == 'my-tab-2') {
			location.href="/myPage/joinManage";
		}
		if (tab_id == 'my-tab-3') {
			location.href="/myPage/profileManage";
		}
		if (tab_id == 'my-tab-4') {
			location.href="/myPage/registDelng";
		}
		if (tab_id == 'my-tab-5') {
			location.href="/myPage/withdraw";
		}
	});
	//스크랩 리스트
	$('.scrapBtn').on('click', function(){
		location.href="/myPage/delngManage/scrapList";
	});
	//프로필 수정
	$('.myPage_r_profileBox').on('click', function(){
		location.href="/myPage/profileManage";
	});
	//이용안내
	$('.myPage_r_usingMethodBox').on('click', function(){
		location.href="/board?boardType=1";
	});
	//이용약관, 개인정보처리방침 모달창 불러옴
	$('.useOfTermBtn').on('click', function(){
		$('#infoModal').modal();
	});
	$('.privateBtn').on('click', function(){
		$('#termsOfServiceModal').modal();
	});
	//인증하기-준비중
	$('.myPage_r_authBox').on('click', function(){
		alert('인증하기 기능 준비중입니다.');
	});
});	
</script>
<script>
//지원자리스트 노출
$(document).ready(function(){
	//승인버튼 관리
	$(document).on("click", ".accept_btn", function(e){
		 var applyProjId= $(this).attr("data-applyprojid");
		 var applyId = $(this).attr("data-applyid");
		 swal({
			 title: '확인',
			 text: '승인 하시겠습니까?', 
			 type: "question",
			 width: '400px',
			 showCancelButton: true
		  	}).then(function(result) {			
		  		if (result.value) {
		  			var data = {
		  					applyProjId: applyProjId,
		  					applyProjState:3,
		  					applyId: applyId,
		  					};
		  			$(".accept_btn").prop("disabled", true);
		  		        	$.ajax({
		  			   			type: "POST",
		  			   	        url: ROOT_URL+"/myPage/recommandAccept",
		  			   	        data: data,
		  		                success: function() {
		  		                	swal({
					  		          title: '완료',
					  		          text: '승인 완료되었습니다.', 
			  			  		    }).then(function(result) {	
			  			  		    	if (result.value) {
			  			  		    		window.location.href = ROOT_URL+"/myPage/recommandList";
			  			  		    	}
			  			  		    });
		  		                }
		  			      	});
		  		      	}
					});	
	});
	//거절버튼 관리
	$(document).on("click", ".reject_btn", function(e){
		 var applyProjId= $(this).attr("data-applyprojid");
		 var applyId = $(this).attr("data-applyid");
		 swal({
			 title: '확인',
			 text: '거절 하시겠습니까?', 
			 type: "question",
			 width: '400px',
			 showCancelButton: true
		  	}).then(function(result) {			
		  		if (result.value) {
		  			var data = {
		  					applyProjId: applyProjId,
		  					applyProjState:0,
		  					applyId: applyId,
		  					};
		  			$(".reject_btn").prop("disabled", true);
		  		        	$.ajax({
		  			   			type: "POST",
		  			   	        url: ROOT_URL+"/myPage/recommandAccept",
		  			   	        data: data,
		  		                success: function() {
		  		                	swal({
					  		          title: '완료',
					  		          text: '거절 완료되었습니다.', 
			  			  		    }).then(function(result) {	
			  			  		    	if (result.value) {
			  			  		    		window.location.href = ROOT_URL+"/myPage/recommandList";
			  			  		    	}
			  			  		    });
		  		                }
		  			      	});
		  		      	}
					});	
	});
	
    $(document).on("click", "#contractCount", function(e){
    	var contractCount = $('#contractCount').val();
		if (contractCount == 0) {
			swal('알림', '계약된 거래가 없습니다.', 'warning')
		} else {
			//링크이동으로 가면됨
		}
    })
    $(document).on("click", "#projAddCount", function(e){
    	var projAddCount = $('#projAddCount').attr('data-value');
		if (projAddCount == 0) {
			swal('알림', '등록된 거래가 없습니다.', 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/registDelng";
		}
    })
    $(document).on("click", "#recommendCount", function(e){
    	var recommendCount = $('#recommendCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (recommendCount == 0) {
			var text = '';
			if (mem_sort == 1) {
				text = '제안한 거래가 없습니다.';
			}
			if (mem_sort == 2) {
				text = '제안 받은 거래가 없습니다.';
			}
			swal('알림', text, 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/recommandList";
		}
    });
    
    $(document).on("click", "#myApplyCount", function(e){
    	var scrapCount = $('#myApplyCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (scrapCount == 0) {
			var text = '지원한 거래가 없습니다.';
			swal('알림', text, 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/myApplyList";
		}
    });
    
    $(document).on("click", "#projectEndCount", function(e){
    	var scrapCount = $('#projectEndCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (scrapCount == 0) {
			swal('알림', '마감한 거래가 없습니다.', 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/projectEndList";
		}
    });
    
    //거래처 찾기 상세페이지로 이동
	$(document).on("click", ".project-title", function(e) {
			var projId = $(this).attr('data-projId');
			var options = 'width=1500, height=1000, status=yes, menubar=no, toolbar=no, resizable=yes';
			window.open(ROOT_URL + "/project/detail?projId=" + projId,"전세계 검증된 판매자를 만나는 곳, 셀러매치",options);
	});
    
});
</script>