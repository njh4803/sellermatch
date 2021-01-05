<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.ck-blurred.ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-editor__editable_inline {
	height: 300px;
}
.modal-header {
	display: block;
}
.modal-content .modal-body {
    position: relative;
    padding: 40px;
}
.bannerBox{
	height: 100px;
	border: 1px solid #000;
}
.auth-box .row{
	padding-bottom: 10px;
}
</style>

  <!-- Modal -->
  <div class="modal fade" id="loginModal" role="dialog">
    <div class="modal-dialog modal-xl" style="width: 450px;">
      <div class="modal-content">
        <div class="modal-body">
			<form class="md-float-material" method="POST" id="login-form" action="${pageContext.request.contextPath}/member/login">
                            <div class="auth-box">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-left txt-primary">로그인하기</h3>
                                    </div>
                                </div>
                                <hr/>
                                <div class="input-group col-sm-12">
                                    <input type="email" id="memId" name="memId" class="form-control" placeholder="아이디를 입력해주세요">
                                    <span class="md-line"></span>
                                </div>
                                <div class="row"></div>
                                <div class="input-group col-sm-12">
                                    <input type="password" id="memPw" name="memPw" class="form-control" placeholder="비밀번호를 입력해주세요.">
                                    <span class="md-line"></span>
                                </div>
                                <div class="row"></div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" id="loginBtn" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">로그인</button>
                                    </div>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-sm-7 col-xs-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">로그인 유지하기</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12 forgot-phone text-right">
                                        <a href="auth-reset-password.html" class="text-right f-w-600 text-inverse font-10">아이디 · 비밀번호찾기</a>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p class="text-inverse text-center m-b-0">간편하게 시작하기</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="bannerBox text-center"><br><br><br><br>배너</div>
                                    </div>
                                </div>
                            </div>
                        </form>
                                                                <!-- 로그인 form end -->													
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">
	
$(document).ready(function() {
	
}); // end ready...
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
			window.location = json.referer;
		},
	});
});
</script>