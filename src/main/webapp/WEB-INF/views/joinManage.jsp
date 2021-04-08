<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/joinManage.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">회원정보 / 프로필관리</div>
		    		<div class="mypage-text">회원정보내용을 수정할 수 있습니다.</div>
	    		</div>
		    	<div class="mypage-top-right">
		    		<img class="mypage-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="mypage-hr">
	       	<ul class="my-tabs">
				<li class="tab-link" data-tab="my-tab-1" id="select-my-tab1">MY홈</li>
				<li class="tab-link current" data-tab="my-tab-2" id="select-my-tab2">가입정보관리</li>
				<li class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필관리</li>
				<li class="tab-link2" data-tab="my-tab-4" id="select-my-tab4">거래관리</li>
			</ul>
			<div id="my-tab-2" class="tab-content2">
			    <div class="partner_wrap addbox2">
			    	<div class="text-center profileBox">
						<form action="${pageContext.request.contextPath}/member/editOk" id="memEdit_form" name="memEdit_form" method="post" enctype="multipart/form-data">
							<input type="hidden" name="memRname" id="memRname" value="${output.memRname}">
							<input type="hidden" name="memSort" id="memSort" value="${output.memSort}">
							<div class="infoContainer">
								<div class="infoBox">
									<div class="inputGroup">
				    					<label>아이디</label>
				    					<input id="memId" type="text" name="memId" class="inputForm" placeholder="이메일 입력" value="${output.memId}" readonly="readonly">
									</div>
									<div class="inputGroup">
										<label>비밀번호</label>
										<input type="password" id="memPw" name="memPw" class="inputForm" placeholder="영문,숫자,특수문자 조합 최소 6글자">
									</div>
									<div class="inputGroup">
										<label>비밀번호 확인</label>
				    					<input type="password" name="memPw_confirm" class="inputForm" id="memPw_confirm" />
									</div>
									<div class="inputGroup">
										<label>이름</label>
				    					<input type="text" class="inputForm" name="memName" id="memName" value="${output.memName}">
									</div>
									<div class="inputGroup">
										<label>닉네임</label>
				    					<input type="text" class="inputForm" name="memNick" id="memNick" value="${output.memNick}">
									</div>
									<div class="inputGroup">
										<label>국가</label>
				    					<select id="memCountry" name="memCountry" class="inputForm" value="${output.memCountry}">
	                                           <option value="">선택하세요.</option>
	                                           <option value="01">대한민국</option>
	                                           <option value="02">베트남</option>
	                                    </select>
									</div>
									<div class="inputGroup">
										<label>지역</label>
			    						<select id="memNation" name="memNation" class="inputForm">
			    							<option value="">선택하세요.</option>
		                                    <option value="02"  <c:if test="${output.memNation eq '02'}">selected</c:if>>서울</option>
		                                    <option value="031" <c:if test="${output.memNation eq '031'}">selected</c:if>>경기</option>
		                                    <option value="032" <c:if test="${output.memNation eq '032'}">selected</c:if>>인천</option>
		                                    <option value="033" <c:if test="${output.memNation eq '033'}">selected</c:if>>강원</option>
		                                    <option value="041" <c:if test="${output.memNation eq '041'}">selected</c:if>>충남</option>
		                                    <option value="042" <c:if test="${output.memNation eq '042'}">selected</c:if>>대전</option>
		                                    <option value="043" <c:if test="${output.memNation eq '043'}">selected</c:if>>충북</option>
		                                    <option value="051" <c:if test="${output.memNation eq '051'}">selected</c:if>>부산</option>
		                                    <option value="052" <c:if test="${output.memNation eq '052'}">selected</c:if>>울산</option>
		                                    <option value="053" <c:if test="${output.memNation eq '053'}">selected</c:if>>대구</option>
		                                    <option value="054" <c:if test="${output.memNation eq '054'}">selected</c:if>>경북</option>
		                                    <option value="055" <c:if test="${output.memNation eq '055'}">selected</c:if>>경남</option>
		                                    <option value="061" <c:if test="${output.memNation eq '061'}">selected</c:if>>전남</option>
		                                    <option value="062" <c:if test="${output.memNation eq '062'}">selected</c:if>>광주</option>
		                                    <option value="063" <c:if test="${output.memNation eq '063'}">selected</c:if>>전북</option>
		                                    <option value="044" <c:if test="${output.memNation eq '044'}">selected</c:if>>세종특별자치시</option>
		                                    <option value="064" <c:if test="${output.memNation eq '064'}">selected</c:if>>세종특별자치도</option>
		                             	</select>
									</div>
									<div class="inputGroup">
										<label>연락처</label>
					    				<input type="text" name="memTel" class="inputForm" id="memTel" placeholder="`-`없이 숫자만 입력"  value="${output.memTel}"/>
									</div>
									<div class="inputGroup">
										<label>우편번호</label>
			    						<input type="text" name="memPost" class="inputForm" id="postcode" maxlength="5" readonly  value="${output.memPost}"/>
										<button type="button" class="btn form-bg-primary postcode-finder"
											data-postcode="postcode" data-addr1="addr1"
											data-frame="postcode-frame" onClick="exeDaumPostcode()">우편번호검색</button>
									</div>
									<div class="inputGroup">
										<label>주소</label>
				    					<input type="text" name="memAddr" class="inputForm" id="memAddr" readonly  value="${output.memAddr}"/>
									</div>
									<div class="inputGroup">
										<label>상세주소</label>
										<input type="text" name="memAddr2" class="inputForm" id="memAddr2" value="${output.memAddr2}"/>
									</div>
									<div class="inputGroup">
										<label>이메일 인증</label>
			    						<input type="text" name="memEmail" class="inputForm" id="memEmail" "/>
										<button type="button" id="sendAuthEmail" class="btn form-bg-primary">인증번호 발송</button>
									</div>
				    				<div class="inputGroup">
				    					<label>이메일 인증번호</label>
			    						<input type="text" name="auth_confirm" class="inputForm" id="auth_confirm" />
										<button type="button" id="authConfirm" class="btn form-bg-primary">인증번호 확인</button>			    				
				    				</div>
				    				<div class="inputGroup">
				    					<label>회원가입일</label>
				    					<input type="text" name="memDate" class="inputForm" id="memDate" readonly value="${output.memDate}"/>
				    				</div>
				    			</div>
			    				<div>
			    					<button type="submit" class="editBtn">
				    					수정완료
			    					</button>
			    				</div>	
					   		</div>
					   	</form>
					</div>
				</div>
			</div>
    	</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", "ul.my-tabs li", function(e){
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
			location.href="/myPage/delngManage/registDelng";
		}
	});
	
    $(document).on("click", "#sendAuthEmail", function(e){
	    const memEmail = $("#memEmail").val();
	
	    if (!memEmail) {
	    	swal('알림', '이메일을 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/admin/member/sendAuthEmail', {
	    	memEmail: memEmail
	    }, function(json) {
	    	swal('확인', '인증번호가 발송되었습니다.', 'success');
	    });
	});
    $(document).on("click", "#authConfirm", function(e){
	    const auth_confirm = $("#auth_confirm").val();
	
	    if (!auth_confirm) {
	    	swal('알림', '인증번호를 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/admin/member/authConfirm', {
	    	auth_confirm: auth_confirm
	    }, function(json) {
	    	if (json.result == "0") {
	    		swal('알림', '인증실패', 'warning');
			} else {
		    	swal('확인', '인증이 확인되었습니다.', 'success');
		    	$("#memRname").val(json.result);
			}
	    });
	});
    
	$.validator.addMethod("phone", function(value, element) {
		return this.optional(element)
				|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
				|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
	});
	
	$.validator.addMethod("passwordCk",  function( value, element ) {
		return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
	}); 
	
	$.validator.addMethod("noSpace", function(value, element) { 
		  return value.indexOf(" ") < 0 && value != ""; 
	});
	
    $('#memEdit_form').validate({
		
        rules: {
            // [비밀번호] 필수 + 글자수 길이 제한
            memPw: { passwordCk:true, minlength: 6, maxlength: 30 },
            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
            memPw_confirm: { equalTo: '#memPw' },
            // [연락처]
            memTel: { phone: true, minlength: 9, maxlength: 11 },
         	// [닉네임] 필수
            memNick: {required: true, noSpace: true},
            
        },
        messages: {
        	memPw: {
                passwordCk: '비밀번호는 문자 + 숫자 + 특수문자를 포함하셔야 합니다.',
                minlength: '비밀번호는 최소 {6}글자 이상 입력하셔야 합니다.',
                maxlength: '비밀번호는 최대 {30}글자까지 가능합니다.',
            },
            memPw_confirm: {
                equalTo: '비밀번호 확인이 잘못되었습니다.',
            },
            email: {
                required: '이메일을 입력하세요.',
                email: '이메일 형식이 잘못되었습니다.',
                maxlength: '이메일은 최대 {0}글자까지 가능합니다.',
                remote: '이미 사용중인 이메일 입니다.'
            },
            memTel: {
                required: '연락처를 입력하세요.',
                phone: '연락처 형식이 잘못되었습니다.',
                minlength: '연락처는 최소 {9}글자 이상 입력하셔야 합니다.',
                maxlength: '연락처는 최대 {11}글자까지 가능합니다.',
            },
            memNick: {
            	required: '닉네임을 입력해주세요.',
            	noSpace: '공백은 사용이 불가능 합니다.'
            },
        }
    });
    
    $('#memEdit_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        success: function(json) {
            swal('알림', '회원정보가 수정되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/myPage/joinManage';
            });
        },
    });
});
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>
