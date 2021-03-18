<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/join.css">

<div class="partner_bnr">
	<div class="partner_wrap">
		<div class="partner_wrap2">
			<h2>공급자 또는 판매자 중 하나를 선택하세요</h2>
			<h3>아래 간단한 내용만 입력하면, 회원가입이 완료됩니다!</h3>
		</div>
		<div id="findCheckBox">
			<div class="partner_wrap addbox2"></div>

			<!-- 			<div class="partner_wrap addbox2 selectProfile">
				<div style="display: inline-block;">
					<button id="spBtn" class="default-check text-center" value="판매자">
						<input type="checkbox" class="findCheck spFind" id="spFind" value="판매자">
						<label for="spFind"><span>&nbsp;&nbsp;판매자 가입</span></label>
					</button>
				</div>
				<div style="display: inline-block;">
				    <button id="ppBtn" class="default-check text-center" value="공급자">
				    	<input type="checkbox" class="findCheck ppFind" id="ppFind" value="공급자">
				    	<label for="ppFind"><span>&nbsp;&nbsp;공급자 가입</span></label>
				    </button>
				</div>
			</div>
			 -->
			<div class="joinForm">
				<div class="resultBox">
					<div class="resultText" id="resultText1">판매자가입을 선택하셨습니다. 다양한
						고마진 공급자를 찾아 수익을 향상시키세요!</div>
					<div class="resultText" id="resultText2" style="display: none;">공급자가입을
						선택하셨습니다. 검증된 고매출 판매자를 찾아 거래해보세요!</div>
					<div class="resultText">판매자 유형은 마이페이지에서 추후에 전환 가능합니다.</div>
				</div>
				<form action="${pageContext.request.contextPath}/member/join" id="join_form" name="join_form" method="post" enctype="multipart/form-data">
					<!-- <input type="hidden" id="memSort" name="memSort" value="{{memSort}}"> <input type="hidden" name="memRname" id="memRname" value="0" readonly="readonly"> -->
<c:if test="${result.googleId != null}">
					<input type="hidden" name="googleId" value="${result.googleId}">
</c:if>					
<c:if test="${result.naverId != null}">
					<input type="hidden" name="naverId" value="${result.naverId}">
</c:if>
<c:if test="${result.kakaoId != null}">					
					<input type="hidden" name="kakkaoId" value="${result.kakaoId}">
</c:if>
					<div class="form-group row userrow">
						<label class="col-sm-2 colForm-label">회원유형 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<input type="radio" id="memSort1" value="2" name="memSort" checked="checked" /><span class="radio-sort"> 판매자로 가입</span>
							<input type="radio" id="memSort2" value="1" name="memSort" style="margin-left:30px;"/><span class="radio-sort"> 공급자로 가입</span>
						</div>
					</div>
					<div class="form-group row">
						<label for="memberId" class="col-sm-2 colForm-label">아이디 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<div class="form-group">
								<c:if test="${result.memId == null}">
									<input id="memberId" type="text" name="memberId" class="form-control" placeholder="이메일 입력">
									<input id="Mem_sns_ch" type="hidden" name="memSnsCh" class="form-control" placeholder="SNS채널" value="01">
								</c:if>
								<c:if test="${result.memId != null}">
									<input id="memberId" type="text" name="memberId" class="form-control" placeholder="이메일 입력" value="${result.memId}" readonly>
									<input id="Mem_sns_ch" type="hidden" name="memSnsCh" class="form-control" placeholder="SNS채널" value="${result.memSnsCh}">
								</c:if>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 colForm-label">비밀번호 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<input type="password" id="memPw2" name="memPw2" class="form-control" placeholder="비밀번호를 입력해주세요. (6자 이상)">
						</div>
					</div>
					<div class="form-group row">
						<label for="memPw_confirm" class="col-sm-2 colForm-label">비밀번호 확인 <span class="identify">*</span>	</label>
						<div class="col-sm-9">
							<input type="password" name="memPw_confirm" class="form-control" id="memPw_confirm" placeholder="비밀번호를 한번 더 입력해주세요." />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 colForm-label">닉네임 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="memNick" id="memNick" placeholder="별명을 입력하세요. (회사명 등 정보성 닉네임은 사용 불가)">
						</div>
					</div>
					<div class="form-group row">
						<label for="memTel" class="col-sm-2 colForm-label">연락처 <span class="identify">*</span>
						</label>
						<div class="col-sm-9">
							<input type="text" name="memTel" class="form-control" id="memTel" placeholder="`-` 없이 숫자만 입력(연락처는 아이디를 찾을 때 이용됩니다.)" />
						</div>
					</div>
					<div class="Agreement-container">
						<div class="Agreement">
							<input type="checkbox" class="agree-all" id="checkAll"><label for="checkAll"><span class="r-span">전체 약관동의</span></label>
						</div>
						<div class="Agreement-box clearfix">
							<div class="Agreement" style="float: left;">
								<input type="checkbox" id="chk1" class="agree-chk chk">
								<label for="chk1"><span class="r-span">(필수) 이용약관동의</span></label>
							</div>
							<!-- 						<div id="termsOfService" href="javascipt:void(0);" style="float: right;">
							내용보기 V
						</div> -->
							<textarea
								style="width: 100%; height: 100px; padding: 15px; resize: none;">약관.....</textarea>
							<div class="Agreement" style="float: left;">
								<input type="checkbox" id="chk2" class="select-chk chk">
								<label for="chk2"><span class="r-span">(선택) 개인정보 수집 및 이용동의</span></label>
							</div>
							<!-- 						<div style="float: right;">
							내용보기 V
						</div> -->
						</div>
						<div class="join-btn-div" style="text-align-last: center;">
							<button class="join-btn" type="submit" disabled="disabled" style="background-image: linear-gradient(98deg, #D9D9D9, #D9D9D9);">가입하기</button>
						</div>
					</div>
				</form>
				<!-- 회원가입 form end -->
			</div>

		</div>
	</div>
	<div id="hiddenBox" style="display: none;">
		<input type="hidden" id="memSort">
	</div>
	<div class="partner_wrap join-temp-Box"></div>
</div>
<%@ include file="inc/footer.jsp"%>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/assets/daum/exeDaumPostcode.js"></script>
<script>
$(function (){
	$('input[type="radio"][id="memSort1"]').on('click', function(){
	  var chkValue = $('input[type=radio][id="memSort1"]:checked').val();
	  if(chkValue){
	             $('#resultText1').css('display','block');
	             $('#resultText2').css('display','none');
	  }else{
	             $('#resultText1').css('display','none');
	             $('#resultText2').css('display','block');
	  }
});
});
$(function (){
	$('input[type="radio"][id="memSort2"]').on('click', function(){
	  var chkValue = $('input[type=radio][id="memSort2"]:checked').val();
	  if(chkValue){
	             $('#resultText1').css('display','none');
	             $('#resultText2').css('display','block');
	  }else{
          		 $('#resultText1').css('display','block');
		         $('#resultText2').css('display','none');
	  }
});
});


$(document).ready(function() {
	$('#info').on('click', function(){
		$('#infoModal').modal();
	});
	
	$('#termsOfService').on('click', function(){
		$('#termsOfServiceModal').modal();
	});
});

$(document).ready(function() {
	
	$(document).on("change", "#image" ,handleImgfileSelect);
	
	$(document).on("click", ".agree-all", function(){
		$(".agree-chk").prop("checked", this.checked);
		$(".select-chk").prop("checked", this.checked);
		
		if (this.checked) {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #ff8000, #ff540f)");
			$('.join-btn').attr('disabled', false);
		} else {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #D9D9D9, #D9D9D9)");
			$('.join-btn').attr('disabled', true);
		}
	});
	
	$(document).on("click", ".select-chk", function(){
		
		var total_len = $(".chk").length;
		console.log(total_len)
		//선택된 갯수
		var len = $(".chk:checked").length;
		console.log(len)
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);	
		}
		
		if (this.checked == false) {
			$(".agree-all").prop("checked", false);
		}
	});
	
	$(document).on("click", ".agree-chk", function(){
		
		var total_len = $(".chk").length;
		console.log(total_len)
		//선택된 갯수
		var len = $(".chk:checked").length;
		console.log(len)
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);	
		}
		
		if (this.checked) {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #ff8000, #ff540f)");
			$('.join-btn').attr('disabled', false);
		} else {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #D9D9D9, #D9D9D9)");
			$('.join-btn').attr('disabled', true);
			$(".agree-all").prop("checked", false);
		}
		
	});
		
	$(document).on("click", "#sendAuthEmail", function(){
	    const memEmail = $("#memEmail").val();
	
	    if (!memEmail) {
	    	swal('알림', '이메일을 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/member/sendAuthEmail', {
	    	memEmail: memEmail
	    }, function(json) {
	    	swal('확인', '인증번호가 발송되었습니다.', 'success');
	    });
	});
	
	$(document).on("click", "#authConfirm", function(){
	    const auth_confirm = $("#auth_confirm").val();
	
	    if (!auth_confirm) {
	    	swal('알림', '인증번호를 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/member/authConfirm', {
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
	
	$(document).on("focus blur", "#memNick", function(){
		var memNick = $('#memNick').val();
		$('#memNick').val(memNick.trim());
		console.log($('#memNick').val())
	});
	
	$(document).on("focus", "#join_form", function(e){
		
		$.validator.addMethod("passwordCk",  function( value, element ) {

			return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);

		}); 
		
		$.validator.addMethod("phone", function(value, element) {
			return this.optional(element)
					|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
					|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
		});
		
	    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
	    $('#join_form').validate({
	    	/* 
				required 필수 항목으로 설정한다. (true, false)
				remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
			*/
			
	        rules: {
	            // [아이디] 필수 + 알파벳,숫자 조합만 허용
	            memberId: {
	                required: true, email: true, 
	                remote : {
	                    url : ROOT_URL + '/member/idCheck',
	                    type : 'post',
	                    data : {
	                    	memberId : function() {
                            return $('#memberId').val();
                        }
	                    }
	                }
	            },
	            // [비밀번호] 필수 + 글자수 길이 제한
	            memPw2: { required: true, passwordCk:true, minlength: 6, maxlength: 30 },
	            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
	            memPw_confirm: { required: true, equalTo: '#memPw2' },
	            // 닉네임 필수, 길이제한
	            memNick: { required: true, maxlength: 25 },
	            // [연락처] 필수
	            memTel: { phone: true, required: true, minlength: 10, maxlength: 11 },
	            // [우편번호] 필수 입력
	            postcode: 'required',
	            // [주소1] 우편번호가 입력된 경우만 필수
	            memAddr: 'required',
	            
	        },
	        messages: {
	        	memberId: {
	                required: '아이디를 입력하세요.',
	                email: '아이디는 이메일만 입력 가능합니다.',
	                remote: '이미 사용중인 이메일 입니다.'
	            },
	            memPw2: {
	                required: '비밀번호를 입력하세요.',
	                passwordCk: '비밀번호는 문자 + 숫자 + 특수문자를 포함하셔야 합니다.',
	                minlength: '비밀번호는 최소 {0}글자 이상 입력하셔야 합니다.',
	                maxlength: '비밀번호는 최대 {0}글자까지 가능합니다.',
	            },
	            memPw_confirm: {
	                required: '비밀번호 확인값을 입력하세요.',
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
	                minlength: '연락처는 최소 {0}글자 이상 입력하셔야 합니다.',
	                maxlength: '연락처는 최대 {0}글자까지 가능합니다.',
	            },
	            memNick: {
	            	maxlength: '닉네임은 최대 {0}글자까지 가능합니다.',
	            },
	            postcode: '우편번호를 입력해 주세요.',
	            memAddr: '기본주소를 입력해 주세요.',
	        }
	    });
	});
    
    $(document).on("submit", "#join_form", function(e){
		e.preventDefault();
		
		var profileMemId = $('#memberId').val();
		var profileSort = $('#memSort').val();
		
	    var form = $(this);
		var url = form.attr('action');
		
		
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#join_form').valid();
               },
               success: function() {
            	   swal('알림', '회원가입이 완료되었습니다.', 'success').then(function(result) {
            		    var text = '';
	   					if (profileSort == 1) {
	   						text = '프로필 등록 후 여러분이 원하는 판매자와 더 가까워집니다.'
	   					}
	   					if (profileSort == 2) {
	   						text = '프로필 등록 후 여러분이 원하는 공급자와 더 가까워집니다.'
	   					}
	   					swal({
	   	    	            title: '<div>프로필 등록을 해야</div><div>프로젝트 등록을 할 수 있습니다.</div>',
	   	    	            text: text,
	   	    	            type: "question",
	   	    	            icon: 'warning',
	   	    	            showCancelButton: true,
	   	    	            confirmButtonColor: '#3085d6',
	   	    	            cancelButtonColor: '#d33',
	   	    	            confirmButtonText: '지금 등록하기',
	   	    	            cancelButtonText: '나중에 등록하기'
		    	        }).then(function(result) {    					
		    	            if (result.value) {
		    	            	window.location = ROOT_URL+ "/profile?profileMemId="+profileMemId+"&profileSort="+profileSort;
		    	            } else {
		    	            	window.location = ROOT_URL + '/temp';
		    	            }
		    	        });
                   });
               }
        });
    });
});

function handleImgfileSelect(e) {
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
</script>
<script type="text/javascript">
$(document).ready(function() {
	Handlebars.registerHelper('createTag', function (tag) {
		return new Handlebars.SafeString(tag);
	});

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
<script>
    <c:if test= "${url != null}">
    alert('${msg}');
    location.href='${url}';
    </c:if>
</script>
</body>
</html>
