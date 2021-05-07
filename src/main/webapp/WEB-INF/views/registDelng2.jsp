<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.compat.css"
  />
<link href="${pageContext.request.contextPath}/assets/css/myPageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/registDelng2.css" rel="stylesheet" type="text/css">
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
								<div class="p-type contractCountText">지원한 거래</div>
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
								<div class="th">등록일</div>
								<div class="th">거래명</div>						
								<div class="th">마감일</div>
								<div class="th">모집인원</div>
								<div class="th">지원인원</div>
								<div class="th">지원자 관리</div>
							</div>
						</div>
						<div>
							<c:forEach var="registedProjectList" items="${registedProjectList}" varStatus="status">
							<div class="show-apply">
								<div class="td">${registedProjectList.projRegDate}</div>
								<div class="td project-title cursor" data-projId="${registedProjectList.projId}">
						         <c:choose>
						           <c:when test="${fn:length(registedProjectList.projTitle) > 28}">
						            <c:out value="${fn:substring(registedProjectList.projTitle,0,27)}"/>...
						           </c:when>
						           <c:otherwise>
						            <c:out value="${registedProjectList.projTitle}"/>
						           </c:otherwise> 
						          </c:choose>
								</div>
								<div class="td">${registedProjectList.projEndDate}</div>
								<div class="td">${registedProjectList.projRecruitNum}명</div>
								<div class="td">${registedProjectList.applyCount}명</div>
								<div class="td">
									<button class="show-applicant" data-projId="${registedProjectList.projId}" data-index="${status.count}">관리하기</button>
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
<script type="text/javascript">
$(document).ready(function() {
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
	
	Handlebars.registerHelper('numberWithCommas', function (x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	});
});
</script>
<script>
//지원자리스트 노출
$(document).ready(function(){
	$(document).on("click", ".show-applicant", function(e){
		$("#applyList").remove();
		
		var applyProjId = $(this).attr('data-projId');
		var idx = $(this).attr('data-index');
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/myPage/delngManage/applyList',
	        data:{
	        	'applyProjId':applyProjId
	        },
			success : function(json) {
				var content = {
					output : json.output,
					memSortSe : json.memSort
				} 
	       		var template = Handlebars.compile($("#apply-tmpl").html());
	       		var html = template(content);
	       		
	       		$("#apply-table"+idx).append(html);
			}
		});
	});
	//승인버튼 관리
	$(document).on("click", ".accept_btn", function(e){
		 var applyProjId= $(this).attr("data-applyprojid");
		 var applyId = $(this).attr("data-applyid");
		 var memIdx = $(this).attr("data-memidx");
		 
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
		  			   	        url: ROOT_URL+"/myPage/applyAccept",
		  			   	        data: data,
		  		                success: function() {
		  		                	swal({
					  		          title: '완료',
					  		          text: '승인 완료되었습니다.', 
			  			  		    }).then(function(result) {	
			  			  		    	if (result.value) {
			  			  		    		window.location.href = ROOT_URL+"/myPage/registDelng";
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
		 var memIdx = $(this).attr("data-memidx");
		 
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
		  			   	        url: ROOT_URL+"/myPage/applyAccept",
		  			   	        data: data,
		  		                success: function() {
		  		                	swal({
					  		          title: '완료',
					  		          text: '거절 완료되었습니다.', 
			  			  		    }).then(function(result) {	
			  			  		    	if (result.value) {
			  			  		    		window.location.href = ROOT_URL+"/myPage/registDelng";
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
			swal('알림', '지원한 거래가 없습니다.', 'warning')
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
    
	$(document).on("click", ".applyAccept", function(e) {
		var memTel = $(this).attr('data-memTel');
		var memMail = $(this).attr('data-memMail');
		var memSort = $(this).attr('data-memSort');
		
		memTel = memTel.substring(0,3)+'-'+memTel.substring(3,7)+'-'+memTel.substring(7,12);
		
		if (memSort == '1') {
			memSort = '공급자';
		} else {
			memSort = '판매자';
		}
		
		swal({
			  title: memSort+' 연락처',
			  html:'<br><b>이메일</b> : '+ memMail+ '<br><br><b>연락처</b> : '+ memTel,
			  animation: false,
			  customClass: 'animated tada'
			});
		
	});
});
</script>
<script type="text/x-handlebars-template" id="apply-tmpl">
							<div id="applyList">
								{{#ifCond output '!=' 0}}
									<div class="tr">
										<div class="th" style="width: 120px;">지원일</div>
										<div class="th" style="width: 170px;">지원자</div>			
									{{#ifCond memSortSe '==' 1}}
										<div class="th" style="width: 454px;">판매채널</div>
										<div class="th" style="width: 170px;">매출규모</div>
									{{else}}
										<div class="th" style="width: 454px;">공급자 소개말</div>
										<div class="th" style="width: 170px;">사업자유형</div>
									{{/ifCond}}
										<div class="th" style="width: 130px;">승인/거절</div>
									</div>
									{{#output}}
										<div class="tr">
											<div class="td" style="width: 120px;">{{applyRegDate}}</div>
											<div class="td" style="width: 170px;">{{applyMemNick}}</div>
											
											{{#ifCond memSort '==' 2}}
											<div class="td" style="width: 454px;">{{profileCh}}</div>
												{{#ifCond profileVolume '==' null}}
												<div class="td" style="width: 170px;">미등록</div>
												{{else}}
												<div class="td" style="width: 170px;">{{numberWithCommas profileVolume}}원</div>
												{{/ifCond}}
											{{else}}
											<div class="td" style="width: 454px;">{{profileIntro}}</div>
											<div class="td" style="width: 170px;">
												{{#ifCond profileBizSort '==' 1}}
													법인사업자
												{{/ifCond}}											
												{{#ifCond profileBizSort '==' 2}}
													개인사업자
												{{/ifCond}}
												{{#ifCond profileBizSort '==' 3}}
													간이과세자
												{{/ifCond}}
												{{#ifCond profileBizSort '==' 4}}
													개인
												{{/ifCond}}
												{{#ifCond profileBizSort '==' 5}}
													기타
												{{/ifCond}}
												</div>
											{{/ifCond}}																					
											<div class="td" style="width: 130px;">
											{{#ifCond applyType '==' 2}}
												<div class="applyStateBox">제안거래</div>
											{{else}}
												{{#ifCond applyProjState '==' 3}}
												<div class="applyStateBox applyAccept cursor" data-memTel="{{memTel}}" data-memMail="{{applyMemId}}" data-memSort="{{memSort}}">연락처확인</div>
												{{/ifCond}}
												{{#ifCond applyProjState '==' 0}}
												<div class="applyStateBox applyReject">지원거절</div>
												{{/ifCond}}
												{{#ifCond applyProjState '==' 2}}
												<div class="btn-group">
        											<button type="button" class="btn btn_toggle" data-toggle="dropdown">관리하기</button>
        											<div class="dropdown-menu">
														<div class="dropdownTextDiv ddtd_accept">
															<button type="button" class="dropdown-item accept_btn" data-applyid="{{applyId}}" data-applyprojid="{{applyProjId}}" data-memidx="{{memIdx}}">지원승인</button>
														</div>
														<div class="dropdownTextDiv ddtd_reject">
															<button type="button" class="dropdown-item reject_btn" data-applyid="{{applyId}}" data-applyprojid="{{applyProjId}}" data-memidx="{{memIdx}}">지원거절</button> 
        												</div>
													</div>
												</div>
												{{/ifCond}}
											{{/ifCond}}
											</div>
										</div>
									{{/output}}
								{{else}}
									<div class="tr">
										<div class="th" style="width: 1280px;">지원자 없음</div>
									</div>
								{{/ifCond}}
							</div>
</script>