<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="modal/recommendModal.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/detailSeller.css" rel="stylesheet" type="text/css">
<div class="partner_bnr m-detail">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="top-Box">판매자 상세페이지</div>
		</div>
		<hr>
		<div class="container1 content clearfix">
			<input type="hidden" id="profileMemId" value="${output.profileMemId}">
			<div class="container2">
				<div class="btnBox">
					<button class="scrap">
						스크랩
					</button>
					<button class="match" id="applyBtn">
						지원하기
					</button>
				</div>
				<div class="infoBox1">
					<c:forEach var="profileHashtag" items="${output.profileHashtag}" varStatus="status">
        				<div class="hashtag"># ${profileHashtag}</div>
        			</c:forEach>
				</div>
				<div class="profileImgBox">
					<img class="profileImg"  src="${pageContext.request.contextPath}/assets/img/profile.png">
				</div>
				<div class="infoBox1">
					<div class="intro">
						${output.memNick} 
					</div>
				</div>
				<div class="infoBox2">
					<div class="textBox2">판매채널
						<c:forEach var="profileChannel" items="${output.profileChannelList}" varStatus="status">
	        				<span>${profileChannel}</span>
	        			</c:forEach>
	           		</div>
	           		<div class="textBox2">검증내용
						<c:if test="${output.profileBizCerti == 1}"> 
							<span>사업자인증</span>
						</c:if>
						<c:if test="${output.memRname == 1}">
							<span>신원인증</span>
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							<span>채널검증</span>
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							<span>매출검증</span>
						</c:if>
	           		</div>
				</div>
			</div>
			<div class="detailBox1">
				<div class="infoBox">
					<div class="textBox2"><span>유형</span></div>
					<c:if test="${output.profileBizSortName != ''}">
						<div class="textRow"><span>${output.profileBizSortName}</span></div>
					</c:if>
					<c:if test="${output.profileBizSortName == ''}">
						<div class="textRow"><span>등록X</span></div>
					</c:if>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>분류</span></div>
					<div class="textRow"><span>${output.profileIndusName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>지역</span></div>
					<div class="textRow"><span>${output.profileNationName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>요청받은수</span></div>
					<div class="textRow"><span>${output.recommendCount}명</span></div>
				</div>
			</div>
			<div class="detailBox2">
				<div class="infoBox">
					<div class="textBox2"><span>매출규모</span></div>
					<div class="textRow"><span>${output.profileVolume}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>판매경력</span></div>
					<div class="textRow"><span>${output.profileCareerName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>계약 프로젝트</span></div>
					<div class="textRow"><span>${output.contractCount}개</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>등록 프로젝트</span></div>
					<div class="textRow"><span>${output.projAddCount}개</span></div>
				</div>				
			</div>
			<div class="detailBox3">상세정보</div>
			<hr class="profile-hr">
			<div class="ContentsBox1">
				${output.profileIntro}
			</div>			
			<div class="detailBox3">프로젝트</div>
			<hr class="profile-hr">
			<div class="ContentsBox2">
				<c:forEach var="project" items="${project}">
					<div>
						<div class="projectDate">${project.projRegDate}</div>
						<div class="project">${project.projTitle}</div>
					</div>
				</c:forEach>
			</div>
			<div class="detailBox3">공급자평가</div>
			<hr class="profile-hr">
			<div class="ContentsBox3">
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
			</div>
		</div>
	</div>
</div>


<div class="partner_bnr w-detail">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="top-Box">판매자 상세페이지</div>
			<div class="top-Box2">
				조건에 맞는 공급자와 판매자를 찾고 거래 신청할 수 있습니다.
			</div>
			<hr>
		</div>
		<div class="container1 content">
			<input type="hidden" id="profileMemId" value="${output.profileMemId}">
			<div class="container2">
				<c:choose>
					<c:when test="${output.profilePhoto == 'null'}">
						<div class="profileImgBox">
							<img class="profileImg"  src="${pageContext.request.contextPath}/assets/img/profile.png">
						</div>
					</c:when>
					<c:otherwise>
						<div class="profileImgBox">
							<img class="profileImg"  src="upload/${output.profilePhoto}">
						</div>
					</c:otherwise>	
				</c:choose>
				<div class="infoBox1 leftBox">
					<div class="intro">
						${output.memNick} 
					</div>
				</div>
				<div class="infoBox2 leftBox">
	           		<div class="textBox2">검증내용
	           			<div class="auth-container">
							<c:if test="${output.memRname == 1}">
								<div class="authBox">신원인증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
								</div>
							</c:if>
							<c:if test="${output.memRname == 0}">
								<div class="authBox">신원인증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
								</div>
							</c:if>
							<c:if test="${output.profileBizCerti == 1}">
								<div class="authBox">사업자인증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
								</div>
							</c:if>
							<c:if test="${output.profileBizCerti == 0}">
								<div class="authBox">사업자인증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
								</div>
							</c:if>
							<c:if test="${output.profileChChk == 1}">
								<div class="authBox">채널검증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
								</div>
							</c:if>
							<c:if test="${output.profileChChk == 0}">
								<div class="authBox">채널검증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
								</div>
							</c:if>
							<c:if test="${output.profileSaleChk == 1}">
								<div class="authBox">매출검증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth.png">
								</div>
							</c:if>
							<c:if test="${output.profileSaleChk == 0}">
								<div class="authBox">매출검증
									<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/x-button.png">
								</div>
							</c:if>	        			
	           			</div>
	           		</div>
					<div class="textBox2">판매채널
						<div class="channelBox">
							<c:forEach var="profileChannel" items="${output.profileChannelList}" varStatus="status">
								<c:choose>
									<c:when test="${status.last}">
										<span>${profileChannel}</span>
									</c:when>
									<c:otherwise>
										<span>${profileChannel}, </span>
									</c:otherwise>
								</c:choose>
		        			</c:forEach>						
						</div>
	           		</div>	    
					<div class="textBox2">해시태그
						<c:forEach var="profileHashtag" items="${output.profileHashtag}" varStatus="status">
	        				<div class="hashtag"> ${profileHashtag}</div>
	        			</c:forEach>
        			</div>           		
				</div>
				<div class="btnBox">
					<!-- <button class="scrap">
						스크랩
					</button> -->
					<button class="match" id="applyBtn">
						<img class="applyImg" alt="" src="${pageContext.request.contextPath}/assets/img/applying.png">지원하기
					</button>
					<button class="share" id="shareBtn">
						<img class="shareImg" alt="" src="${pageContext.request.contextPath}/assets/img/share.png">공유하기
					</button>
				</div>
			</div>
			<div class="detailBox1">
				<div class="infoBox">
					<div class="textBox2"><span>유형</span></div>
					<c:if test="${output.profileBizSortName != ''}">
						<div class="textRow"><span>${output.profileBizSortName}</span></div>
					</c:if>
					<c:if test="${output.profileBizSortName == ''}">
						<div class="textRow"><span>등록X</span></div>
					</c:if>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>분류</span></div>
					<div class="textRow"><span>${output.profileIndusName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>지역</span></div>
					<div class="textRow"><span>${output.profileNationName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>요청 받은 수</span></div>
					<div class="textRow"><span>${output.recommendCount}명</span></div>
				</div>				
			</div>
			<div class="detailBox2">
				<div class="infoBox">
					<div class="textBox2"><span>매출규모</span></div> 
					<div class="textRow"><span><fmt:formatNumber value="${output.profileVolume}" type="number"/>원</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>판매경력</span></div>
					<div class="textRow"><span>${output.profileCareerName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>완료한 거래</span></div>
					<div class="textRow"><span>${output.contractCount}개</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>등록한 거래</span></div>
					<div class="textRow"><span>${output.projAddCount}개</span></div>
				</div>				
			</div>
			<div class="detailBox3">상세내용</div>
			<hr class="profile-hr">
			<div class="ContentsBox1">
				${output.profileIntro}
			</div>			
			<div class="detailBox3">판매이력</div>
			<hr class="profile-hr">
			<div class="ContentsBox2">
				<c:forEach var="project" items="${project}">
						<div class="projectDate">${project.projRegDate}</div>
						<div class="project">${project.projTitle}</div>
				</c:forEach>
			</div>
			<div class="detailBox3">공급자 평가</div>
			<hr class="profile-hr">
			<div class="ContentsBox3">
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
			</div>
		</div>
	</div>
</div>	
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
	$(document).on("click", "#bt01" ,function(){
		var position = $("#window1").offset(); /* 함수 position에 #window1의 위치를 담는다 */
		$("html").stop().animate({scrollTop:(position.top-130)}, 500); /* 문서의 스크롤 위치를 애니메이션으로 이동 -> 그 위치는 함수 position(#window1의 좌표값)의 top값 */
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt01").css("background-color", "#e3e3e3");
		$("#bt01").css("border", "1px solid black");
	});
	$(document).on("click", "#bt02" ,function(){
		var position = $("#window2").offset();
		$("html").stop().animate({scrollTop:(position.top-130)}, 500);
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt02").css("background-color", "#e3e3e3");
		$("#bt02").css("border", "1px solid black");
	});
	$(document).on("click", "#bt03" ,function(){
		var position = $("#window3").offset();
		$("html").stop().animate({scrollTop:(position.top-130)}, 500);
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt03").css("background-color", "#e3e3e3");
		$("#bt03").css("border", "1px solid black");
	});	
	
	$(document).on("click", "#applyBtn", function(){
		$(".radioBox").remove();
		
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (mem_sort != 1) {
			swal({
                title: '알림',
                text: '공급자만 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/project",
	        success: function(json) {
	        	console.log(json.projectList)
	        	var content = json
           		var template = Handlebars.compile($("#recommend-tmpl").html());
           		var html = template(content);
           		$(".recommend").after(html);
			}
		});
		
		$("#recommendModal").modal();
	})
});
</script>
<script type="text/x-handlebars-template" id="recommend-tmpl">
<div class="recommendText">지원요청 할 프로젝트를 선택해주세요.</div>
{{#projectList}}
<div class="radioBox">
	<input type="radio" name="recommendProj" value="{{projId}}">
	<div class="projectTitle">{{projTitle}}</div>
</div>
{{/projectList}}
</script>
    </body>
</html>
