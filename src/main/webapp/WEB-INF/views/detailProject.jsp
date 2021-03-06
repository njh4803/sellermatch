<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
				<input type="hidden" id="projState" value="${output.projState}">
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
	           	<div class="projDetail clearfix"  data-index="${status.index}">
					<div class="titleBox">${output.projTitle} <label style="color:red;">&nbsp&nbsp[${output.replyCount}]</label></div>
				</div>
				<div class="clearfix"></div>
				<div class="detailBox1">
					<div class="infoBox">
						<div class="textBox2"><span>상품분류</span></div>
						<div class="textRow"><span>${output.projIndusName}</span></div>
					</div>
					<div class="infoBox">
						<div class="textBox2"><span>상품단가</span></div>
						<div class="textRow"><span>
							<c:if test="${output.projPrice == 1}">1만원 미만</c:if>
							<c:if test="${output.projPrice == 2}">1만원~3만원</c:if>
							<c:if test="${output.projPrice == 3}">3만원~10만원</c:if>
							<c:if test="${output.projPrice == 4}">10만원~50만원</c:if>
							<c:if test="${output.projPrice == 5}">50만원~100만원</c:if>
							<c:if test="${output.projPrice == 6}">100만원 초과</c:if>
							<c:if test="${output.projPrice == 0}">협상</c:if>
							<c:if test="${output.projPrice == ''}">협상</c:if>
						</span></div>
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
						<%-- <c:forEach var="projDetailImgList" items="${output.projDetailImgList}">
							<div class="detailImgBox">
								<img alt="" src="${pageContext.request.contextPath}/upload?name=${projDetailImgList}">
							</div>
						</c:forEach> --%>
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
					<form action="javascript:void(0);" method="post" id="m-question-form" class="text-right">
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
					<%-- <img class="profileImgBox"  src="upload/${output.profilePhoto}"> --%>
					<c:choose>
						<c:when test="${fn:indexOf(output.profilePhoto, 'https://sellmatchimg.s3.ap-northeast-2.amazonaws.com') == -1}">
							<img class="profileImgBox"  src="/upload/${output.profilePhoto}">
						</c:when>
						<c:otherwise>
							<img class="profileImgBox"  src="${output.profilePhoto}">
						</c:otherwise>
					</c:choose>
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
				<span style="float: left;">조건에 맞는 공급자와 판매자를 찾고 거래 조율할 수 있습니다.</span>
				<c:if test="${output.projMemId == member.memId}">
					<button class="btn" id="endBtn">마감하기</button>
					<button class="btn" id="editBtn">수정하기</button>
				</c:if>
			</div>
			<hr>
		</div>
		<div class="container1 content clearfix">
			<div class="container2 clearfix">
				<input type="hidden" id="projSort" value="${output.projSort}">
	           	<div class="projDetail clearfix"  data-index="${status.index}">
					<div class="titleBox">${output.projTitle}
						<c:if test="${output.replyCount >0}">
							<label style="color:#ff540f;">&nbsp&nbsp[${output.replyCount}]</label>
						</c:if>
					</div>
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
							<div class="textRow"><span>
							<c:if test="${output.projPrice == 1}">1만원 미만</c:if>
							<c:if test="${output.projPrice == 2}">1만원~3만원</c:if>
							<c:if test="${output.projPrice == 3}">3만원~10만원</c:if>
							<c:if test="${output.projPrice == 4}">10만원~50만원</c:if>
							<c:if test="${output.projPrice == 5}">50만원~100만원</c:if>
							<c:if test="${output.projPrice == 6}">100만원 초과</c:if>
							<c:if test="${output.projPrice == 0}">협상</c:if>
							</span></div>
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
						<%-- <c:forEach var="projDetailImgList" items="${output.projDetailImgList}">
							<div class="detailImgBox">
								<img alt="" src="${pageContext.request.contextPath}/upload?name=${projDetailImgList}">
							</div>
						</c:forEach> --%>
					</div>
				</div>
				<div class="detailBox3"><span>필수요건</span>
					<div class="textBox1">
						<p>${output.projRequire}</p>
					</div>
				</div>
				<div class="detailBox3"><span>해시태그</span>
					<c:if test="${output.hashTag1 != null and output.hashTag1 != ''}">
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
								<%-- <a class="download" href="/upload/${output.projFile}" download="${output.orginName}" style="background: url('${pageContext.request.contextPath}/assets/img/download.png');"></a> --%>
								<c:choose>
									<c:when test="${fn:indexOf(output.projFile, 'https://sellmatchimg.s3.ap-northeast-2.amazonaws.com') == -1}">
										<a class="download" href="/upload/${output.projFile}" download="${output.orginName}" style="background: url('${pageContext.request.contextPath}/assets/img/download.png');"></a>
									</c:when>
									<c:otherwise>
										<a class="download" href="${output.projFile}" download="${output.orginName}" style="background: url('${pageContext.request.contextPath}/assets/img/download.png');"></a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>				
				</c:if>
			</div> 
			<div class="reviewContainer clearfix">
				<div class="detailBox3"><span>문의</span>
					<form action="${pageContext.request.contextPath}/project/reply" method="post" id="question-form" class="text-right">
						<div class="textBox2">
							<div id="commentNick"></div>
						    <textarea name="replyContents" id="replyContents" class="question" placeholder="- 작성한 내용은 수정 및 삭제가 불가합니다&#13;&#10;- 이메일. 전화번호 등을 게시하여 직거래를 유도할 경우 서비스 이용에 제재를 받을 수 있습니다"></textarea>
						    <hr>
						    <div class="clearfix">
						    	<input type="checkbox" id="secret" name="secret">
					    		<label for="secret">
					    			<span>비밀글</span>
					    		</label>
					    		<!-- <input type="password" class="secretPw" id="replyPw" name="replyPw" placeholder="비밀번호" readonly> -->
					    		<input type="hidden" id="replyParentMemId" name="replyParentMemId">
					    		<input type="hidden" id="replyParent" name="replyParent" value="0">
					    		<input type="hidden" id="replySecret" name="replySecret" value="N">
						    	<input type="button" class="question-btn" value="작성하기">
						    </div>						
						</div>
					</form>
				</div>
				<div class="detailBox4">
					<c:forEach var="replyDto" items="${replyDto}" varStatus="status">
						<div class="reviewBox clearfix">
							<c:if test="${replyDto.replyDepth == 1}">
								<img class="curve-arrow" alt="" src="${pageContext.request.contextPath}/assets/img/curve-arrow.png">
							</c:if>						
							<div class="reviewBox2">
								<div class="reviewNick">${replyDto.replyWriter}</div>
								<div class="reviewDate">${replyDto.replyRegDate}</div>						
							</div>
							<c:choose>
								<c:when test="${replyDto.replySecret == 'Y' and member.memNick != replyDto.replyWriter and member.memId != output.projMemId and member.memNick != replyDto.replyParentNick}">
									<div class="reviewContents">비밀글입니다.</div>
								</c:when>
								<c:otherwise>
									<div class="reviewContents">${replyDto.replyContents}</div>
								</c:otherwise>						
							</c:choose>
							<c:if test="${replyDto.replyDepth == 0}">
								<button id="comment${status.index}" class="comment" data-value="${replyDto.replyParent}" data-idx="${status.index}" data-id="${replyDto.replyParentMemId}">답글작성</button>
							</c:if>
							<c:if test="${replyDto.replyDepth == 1}">
								<button id="comment${status.index}" class="comment" data-value="${replyDto.replyParent}" data-idx="${status.index}" style="display: none;" disabled></button>
							</c:if>
						</div>		
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="container3">
       		<div class="text-center"> 
       			<button class="matchBtn" id="applyBtn" <c:if test="${output.projDday < 0}">disabled</c:if>>
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
						<%-- <img class="profileImgBox"  src="${pageContext.request.contextPath}/upload/${output.profilePhoto}"> --%>
						<c:choose>
							<c:when test="${fn:indexOf(output.profilePhoto, 'https://sellmatchimg.s3.ap-northeast-2.amazonaws.com') == -1}">
								<img class="profileImgBox"  src="/upload/${output.profilePhoto}">
							</c:when>
							<c:otherwise>
								<img class="profileImgBox"  src="${output.profilePhoto}">
							</c:otherwise>
						</c:choose>
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
					<c:forEach var="applyDto" items="${applyDto}" begin="0" end="12">
					<div class="applyBox">
						<c:choose>
							<c:when test="${applyDto.profilePhoto != null}">
								<%-- <img class="miniImgBox"  src="${pageContext.request.contextPath}/upload/${applyDto.profilePhoto}"> --%>
								<c:choose>
									<c:when test="${fn:indexOf(applyDto.profilePhoto, 'https://sellmatchimg.s3.ap-northeast-2.amazonaws.com') == -1}">
										<img class="miniImgBox"  src="/upload/${applyDto.profilePhoto}">
									</c:when>
									<c:otherwise>
										<img class="miniImgBox"  src="${applyDto.profilePhoto}">
									</c:otherwise>
								</c:choose>
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

	
	$(document).on("click", ".comment", function(){
		var idx = $(this).data('idx');
		var nickName = $(this).parent().children().children('.reviewNick').text();
		var replyParent = $(this).data('value');
		var replyParentMemId = $(this).data('id');
		console.log('replyParentMemId = ' + replyParentMemId);
		
		$('.comment').each(function (index, item) {
			console.log('idx='+idx);
			console.log('index='+index)
			if (idx != index) {
				$(this).removeClass("del");
				$(this).text("답글작성");
				$('#commentNick').text("");
				$('#replyParent').val("0");
				$('#replyParentMemId').val("");
			}
		});
		
		$('#replyParent').val(replyParent);
		$('#commentNick').text(nickName);
		$('#replyContents').val(" ");
		$('#replyParentMemId').val(replyParentMemId);
		$('#replyContents').focus();
		$(this).text("답글취소");
		$(this).addClass("del");
	});
	
	// 답글취소
	$(document).on("click", ".del", function(){
		$(this).removeClass("del");
		$(this).text("답글작성");
		$('#commentNick').text("");
		$('#replyParent').val("0");
		$('#replyParentMemId').val("");
	});
	
	$(document).on("click", "#editBtn", function(){
		var proj_state = $('#projState').val();
		if(proj_state == 2) {
			swal('알림', '이미 마감한 거래입니다.', 'success');
			return;
		}
		var projId = $("#projId").val();
		location.href = ROOT_URL+"/project/edit?projId="+projId;
	});
	
	$(document).on("click", "#endBtn", function(){
		var projId = $("#projId").val();
		
		//여기부터 스크랩
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/project/peojectEndDupCheck",
		    data: {
		    	projId: projId
		    },
            success: function(json) {
            	console.log(json.result); 
          		if (json.result >= 1) {
          			swal('알림', '이미 마감한 거래입니다.', 'success');
          			return;
				}
				swal({
	  		          title: '확인',
	  		          text: '매칭을 마감 하시겠습니까?', 
	  		          type: "question",
	  		          width: '400px',
	  		          showCancelButton: true
	  		    }).then(function(result) {			
	  		        if (result.value) {
	  		        	var data = {
	  		        		projId: $("#projId").val()
	  		        	};
	  		        	  
	  		        	$.ajax({
	  			   			type: "POST",
	  			   	        url: ROOT_URL+"/project/peojectEnd",
	  			   	        data: data,
	  		                success: function() {
	  		                	swal({
				  		          title: '완료',
				  		          text: '마감한 매칭을 확인하시겠습니까?', 
				  		          type: "success",
				  		          width: '400px',
				  		          showCancelButton: true
		  			  		    }).then(function(result) {	
		  			  		    	if (result.value) {
		  			  		    		window.location.href = ROOT_URL+"/myPage/projectEndList";
		  			  		    	}
		  			  		    });
	  		                }
	  			      	});
	  		      	}
				});	
			}
		});
		
	});
	
	$(document).on("click", ".question-btn", function(){
		var login_id = $('#projectInsert').data('member');
		var projId = $("#projId").val();
		var secretChk = $("input[name=secret]:checkbox").attr('checked');
		var replyContents =  $('#replyContents').val();
		var replyParent = $('#replyParent').val();
		var replyParentMemId = $('#replyParentMemId').val();
		$('input[name=replySecret]').attr('value', secretChk);
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (replyContents.trim() == '') {
			swal({
                title: '알림',
                text: '내용을 입력하세요.',
               	type: 'warning',
            });
			return;			
		}
		
		$('.question-btn').prop('disabled', true);
		
		var projId = $("#projId").val();
		var secretChk = $("input[name=secret]:checkbox").attr('checked');
		$('input[name=replySecret]').attr('value', secretChk);
		
		var data = {
	        		replyProjId: $("#projId").val(),
	        		replySecret: $('#replySecret').val(),
					/* replyPw: $('#replyPw').val(), */
					replyContents: $('#replyContents').val(),
					replyParent: $('#replyParent').val(),
					replyParentMemId :$('#replyParentMemId').val()
	    		};
		
      	$.ajax({
   			type: "POST",
   	        url: ROOT_URL+"/project/reply",
   	        data: data,
            success: function() {
            	$('.question-btn').prop('disabled', false);
            	window.location.href = ROOT_URL+"/project/detail?projId="+projId;
           }
      	});		
	});
	
	
	// 비밀댓글
	$(document).on("click", "#secret", function(){
		
		if (this.checked) {
			/* $('input[type=password]').attr('readonly', true); */
			$('input[name=replySecret]').prop('value', 'Y');
		} else {
			/* $('input[type=password]').attr('readonly', false); */	
			$('input[name=replySecret]').prop('value', 'N');
		}
	});
	
	
	$(document).on("click", "#applyBtn", function(){
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		var proj_sort = $('#projSort').val();
		var proj_state = $('#projState').val();
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (proj_state == '2') {
			swal({
                title: '알림',
                text: '마감된 거래입니다.',
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
	  		    	$('#applyBtn').prop('disabled', true);
	  		        if (result.value) {
	  		        	var data = {
	  		        		projIdx: $("#projIdx").val(),
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
		  			  		    	$('#applyBtn').prop('disabled', false);
		  			  		    	
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
		  			  		    		window.location.href = ROOT_URL+"/myPage/scrapList";
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
