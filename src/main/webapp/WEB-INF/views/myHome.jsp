<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/myPageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/myHome.css" rel="stylesheet" type="text/css">
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
							<div class="tab-link tab-link3 current" data-tab="my-tab-1" id="select-my-tab1">MY 홈
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_white.png">
							</div>
							<div class="tab-link" data-tab="my-tab-2" id="select-my-tab2">회원정보 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link" data-tab="my-tab-4" id="select-my-tab4">거래 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link2" data-tab="my-tab-5" id="select-my-tab5">회원 탈퇴
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
						</div>
		    		</div>
		    	</div>
		    	<div class="myPage_right">
		    		<div class="myPage_r_first">
		    			<div class="profileBox">
			    			<div>
				    			<img id="profileBox-img" src="${pageContext.request.contextPath}/assets/img/pencil.png"/>
				    		</div>
				    		<div class="profileExplainBox">
				    			<span class="profileExplainBoxText">프로필을 등록하면<br>거래 성사확률이 높아집니다!</span>
							</div>
				    		<div class="myPage_r_profileBox">
				    			<span class="profileBoxText">
				    			<c:if test="${profileEditDate==null}">프로필 등록하기</c:if>
				    			<c:if test="${profileEditDate!=null}">프로필 관리하기</c:if>
				    			</span>
				    		</div>
		    			</div>
		    			<div class="usingMethodBox">
			    			<div>
				    			<img id="usingMethodBox-img" src="${pageContext.request.contextPath}/assets/img/resume.png"/>
				    		</div>
				    		<div class="usingMethodExplainBox">
				    			<span class="usingExplainBoxText">거래 등록이 어려우신가요?<br>이용가이드를 확인해보세요!</span>
							</div>
				    		<div class="myPage_r_usingMethodBox">
				    			<span class="usingMethodBoxText">이용방법 확인하기</span>
				    		</div>
		    			</div>
		    		</div>
		    		<div class="myPage_r_second">
		    			<div class="myContract">
		    				<div class="myContractTextBox">
		    					<span class="myContractText">내 거래 현황</span>
		    				</div>
		    				<input type="hidden" id="myMemSort" value="${myProjectCount.memSort}">
		    				<div class="myContractBox registBox">
		    					<div>
									<span class="myContractBoxText registText">등록한 거래</span>
								</div>
		    					<div class="myContractCntBox">								
									<span class="myContractCount registCount cursor" data-value="${myProjectCount.projAddCount}">${myProjectCount.projAddCount}건</span>
		    					</div>
		    				</div>
		    				<div class="myContractBox applyBox">
		    					<div>
		    						<span class="myContractBoxText applyText">지원한 거래</span>
		    					</div>
		    					<div class="myContractCntBox">		    					
									<span class="myContractCount applyCount cursor" data-value="${myProjectCount.appliedCount}">${myProjectCount.appliedCount}건</span>
								</div>
		    				</div>
		    				<div class="myContractBox recommandBox">
							<c:if test="${myProjectCount.memSort == 1}">
		    					<div>
		    						<span class="myContractBoxText recommandText">제안 한 거래</span>
		    					</div>
		    					<div class="myContractCntBox">
									<span class="myContractCount recommandConut cursor" data-value="${myProjectCount.precommandCount}">${myProjectCount.precommandCount}건</span>
								</div>
							</c:if>
							<c:if test="${myProjectCount.memSort == 2}">
								<div>
		    						<span class="myContractBoxText recommandText">제안 받은 거래</span>
		    					</div>
		    					<div class="myContractCntBox">		    					
									<span class="myContractCount recommandConut cursor" data-value="${myProjectCount.srecommandCount}">${myProjectCount.srecommandCount}건</span>
								</div>
							</c:if>
		    				</div>
		    				<div class="myContractBox closeBox">
		    					<div>
		    						<span class="myContractBoxText projectEndCountText">마감한 거래</span>
		    					</div>
		    					<div class="myContractCntBox">		    					
									<span class="myContractCount projectEndCount cursor" data-value="${myProjectCount.projectEndCount}">${myProjectCount.projectEndCount}건</span>
								</div>
		    				</div>
		    			</div>
		    			<div class="myAuth">
		    				<div class="myContractTextBox">
		    					<span class="myContractText">내 인증 현황</span>
		    				</div>
		    				<div class="myContractBox registBox">
		    					<div>
		    						<span class="myContractBoxText registText">신원인증</span>
		    					</div>
		    					<div class="auth_img_div">
		    						<img id="auth_img" src="${pageContext.request.contextPath}/assets/img/auth_ok.png"/>	
		    					</div>	    						
		    				</div>
		    				<div class="myContractBox applyBox">
		    					<div>
		    						<span class="myContractBoxText applyText">사업자인증</span>
		    					</div>
		    					<div class="auth_img_div">
		    						<img id="auth_img" src="${pageContext.request.contextPath}/assets/img/xx-button.png"/>		    					
								</div>
		    				</div>
		    				<div class="myContractBox recommandBox">
		    					<div>
		    						<span class="myContractBoxText recommandText">상품검증</span>
								</div>
		    					<div class="auth_img_div">
		    						<img id="auth_img" src="${pageContext.request.contextPath}/assets/img/auth_ok.png"/>		    					
		    					</div>
		    				</div>
		    				<div class="myContractBox closeBox">
		    					<div>
		    						<span class="myContractBoxText closeText">수익성검증</span>
		    					</div>
		    					<div class="auth_img_div">
		    						<img id="auth_img" src="${pageContext.request.contextPath}/assets/img/xx-button.png"/>
		    					</div>
		    				</div>
		    				
		    			</div>
		    			<div class="btnBox">
		    				<div class="myPageBtn scrapBtn">
		    					<img class="scrapImg" alt="" src="/assets/img/star.png">
		    					<span class="myPageBtnText">스크랩 리스트</span>
		    				</div>
		    				<div class="myPageBtn useOfTermBtn">
		    					<span class="myPageBtnText">이용약관</span>
		    				</div>
		    				<div class="myPageBtn privateBtn">
		    					<span class="myPageBtnText">개인정보처리방침</span>
		    				</div>
		    			</div>
		    		</div>
		    		
		    		
		    		<div class="myPage_r_third">
			    		<div>
			    			<img id="authBox-img" src="${pageContext.request.contextPath}/assets/img/auth_reco_img.png"/>
			    		</div>
			    		<div class="authExplainBox">
			    			<span class="authBoxExplainText">간단한 인증 한번으로<br>경쟁력을 높여보세요!</span>
						</div>
			    		<div class="myPage_r_authBox">
			    			<span class="authBoxText">인증하기</span>
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
		location.href="/myPage/scrapList";
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
		$('#termsOfServiceModal').modal();
	});
	$('.privateBtn').on('click', function(){
		$('#infoModal').modal();
	});
	//인증하기-준비중
	$('.myPage_r_authBox').on('click', function(){
		alert('인증하기 기능 준비중입니다.');
	});
	
    $(document).on("click", ".registCount", function(e){
    	var projAddCount = $('.registCount').attr('data-value');
		if (projAddCount == 0) {
			swal('알림', '등록된 거래가 없습니다.', 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/registDelng";
		}
    })
    
    $(document).on("click", ".applyCount", function(e){
    	var scrapCount = $('.applyCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (scrapCount == 0) {
			var text = '지원한 거래가 없습니다.';
			swal('알림', text, 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/myApplyList";
		}
    });
    
    $(document).on("click", ".recommandConut", function(e){
    	var recommendCount = $('.recommandConut').attr('data-value');
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
    
    $(document).on("click", ".projectEndCount", function(e){
    	var projectEndCount = $('.projectEndCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (projectEndCount == 0) {
			swal('알림', '마감한 거래가 없습니다.', 'warning')
		} else {
			location.href=ROOT_URL+ "/myPage/projectEndList";
		}
    });
});	
</script>