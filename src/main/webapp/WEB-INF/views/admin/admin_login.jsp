<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
.font-10 {
	font-size: 10px;
}

/* 필수항목 표시를 위한 `*` */
.identify {
	font-size: 14px;
	color: #f00;
}

/* 에러 메시지에 대한 글자 색상 */
.error {
	color: red;
}

/* 에러가 발생한 <input>태그 */
input.error {
	
}
/* 에러메시지가 표시중인 <label> 태그 */
label.error {
	font-size: 10px;
	color: red;
	display: block;
	padding: 5px 10px;
	margin: 0;
}
</style>
    <section class="login p-fixed d-flex text-center bg-primary common-img-bg">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->
                    <div class="login-card card-block auth-body">
                        <form class="md-float-material" method="POST" id="login-form" action="${pageContext.request.contextPath}/admin/member/login">
                            <div class="text-center">
                                <img src="assets/images/auth/logo.png" alt="logo.png">
                            </div>
                            <div class="auth-box">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-left txt-primary">로그인</h3>
                                    </div>
                                </div>
                                <hr/>
                                <div class="input-group">
                                    <input type="email" id="memId" name="memId" class="form-control" placeholder="ID">
                                    <span class="md-line"></span>
                                </div>
                                <div class="input-group">
                                    <input type="password" id="memPw" name="memPw" class="form-control" placeholder="Password">
                                    <span class="md-line"></span>
                                </div>
                                <!-- <div class="row m-t-25 text-left">
                                    <div class="col-sm-7 col-xs-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Remember me</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12 forgot-phone text-right">
                                        <a href="auth-reset-password.html" class="text-right f-w-600 text-inverse font-10"> 비밀번호를 잊어 버렸습니까?</a>
                                    </div>
                                </div> -->
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" id="loginBtn" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">로그인</button>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-10">
                                        <p class="text-inverse text-left m-b-0">Thank you and enjoy our website.</p>
                                        <p class="text-inverse text-left"><b>Wesellglobal Team</b></p>
                                    </div>
                                    <div class="col-md-2">
                                        <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">
                                    </div>
                                </div>

                            </div>
                        </form>
                        <!-- end of form -->
                    </div>
                    <!-- Authentication card end -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 9]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<script>
$(function() {
	jQuery.validator.setDefaults({
		onkeyup : false,
		onclick : false,
		onfocusout : false,
		showErrors : function(errorMap, errorList) {
			if (this.numberOfInvalids()) {
				//alert(errorList[0].message);
				//$(errorList[0].element).focus();
				swal({
					title : "에러",
					text : errorList[0].message,
					type : "error"
				}).then(function(result) {
					setTimeout(function() {
						$(errorList[0].element).val('');
						$(errorList[0].element).focus();
					}, 100);
				});
			}
		}
	});
	
	$("#login-form").validate({
		rules : {
			memId : { required: true, email: true, },
			memPw : 'required',
		},
		messages : {
			memId : {
                required: '아이디를 입력하세요.',
                email: '아이디는 이메일만 입력 가능합니다.'
            },
			memPw : '비밀번호를 입력하세요.',
		},
	});

	$('#login-form').ajaxForm({
		// submit 전에 호출된다.
		beforeSubmit : function(arr, form, options) {
			// validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
			// 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
			return $(form).valid();
		},
		success : function(json) {
			window.location = ROOT_URL + "/admin";
		},
	});
});
</script>
<%@ include file="inc/footer.jsp"%>