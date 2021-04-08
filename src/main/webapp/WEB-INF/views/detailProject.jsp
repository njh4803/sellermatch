<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/detailProject.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/share.css" rel="stylesheet" type="text/css">
<div class="partner_bnr m-detail">
	<div class="partner_wrap">
		<div class="partner_bnr3">
			<div class="top-Box">거래처 상세페이지</div>
		</div>
		<hr>
		<div class="container1 content clearfix">
			<div class="container2 clearfix">
				<input type="hidden" id="projIdx" value="${output.projIdx}">
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
						<div class="textRow"><span><fmt:formatNumber value="${output.projPrice}" type="number"/>원</span></div>
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
					<c:if test="${output.hashTag1 != null}">
						<div class="tagBox">${output.hashTag1}</div>
					</c:if>
		           	<c:if test="${output.hashTag2 != null}">
						<div class="tagBox">${output.hashTag2}</div>
					</c:if>
					<c:if test="${output.hashTag3 != null}">
						<div class="tagBox">${output.hashTag3}</div>
					</c:if>
					<c:if test="${output.hashTag4 != null}">
						<div class="tagBox">${output.hashTag4}</div>
					</c:if>
					<c:if test="${output.hashTag5 != null}">
						<div class="tagBox">${output.hashTag5}</div>
					</c:if>				
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
				<c:if test="${output.profilePhoto != null}">
					<img class="profileImgBox"  src="upload/${output.profilePhoto}">
				</c:if>
				<c:if test="${output.profilePhoto == null}">
					<img class="profileImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
				</c:if>
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
	
						</div>						
					</div>
					<div class="applyTag">
						<c:forEach var="hashtag" items="${applyDto.profileHashtagList}">
       						# ${hashtag}
       					</c:forEach>
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
				조건에 맞는 공급자와 판매자를 찾고 거래 조율할 수 있습니다.
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
							<div class="D-day">마감완료</div>
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
				<div class="detailContainer">
					<div class="detailBox1">
						<div class="infoBox">
							<div class="textBox2"><span>상품분류</span></div>
							<div class="textRow"><span>${output.projIndusName}</span></div>
						</div>
						<div class="infoBox">
							<div class="textBox2"><span>상품단가</span></div>
							<div class="textRow"><span><fmt:formatNumber value="${output.projPrice}" type="number"/>원</span></div>
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
				</div>
				<div class="detailBox3"><span>상세설명</span>
					<div class="textBox1">
						<p>${output.projDetail}</p>
						<c:forEach var="projDetailImgList" items="${output.projDetailImgList}">
							<div class="detailImgBox">
								<img alt="" src="${pageContext.request.contextPath}/upload?name=${projDetailImgList}">
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="detailBox3"><span>필수요건</span>
					<div class="textBox1">
						${output.projRequire}
					</div>
				</div>
				<div class="detailBox3"><span>해시태그</span>
					<c:if test="${output.hashTag1 != null}">
						<div class="tagBox">${output.hashTag1}</div>
					</c:if>
		           	<c:if test="${output.hashTag2 != null}">
						<div class="tagBox">${output.hashTag2}</div>
					</c:if>
					<c:if test="${output.hashTag3 != null}">
						<div class="tagBox">${output.hashTag3}</div>
					</c:if>
					<c:if test="${output.hashTag4 != null}">
						<div class="tagBox">${output.hashTag4}</div>
					</c:if>
					<c:if test="${output.hashTag5 != null}">
						<div class="tagBox">${output.hashTag5}</div>
					</c:if>				
				</div>
				<c:if test="${output.projFile != null}">
					<div class="detailBox3"><span>첨부파일</span>
						<div class="fileBox">
							<div class="fileInfo">
								${output.orginName}
								<a class="download" href="/upload/${output.projFile}" download="${output.orginName}" style="background: url('${pageContext.request.contextPath}/assets/img/download.png');"></a>
							</div>
						</div>
					</div>				
				</c:if>
			</div> 
			<div class="reviewContainer clearfix">
				<div class="detailBox3"><span>문의</span>
					<form action="javascript:void(0);" method="post" id="question-form" class="text-right">
						<div class="textBox2">
						    <textarea name="question" class="question" placeholder="- 작성한 내용은 수정 및 삭제가 불가합니다&#13;&#10;- 이메일. 전화번호 등을 게시하여 직거래를 유도할 경우 서비스 이용에 제재를 받을 수 있습니다"></textarea>
						    <hr>
						    <div class="clearfix">
						    	<input type="checkbox" id="scrit" name="scrit-pw">
					    		<label for="scrit">
					    			<span>비밀글</span>
					    		</label>
						    	<input type="submit" class="question-btn" value="작성하기">
						    </div>						
						</div>
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
       		<div class="text-center"> 
       			<button class="matchBtn" id="applyBtn">
       				<img class="applyImg" alt="" src="${pageContext.request.contextPath}/assets/img/applying.png">지원하기
       			</button>
       		</div>
       		<div class="btn-container">
           		<div class="btnBox scrapBtn" id="scrapBtn" style="cursor: pointer;">
          			<img alt="" src="${pageContext.request.contextPath}/assets/img/scrap.png"> 스크랩
	       		</div>
	       		<%--
	       		<div class="btnBox">좋아요
	       			<img alt="" src="${pageContext.request.contextPath}/assets/img/like.png">
	       		</div> --%>
	       		<div class="btnBox shareBtn">
	       			<img class="shareImg" alt="" src="${pageContext.request.contextPath}/assets/img/share.png">공유하기
	       		</div>    		
       		</div>
			<div class="text-center">
				<c:choose>
					<c:when test="${output.profilePhoto != null}">
						<img class="profileImgBox"  src="${pageContext.request.contextPath}/upload/${output.profilePhoto}">
					</c:when>
					<c:otherwise>
						<img class="profileImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
					</c:otherwise>
				</c:choose>
				<div class="profileNick">${output.memNick}</div>
			</div>
			<div class="applyNumBox">
				<div>
					<span>등록한 거래</span>
					<span>${output.projAddCount}건</span>
				</div>
				<div>
					<span>완료한 거래</span>
					<span>${output.contractCount}건</span>
				</div>
			</div>
			<div class="applyNumBox2">
				<div>
					<span>지원승인 수</span>
					<span>${output.okeyCount}건</span>
				</div>
			</div>
			<div class="text-center">
				<div class="applyStatus">지원현황</div>
			</div>
			<c:choose>
				<c:when test="${output.applyCount > 0}">
					<c:forEach var="applyDto" items="${applyDto}">
					<div class="applyBox">
						<c:choose>
							<c:when test="${applyDto.profilePhoto != null}">
								<img class="miniImgBox"  src="${pageContext.request.contextPath}/upload/${applyDto.profilePhoto}">
							</c:when>
							<c:otherwise>
								<img class="miniImgBox"  src="${pageContext.request.contextPath}/assets/img/profile.png">
							</c:otherwise>
						</c:choose>
						<div class="applyNick">
							<div>${applyDto.applyMemNick}</div>
							<div class="applyTag">
								<c:forEach var="hashtag" items="${applyDto.profileHashtagList}" varStatus="status">
									<c:if test="${status.index < 2}">
										# ${hashtag}
									</c:if>
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
	  		        		applyProjId: $("#projId").val(),
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
		  			  		    		window.location.href = ROOT_URL+"/member/myPage";
		  			  		    	}
		  			  		    });
	  		                }
	  			      	});
	  		      	}
				});	
			}
		});
	})
	
		$(document).on("click", "#scrapBtn", function(){
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		var mem_Idx  = $('#projectInsert').data('memIdx');
		var proj_sort = $('#projSort').val();
		console.log(mem_Idx);
		
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
		
		
		//여기부터 스크랩
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/myPage/scrapDupCheck",
		    data: {
		    	projIdx: $("#projIdx").val()
		    },
            success: function(json) {
            	console.log(json.result); 
          		if (json.result >= 1) {
          			swal('알림', '이미 스크랩한 거래입니다.', 'success');
          			return;
				}
				swal({
	  		          title: '확인',
	  		          text: '스크랩 하시겠습니까?', 
	  		          type: "question",
	  		          width: '400px',
	  		          showCancelButton: true
	  		    }).then(function(result) {			
	  		        if (result.value) {
	  		        	var data = {
	  		        		projIdx: $("#projIdx").val()
	  		        	};
	  		        	  
	  		        	$.ajax({
	  			   			type: "POST",
	  			   	        url: ROOT_URL+"/myPage/scrap",
	  			   	        data: data,
	  		                success: function() {
	  		                	swal({
				  		          title: '완료',
				  		          text: '스크랩을 확인하시겠습니까?', 
				  		          type: "success",
				  		          width: '400px',
				  		          showCancelButton: true
		  			  		    }).then(function(result) {	
		  			  		    	if (result.value) {
		  			  		    		window.location.href = ROOT_URL+"/myPage/delngManage/scrapList";
		  			  		    	}
		  			  		    });
	  		                }
	  			      	});
	  		      	}
				});	
			}
		});
	})
});
</script>
<script src="${pageContext.request.contextPath}/assets/js/share.js"></script>
    </body>
</html>
