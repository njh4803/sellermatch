<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/detailProject.css" rel="stylesheet" type="text/css">
<div class="partner_bnr m-detail">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="top-Box">거래처 상세페이지</div>
			<hr>
		</div>
		<div class="container1 content clearfix">
			<div class="container2 clearfix">
				<input type="hidden" id="projId" value="${output.projId}">
				<input type="hidden" id="projSort" value="${output.projSort}">
				<c:choose>
					<c:when test="${output.projDday < 0}">
						<div class="D-day">마감</div>
					</c:when>
					<c:otherwise>
						<div class="D-day">마감 ${output.projDday}일전</div>
					</c:otherwise>
				</c:choose>
				<c:if test="${output.projSort == 1}">
	        		<div class="sFindBox">판매자 찾음</div>
	        	</c:if>
	        	<c:if test="${output.projSort == 2}">
	        		<div class="pFindBox">공급자 찾음</div>
	        	</c:if>				
	           	<div class="projDetail"  data-index="${status.index}">
					<div class="titleBox">${output.projTitle}</div>
				</div>
				<div class="clearfix"></div>
				<div class="detailBox1">
					<div class="infoBox">
						<div class="textBox2"><span>상품분류</span></div>
						<div class="textRow"><span>${output.projIndusName}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>상품단가</span></div>
						<div class="textRow"><span>${output.projPrice}원</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>등록지역</span></div>
						<div class="textRow"><span>${output.projNationName}</span></div>
					</div>				
				</div>
				<div class="detailBox1">
					<div class="infoBox">
						<div class="textBox2"><span>공급방법</span></div>
						<div class="textRow"><span>${output.projSupplyTypeName}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>모집인원</span></div>
						<div class="textRow"><span>${output.projRecruitNum}명</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>지원자수</span></div>
						<div class="textRow"><span>${output.applyCount}명</span></div>
					</div>
				</div>
				<div class="detailBox2">
					<div class="infoBox2"><span>모집마감</span><span class="textRow2">${output.projEndDate}</span></div>
					<div class="infoBox2"><span>판매마진</span><span class="textRow2">${output.projMarginName}</span></div>
				</div>			
				<div class="detailBox2 detailBox2-b">
					<div class="infoBox2 infoBox3"><span>판매채널</span><span class="textRow2">
						<c:forEach var="projChannelList" items="${output.projChannelList}" varStatus="status">
							${projChannelList}&nbsp;
		           		</c:forEach>
		           		</span>
	           		</div>
	           	</div>
				<div class="detailBox2">
					<div class="infoBox2 infoBox3"><span>검증내용</span><span class="textRow2">
						<c:if test="${output.profileBizCerti == 1}">
							사업자인증
						</c:if>
						<c:if test="${output.memRname == 1}">
							신원인증
						</c:if>
						<c:if test="${output.projProfit == 1}">
							수익성검증
						</c:if>
						<c:if test="${output.projProdCerti == 1}"> 
							상품검증
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							채널검증
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							매출검증
						</c:if>
						</span>
					</div>
	           	</div>				
				<div class="detailBox3">상세설명
					<div class="textBox1">
						${output.projDetail}
						<c:forEach var="projDetailImgList" items="${output.projDetailImgList}">
							<div class="detailImgBox">
								<img alt="" src="${pageContext.request.contextPath}/upload?name=${projDetailImgList}">
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="detailBox3">필수요건
					<div class="textBox1">
						${output.projRequire}
					</div>
				</div>
				<div class="detailBox3">첨부파일
					<div class="textBox1">
						싱싱청과 상세페이지 파일.hwp
					</div>
				</div>
				<div class="detailBox3">특징</div>
				<div>
					<c:forEach var="projKeywordList" items="${output.projKeywordList}">
		           		<div class="tagBox">${projKeywordList}</div>
		           	</c:forEach>					
				</div>
				<div class="detailBox3">문의하기
					<form action="javascript:void(0);" method="post" id="question-form" class="text-right">
					    <textarea name="question" class="textBox2 question" placeholder="-작성한 내용은 수정 및 삭제가 불가합니다&#13;&#10;-이메일. 전화번호 등을 게시하여 직거래를 유도할 경우 서비스 이용에 제재를 받을 수 있습니다"></textarea>
					    <input type="submit" class="question-btn" value="문의하기">
					</form>
				</div>
				<div class="detailBox4">
					<div class="reviewBox clearfix">
						<div class="reviewBox2">
							<div class="reviewNick">최고최고</div>
							<div class="reviewDate">2021.02.01</div>						
						</div>
						<div class="reviewContents">매치를 위한 필수요건 내용이 들어가면 됩니다. 매치를 위한 필수요건 내용이 들어가면 됩니다</div>
					</div>
					
				</div>
			</div> 
		</div>
		<div class="container3">
<%--           	<div>
       			<button class="Btn">
       				<img class="star scrapBtn" alt="" src="${pageContext.request.contextPath}/assets/img/starNone.png">관심등록
       			</button>
       		</div> --%>
       		<div class="btn-container">
          		<div class="btnBox">스크랩
          			<img alt="" src="${pageContext.request.contextPath}/assets/img/scrap.png">
	       		</div>
	       		<div class="btnBox">좋아요
	       			<img alt="" src="${pageContext.request.contextPath}/assets/img/like.png">
	       		</div>
	       		<div class="btnBox">공유
	       			<img alt="" src="${pageContext.request.contextPath}/assets/img/share.png">
	       		</div>    		
       		</div>
			<div class="text-center">
				<img class="profileImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
				<div class="profileNick">${output.memNick}</div>
			</div>
			<div class="applyNumBox">
				<div>
					<span>거래 등록</span>
					<span>${output.projAddCount}건</span>
				</div>
				<div>
					<span>계약</span>
					<span>${output.contractCount}건</span>
				</div>
			</div>
			<div class="text-center">
				<div class="applyStatus">지원현황</div>
			</div>
			<c:choose>
				<c:when test="${output.applyCount > 0}">
					<c:forEach var="applyDto" items="${applyDto}">
					<div class="applyBox">
						<img class="miniImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
						<div class="applyNick">
							<div>${applyDto.memNick}</div>
							<div class="applyTag">
								<c:forEach var="hashtag" items="${applyDto.profileHashtagList}">
	        						# ${hashtag}
	        					</c:forEach>
							</div>
						</div>
					</div>
					</c:forEach>	
				</c:when>
				<c:otherwise>
					<div class="text-left">
						<div>지원자 없음</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<div class="partner_bnr w-detail">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="top-Box">거래처 상세페이지</div>
			<div class="top-Box2">
				조건에 맞는 공급자와 판매자를 찾고 거래 신청할 수 있습니다.
			</div>
			<hr>
		</div>
		<div class="container1 content clearfix">
			<div class="container2 clearfix">
				<input type="hidden" id="projId" value="${output.projId}">
				<input type="hidden" id="projSort" value="${output.projSort}">
	           	<div class="projDetail"  data-index="${status.index}">
					<div class="titleBox">${output.projTitle}</div>
					<c:choose>
						<c:when test="${output.projDday < 0}">
							<div class="D-day">마감</div>
						</c:when>
						<c:otherwise>
							<div class="D-day">마감 ${output.projDday}일전</div>
						</c:otherwise>
					</c:choose>
					<c:if test="${output.projSort == 1}">
		        		<div class="sFindBox">판매자 찾음</div>
		        	</c:if>
		        	<c:if test="${output.projSort == 2}">
		        		<div class="pFindBox">공급자 찾음</div>
		        	</c:if>
				</div>
				<div class="clearfix"></div>
				<div class="detailBox1">
					<div class="infoBox">
						<div class="textBox2"><span>상품분류</span></div>
						<div class="textRow"><span>${output.projIndusName}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>상품단가</span></div>
						<div class="textRow"><span>${output.projPrice}원</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>판매마진</span></div>
						<div class="textRow"><span>${output.projMarginName}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>등록지역</span></div>
						<div class="textRow"><span>${output.projNationName}</span></div>
					</div>				
				</div>
				<div class="detailBox1">
					<div class="infoBox">
						<div class="textBox2"><span>공급방법</span></div>
						<div class="textRow"><span>${output.projSupplyTypeName}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>모집마감</span></div>
						<div class="textRow"><span>${output.projEndDate}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>모집인원</span></div>
						<div class="textRow"><span>${output.projRecruitNum}명</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>지원자수</span></div>
						<div class="textRow"><span>${output.applyCount}명</span></div>
					</div>
				</div>
				<div class="detailBox2">
					<div class="infoBox2"><span>판매채널</span><span class="textRow2">
						<c:forEach var="projChannelList" items="${output.projChannelList}" varStatus="status">
							${projChannelList}&nbsp;
		           		</c:forEach>
		           		</span>
	           		</div>
					<div class="infoBox2"><span>검증내용</span><span class="textRow2">
						<c:if test="${output.profileBizCerti == 1}"> 
							사업자인증
						</c:if>
						<c:if test="${output.memRname == 1}">
							신원인증
						</c:if>
						<c:if test="${output.projProfit == 1}">
							수익성검증
						</c:if>
						<c:if test="${output.projProdCerti == 1}"> 
							상품검증
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							채널검증
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							매출검증
						</c:if>
						</span>
					</div>
				</div>
				<div class="detailBox3">상세설명
					<div class="textBox1">
						${output.projDetail}
						<c:forEach var="projDetailImgList" items="${output.projDetailImgList}">
							<div class="detailImgBox">
								<img alt="" src="${pageContext.request.contextPath}/upload?name=${projDetailImgList}">
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="detailBox3">필수요건
					<div class="textBox1">
						${output.projRequire}
					</div>
				</div>
				<div class="detailBox3">첨부파일
					<div class="textBox1">
						싱싱청과 상세페이지 파일.hwp
					</div>
				</div>
				<div class="detailBox3">특징</div>
				<div>
					<c:forEach var="projKeywordList" items="${output.projKeywordList}">
		           		<div class="tagBox">${projKeywordList}</div>
		           	</c:forEach>					
				</div>
				<div class="detailBox3">문의하기
					<form action="javascript:void(0);" method="post" id="question-form" class="text-right">
					    <textarea name="question" class="textBox2 question" placeholder="-작성한 내용은 수정 및 삭제가 불가합니다&#13;&#10;-이메일. 전화번호 등을 게시하여 직거래를 유도할 경우 서비스 이용에 제재를 받을 수 있습니다"></textarea>
					    <input type="submit" class="question-btn" value="문의하기">
					</form>
				</div>
				<div class="detailBox4">
					<div class="reviewBox clearfix">
						<div class="reviewBox2">
							<div class="reviewNick">최고최고</div>
							<div class="reviewDate">2021.02.01</div>						
						</div>
						<div class="reviewContents">매치를 위한 필수요건 내용이 들어가면 됩니다. 매치를 위한 필수요건 내용이 들어가면 됩니다</div>
					</div>
					
				</div>
			</div> 
		</div>
		<div class="container3">
<%--           	<div>
       			<button class="Btn">
       				<img class="star scrapBtn" alt="" src="${pageContext.request.contextPath}/assets/img/starNone.png">관심등록
       			</button>
       		</div> --%>
       		<div class="text-center"> 
       			<button class="matchBtn" id="applyBtn">지원하기
       			</button>
       		</div>
       		<div class="btn-container">
          		<div class="btnBox">스크랩
          			<img alt="" src="${pageContext.request.contextPath}/assets/img/scrap.png">
	       		</div>
	       		<div class="btnBox">좋아요
	       			<img alt="" src="${pageContext.request.contextPath}/assets/img/like.png">
	       		</div>
	       		<div class="btnBox">공유
	       			<img alt="" src="${pageContext.request.contextPath}/assets/img/share.png">
	       		</div>    		
       		</div>
			<div class="text-center">
				<img class="profileImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
				<div class="profileNick">${output.memNick}</div>
			</div>
			<div class="applyNumBox">
				<div>
					<span>거래 등록</span>
					<span>${output.projAddCount}건</span>
				</div>
				<div>
					<span>계약</span>
					<span>${output.contractCount}건</span>
				</div>
			</div>
			<div class="text-center">
				<div class="applyStatus">지원현황</div>
			</div>
			<c:choose>
				<c:when test="${output.applyCount > 0}">
					<c:forEach var="applyDto" items="${applyDto}">
					<div class="applyBox">
						<img class="miniImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
						<div class="applyNick">
							<div>${applyDto.memNick}</div>
							<div class="applyTag">
								<c:forEach var="hashtag" items="${applyDto.profileHashtagList}">
	        						# ${hashtag}
	        					</c:forEach>
							</div>
						</div>
					</div>
					</c:forEach>	
				</c:when>
				<c:otherwise>
					<div class="text-left">
						<div>지원자 없음</div>
					</div>
				</c:otherwise>
			</c:choose>
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
	$(document).on("click", "#bt04" ,function(){
		var position = $("#window4").offset();
		$("html").stop().animate({scrollTop:(position.top-130)}, 500);
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt04").css("background-color", "#e3e3e3");
		$("#bt04").css("border", "1px solid black");
	});
	
	$(document).on("click", "#applyBtn", function(){
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		var proj_sort = $('#projSort').val();
		console.log(mem_sort);
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (mem_sort == proj_sort) {
			var text='';
			if (proj_sort == 1) {
				text = '판매자만 이용가능합니다.'
			}
			if (proj_sort == 2) {
				text = '공급자만 이용가능합니다.'
			}
			swal({
                title: '알림',
                text: text,
               	type: 'warning',
            });
			return;
		}
		
		
		
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/apply/project",
		    data: {
		    	applyProjId: $("#projId").val(),
		    	applyMemId: login_id,
		    	applyType:1
		    },
            success: function(json) {
          		if (json.result == 1) {
          			swal('알림', '이미 지원한 프로젝트입니다.', 'success');
          			return;
				}
				swal({
	  		          title: '확인',
	  		          text: '지원 하시겠습니까?', 
	  		          type: "question",
	  		          showCancelButton: true
	  		    }).then(function(result) {			
	  		        if (result.value) {
	  		        	var data = {
	  		        		applyProjId: $("#projId").val(),
	  		        		applyProjState:2,
	  		        		applyType:1
	  		        	};
	  		        	  
	  		        	$.ajax({
	  			   			type: "POST",
	  			   	        url: ROOT_URL+"/apply/project",
	  			   	        data: data,
	  		                success: function() {
	  		                	swal('알림', '지원 완료.', 'success');
	  		                	window.location.href = ROOT_URL+"/project/detail?projId="+$("#projId").val();
	  		                }
	  			      	});
	  		      	}
				});	
			}
		});
	})
});
</script>
    </body>
</html>
