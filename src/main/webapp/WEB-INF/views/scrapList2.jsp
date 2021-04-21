<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/myPageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/scrapList2.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">스크랩 리스트</div>
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
		    		<input type="hidden" id="myMemSort" value="${myProjectCount.memSort}">
					<div id="myProject-table" class="myProject-table">
						<div>
							<div>
								<div class="th">등록일</div>
								<div class="th">거래명</div>						
								<div class="th">등록자</div>
								<div class="th">마감일</div>
								<div class="th">지원현황</div>
							</div>
						</div>
						<div>
	 						<c:forEach var="scrapList" items="${scrapList}" varStatus="status">
							<div class="show-apply" data-projId="${scrapList.projId}" data-index="${status.count}">
								<div class="td cursor">${scrapList.projRegDate}</div>
								<div class="td project-title cursor" data-projId="${scrapList.projId}">
						         <c:choose>
						           <c:when test="${fn:length(scrapList.projTitle) > 30}">
						            <c:out value="${fn:substring(scrapList.projTitle,0,29)}"/>...
						           </c:when>
						           <c:otherwise>
						            <c:out value="${scrapList.projTitle}"/>
						           </c:otherwise> 
						          </c:choose>
								</div>
								<div class="td">${scrapList.memNick}</div>
								<div class="td">${scrapList.projEndDate}</div>
								<div class="td">
									<c:if test="${scrapList.applyProjState != null}">
										<div class="applyStateBox applyAccept">지원완료</div>
									</c:if>
									<c:if test="${scrapList.applyProjState == null}">
										<div class="applyStateBox applyWait" data-projId="${scrapList.projId}">지원하기</div>
									</c:if>
								</div>
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
			alert('탈퇴페이지로');
			location.href="/myPage/myHome";
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
		 var memIdx = $(this).attr("data-memidx");
		 alert(applyProjId);
		 alert(memIdx);
	});
	//거절버튼 관리
	$(document).on("click", ".reject_btn", function(e){
		 var applyProjId= $(this).attr("data-applyprojid");
		 var memIdx = $(this).attr("data-memidx");
		 alert('aaaaaaaaaaa');
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
			// 페이지 이동 하면 됨
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
    
    //거래처 찾기 상세페이지로 이동
	$(document).on("click", ".project-title", function(e) {
			var projId = $(this).attr('data-projId');
			var options = 'width=1500, height=1000, status=yes, menubar=no, toolbar=no, resizable=yes';
			window.open(ROOT_URL + "/project/detail?projId=" + projId,"전세계 검증된 판매자를 만나는 곳, 셀러매치",options);
	});
    
    
	$(document).on("click", ".applyWait", function(){
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		var applyProjId = $(this).attr('data-projId');

		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/apply/project",
		    data: {
		    	applyProjId: applyProjId,
		    	applyMemId: login_id,
		    	applyType:1
		    },
            success: function(json) {
          		if (json.result == 1) {
          			swal('알림', '이미 지원한 거래입니다.', 'success');
          			return;
				}
				swal({
	  		          title: '확인',
	  		          text: '지원 하시겠습니까?', 
	  		          type: "question",
	  		          width: '400px',
	  		          showCancelButton: true
	  		    }).then(function(result) {			
	  		        if (result.value) {
	  		        	var data = {
	  		        		applyProjId: applyProjId,
	  		        		applyProjState:2,
	  		        		applyType:1
	  		        	};
	  		        	  
	  		        	$.ajax({
	  			   			type: "POST",
	  			   	        url: ROOT_URL+"/apply/project",
	  			   	        data: data,
	  		                success: function() {
	  		                	swal({
				  		          title: '완료',
				  		          text: '지원 확인하시겠습니까?', 
				  		          type: "success",
				  		          width: '400px',
				  		          showCancelButton: true
		  			  		    }).then(function(result) {	
		  			  		    	if (result.value) {
		  			  		    		window.location.href = ROOT_URL+"/myPage/myApplyList";
		  			  		    	}
		  			  		    });
	  		                }
	  			      	});
	  		      	}
				});	
			}
		}); 
	});		
});
</script>