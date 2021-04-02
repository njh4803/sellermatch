<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<%-- <link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/file.css"> --%>
<link href="${pageContext.request.contextPath}/assets/css/registDelng.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">등록한 거래</div>
		    		<div class="mypage-text">내가 등록한 거래 목록입니다.</div>
	    		</div>
		    	<div class="mypage-top-right">
		    		<img class="mypage-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="mypage-hr">
<!-- 	       	<ul class="my-tabs">
				<li class="tab-link" data-tab="my-tab-1" id="select-my-tab1">MY홈</li>
				<li class="tab-link" data-tab="my-tab-2" id="select-my-tab2">가입정보관리</li>
				<li class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필관리</li>
				<li class="tab-link current" data-tab="my-tab-4" id="select-my-tab4">거래관리</li>
			</ul> -->
			<div id="my-tab-4" class="tab-content2">
						<div id="myProject">
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
							<div class="textBox1"><button id="myApplyCount" value="${myProjectCount.appliedCount}">${myProjectCount.appliedCount}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type closedCountText">마감한 거래/후기</div>
							<div class="textBox1"><button id="closedCount" value="">0건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<c:if test="${myProjectCount.memSort == 1}">
 							<div class="p-type recommendCountText">판매자에게 제안한 거래</div>
						    <div class="textBox1"><button id="recommendCount" value="${myProjectCount.recommendCount}">${myProjectCount.recommendCount}건</button></div>
						    </c:if>
						    <c:if test="${myProjectCount.memSort == 2}">
							<div class="p-type recommendCountText">공급자에게 제안 받은 거래</div>
							<div class="textBox1"><button id="recommendCount" value="${myProjectCount.recommendCount}">${myProjectCount.recommendCount}건</button></div>
							</c:if>
						</div>
					</div>
					<div class="proj-type" style="border-right:0;">
						<div class="myProjBox2">
							<div class="p-type scrapCountText">스크랩한 거래</div>
							<div class="textBox1"><button id="scrapCount" value="">0건</button></div>
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
							<div class="th">지원자인원</div>
							<div class="th">지원자 관리</div>
						</div>
					</div>
					<div>
						<c:forEach var="registedProjectList" items="${registedProjectList}" varStatus="status">
						<div class="show-apply" data-projId="${registedProjectList.projId}" data-index="${status.count}">
							<div class="td">${registedProjectList.projRegDate}</div>
							<div class="td project-title" data-projId="${registedProjectList.projId}">${registedProjectList.projTitle}</div>
							<div class="td">${registedProjectList.projEndDate}</div>
							<div class="td">${registedProjectList.projRecruitNum}명</div>
							<div class="td">${registedProjectList.applyCount}명</div>
							<div class="td">
								<button class="show-applicant">관리하기</button>
							</div>
						</div>
						<div class="apply-table" id="apply-table${status.count}">
						</div>
						</c:forEach>
					</div>
				</div>
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
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	
	function handleImgfileSelect1(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				return;
			}
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	};
	
	function handleImgfileSelect2(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				return;
			}
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#profile-img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	};
	
	$(document).on("change", "#profile-image" ,handleImgfileSelect2);
	$(document).on("change", "#image" ,handleImgfileSelect1);
	
	$(document).on("click", "ul.my-tabs li", function(e){
		
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		$('ul.my-tabs li').removeClass('current');
		$('.tab-content2').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
		if (tab_id == 'my-tab-4') {
			$("#myProject").remove();
		}
	});
	
    $(document).on("click", "#contractCount", function(e){
    	var contractCount = $('#contractCount').val();
		if (contractCount == 0) {
			swal('알림', '계약된 거래가 없습니다.', 'warning')
		} else {
			$("#myProject").remove();
			
			$('ul.tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-tab4').addClass('current');
			$("#tab-4").addClass('current');
			
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/myPage/delngManage/registDelng2',
		        data:{
		        	applyProjState:5
		        },
				success : function(json) {
					console.log(json.output)
					
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#tab-4").append(html);
				}
			});
		}
    })
    $(document).on("click", ".projAddCount", function(e){
    	var projAddCount = $('#projAddCount').attr('data-value');
		if (projAddCount == 0) {
			swal('알림', '등록된 거래가 없습니다.', 'warning')
		} else {
			$("#myProject").remove();
			
			$('ul.my-tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-my-tab4').addClass('current');
			$("#my-tab-4").addClass('current');
			
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/myPage/delngManage/registDelng2',
		        data:{
		        	applyType:2
		        },
				success : function(json) {
					console.log(json.output)
					
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#my-tab-4").append(html);
				}
			});
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
			$("#myProject").remove();
			
			$('ul.my-tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-my-tab4').addClass('current');
			$("#my-tab-4").addClass('current');
			
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/project',
		        data:{
		        	applyType:2
		        },
				success : function(json) {
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#my-tab-4").append(html);
				}
			});
		}
    });
    
    //거래처 찾기 상세페이지로 이동
/*     $(document).on("click", ".project-title", function(e){
    	var projId = $(this).attr('data-projId');
    	window.location = ROOT_URL + "/project/detail?projId="+projId;
    }); */
    
    $(document).on("click", ".show-apply", function(e){
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
					output : json.output
				} 
	       		var template = Handlebars.compile($("#apply-tmpl").html());
	       		var html = template(content);
	       		
	       		$("#apply-table"+idx).append(html);
			}
		});
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
});
</script>
<script type="text/x-handlebars-template" id="myProject-tmpl">
			<div id="myProject">
				<div class="myProjBox">
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type projAddCountText">등록한 거래</div>
							<div class="textBox1"><button id="projAddCount" data-value="{{projAddCount}}">{{projAddCount}}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type contractCountText">지원한 거래</div>
							<div class="textBox1"><button id="myApplyCount" value="{{myApplyCount}}">{{myApplyCount}}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type closedCountText">마감한 거래/후기</div>
							<div class="textBox1"><button id="closedCount" value="{{contractCount}}">0건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">						
						{{#ifCond memSort '==' 1}}
							<div class="p-type recommendCountText">판매자에게 제안한 거래</div>
						    <div class="textBox1"><button id="recommendCount" value="{{recommendCount}}">{{recommendCount}}건</button></div>
						{{/ifCond}}
						{{#ifCond memSort '==' 2}}
							<div class="p-type recommendCountText">공급자에게 제안 받은 거래</div>
							<div class="textBox1"><button id="recommendCount" value="{{recommendCount}}">{{recommendCount}}건</button></div>
						{{/ifCond}}
						</div>
					</div>
					<div class="proj-type" style="border-right:0;">
						<div class="myProjBox2">
							<div class="p-type scrapCountText">스크랩한 거래</div>
							<div class="textBox1"><button id="scrapCount" value="{{scrapCount}}">0건</button></div>
						</div>
					</div>
				</div>
				<input type="hidden" id="myMemSort" value="{{memSort}}">
				<div id="myProject-table" class="myProject-table">
					<div>
						<div>
							<div class="th">등록일</div>
							<div class="th">거래명</div>						
							<div class="th">마감일</div>
							<div class="th">모집인원</div>
							<div class="th">지원자인원</div>
							<div class="th">지원자 관리</div>
						</div>
					</div>
					<div>
					{{#output}}
						<div class="show-apply" data-projId="{{projId}}" data-index="{{@key}}">
							<div class="td">{{projRegDate}}</div>
							<div class="td project-title" data-projId="{{projId}}">{{projTitle}}</div>
							<div class="td">{{projEndDate}}</div>
							<div class="td">{{projRecruitNum}}명</div>
							<div class="td">{{applyCount}}명</div>
							<div class="td">
								<button class="show-applicant">관리하기</button>
							</div>
						</div>
						<div class="apply-table" id="apply-table{{@key}}">

						</div>
					{{/output}}
					</div>
				</div>
			</div>
</script>
<script type="text/x-handlebars-template" id="apply-tmpl">
							<div id="applyList">
								{{#ifCond output '!=' 0}}
									<div class="tr">
										<div class="th" style="width: 140px;">지원일</div>
										<div class="th" style="width: 180px;">지원자</div>						
										<div class="th" style="width: 500px;">판매채널</div>
										<div class="th" style="width: 165px;">매출규모</div>
										<div class="th" style="width: 165px;">판매경력</div>
										<!-- <div class="th" style="width: 130px;">승인/거절</div> -->
										<div class="th" style="width: 130px;">연락처</div>
									</div>
									{{#output}}
										<div class="tr">
											<div class="td" style="width: 140px;">{{applyRegDate}}</div>
											<div class="td" style="width: 180px;">{{applyMemNick}}</div>
											<div class="td" style="width: 500px;">SNS, 커뮤니티, 종합몰, 폐쇄몰, 오픈마켓, 해외</div>
										{{#ifCond profileVolume '==' null}}
											<div class="td" style="width: 165px;">미등록</div>
										{{else}}
											<div class="td" style="width: 165px;">{{profileVolume}}</div>
										{{/ifCond}}
											<div class="td" style="width: 165px;">{{profileCareer}}</div>
											<div class="td" style="width: 130px;">
												<!-- <button>지원거절</button> -->
												{{memTel}}
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