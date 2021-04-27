<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/myPageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/withdraw.css" rel="stylesheet" type="text/css">
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
							<div class="tab-link" data-tab="my-tab-4" id="select-my-tab4">거래 관리
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_black.png">
							</div>
							<div class="tab-link2 current" data-tab="my-tab-5" id="select-my-tab5">회원 탈퇴
							<img class="arrow_img" alt="" src="${pageContext.request.contextPath}/assets/img/right_arrow_white.png">
							</div>
						</div>
		    		</div>
		    	</div>
		    	<div class="myPage_right">
		    		<div class="myPage_right_contents">
		    		<form action="${pageContext.request.contextPath}/withdraw" id="withdraw_form" name="withdraw_form" method="post">
		    			<div class="myPage_r_withdraw_title">
		    				회원 탈퇴
		    			</div>
		    			<div class="myPage_r_withdraw_text">
		    				탈퇴 사유를 적어주시면 보다 나은 서비스를 만들기 위한 소중한 정보로 활용하겠습니다.
		    			</div>
						<div class="inputGroup">
							<select id="withdrawReason" name="withdrawReason" class="inputForm">
								<option>사유를 선택하세요</option>
								<option value="0">서비스가 유용하지 않아서</option>
								<option value="1">이용하기가 어려워서</option>
								<option value="2">이용안내가 부족해서</option>
								<option value="3">원하는 거래를 찾지 못해서</option>
								<option value="4">기타</option>
							</select>
						</div>
						<div class="inputGroup">
							<textarea id="withdrawReasonText" name="withdrawReasonText" class="inputForm" style="resize: none;" placeholder="상세내용을 입력해주세요. (500자 이내)"></textarea>
						</div>
						</form>
						<div class="myPage_r_withdraw_title">
		    				회원 탈퇴 전 메일 본인인증
		    			</div>
		    			<div class="myPage_r_withdraw_text">
		    				회원님의 정보보호를 위해 필수로 확인하는 절차입니다.
		    			</div>
		    			<form action="${pageContext.request.contextPath}/sendWithdrawMail" id="sendWithdrawMail" name="sendWithdrawMail" method="post">
						<div class="inputGroup">
							<input type="text" name="memId" class="memId" id="memId" placeholder="인증을 진행 할 아이디를 입력해주세요."/>
							<button type="button" id="sendAuthEmail" class="btn form-bg-primary">코드전송</button>
						</div>
						</form>
						<div class="inputGroup">
							<input type="text" name="authCodeText" class="authCodeText" id="authCodeText" placeholder="이메일로 전달받은 코드를 써주세요."/>
							<button type="button" id="authCode" class="btn form-bg-primary">인증하기</button>
						</div>
		    			<div class="myPage_r_withdraw_text">
		    			<img class="alert_img" alt="" src="${pageContext.request.contextPath}/assets/img/withdraw_check.png">
		    				탈퇴 후에도 등록한 게시물은 그대로 남아있습니다.
		    			</div>
		    			<div class="myPage_r_withdraw_contents">
		    				거래처 매칭, 커뮤니티에 올린 게시글 및 댓글은 탈퇴 시 삭제되지 않고 그대로 남아있습니다.<br>
		    				단, 탈퇴회원의 게시물의 경우 '탈퇴회원' 으로 표시됩니다. 탈퇴 후에는 회원정보가 삭제되어<br>
		    				본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.
		    			</div>
						<div class="withdraw_btn_group">
							<button class="withdraw_btn" type="submit" disabled="disabled" style="background-image: linear-gradient(98deg, #D9D9D9, #D9D9D9);">회원 탈퇴 진행하기</button>
						</div>
		    			<div class="myPage_r_withdraw_s_contents">
		    			<img class="alert_img" alt="" src="${pageContext.request.contextPath}/assets/img/withdraw_caution.png">
		    				회원 탈퇴 시 90일동안 재가입이 제한됩니다.
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
	
	
	$(document).on("focus", "#sendWithdrawMail", function(e) {
		$("#sendWithdrawMail").validate({
			rules : {
				memId : {
					required : true,
					email : true,
				},
			},
			messages : {
				memId : {
					required : '이메일을 입력하세요.',
					email : '이메일만 입력 가능합니다.',
				},
			},
			errorPlacement : function(error, element) {
				element.parent().after(error);

			},
		});
	});
	
	$(document).on("click", "#sendAuthEmail", function(e) {

		e.preventDefault();
		$('#sendAuthEmail').prop("disabled", true);
		$('#memId').attr('disabled', "disabled");
		$('.ajax-loader').show();
		
		var memId = $('#memId').val();
		$.ajax({
			type : "POST",
			url : '/sendWithdrawMail',
			data : {
					memId :memId
			},
			beforeSend : function() {
				return $('#sendWithdrawMail').valid();
			},
			success : function(json) {
				$('.ajax-loader').hide();
				swal({
					title : '인증코드가 발급되었습니다.',
					text : '이메일을 확인해주세요.',
					type : 'success',
				});
			}
		});
	});

});	
</script>
