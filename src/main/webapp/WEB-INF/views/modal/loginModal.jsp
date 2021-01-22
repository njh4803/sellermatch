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
	display: inline-block;
	padding: 5px 10px;
	margin: 0;
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
                                        <a href="#" class="text-right f-w-600 text-inverse font-10" id="idPwFind">아이디 · 비밀번호찾기</a>
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
			$("#loginModal").modal('hide');
			
			if (json.profile.profileIndus == undefined) {
				swal({
    	            title: '<div>프로필 등록을 해야</div><div>프로젝트 등록을 할 수 있습니다.</div>',
    	            text: '프로필 등록을 지금하시겠습니까?',
    	            type: "question",
    	            icon: 'warning',
    	            showCancelButton: true,
    	            confirmButtonColor: '#3085d6',
    	            cancelButtonColor: '#d33',
    	            confirmButtonText: '지금 등록하기',
    	            cancelButtonText: '나중에 등록하기'
    	        }).then(function(result) {	        	
    	        	if (result.value) {
    	            	window.location = ROOT_URL+ "/profile?profileMemId="+json.profile.profileMemId+"&profileSort="+json.profile.profileSort;
    	            } else {
    	            	window.location = json.referer;
    	            }
    	        });
			}
		}
	});
	
	$('#idPwFind').on('click', function(){
		$('#login-form').remove();
		
		var content = {
				
    		}
		
		var template = Handlebars.compile($("#idPw-find-tmpl").html());
  		var html = template(content);
  		$(".modal-body").append(html);
	});
});
</script>
<script type="text/x-handlebars-template" id="idPw-find-tmpl">
	<div class="">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<p class="lo-font">아이디 비밀번호 찾기</p>
				<div class="page-header findf"></div>
				<ul class="nav nav-tabs togtab">
					<li class="active togli"><a href="#idf" data-toggle="tab">&nbsp;아이디
							찾기</a></li>
					<li class="togli"><a href="#pwdf" data-toggle="tab">비밀번호
							찾기</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active fade in" id="idf">
						<h3>아이디 찾기</h3>
						<hr>
						<br>
						<form id="find-id-form" method="post" action="${pageContext.request.contextPath}/rest/idFind">
						<div class="form-group">
							<input type="text" class="form-control" id="userName"
								name="userName" placeholder="이름을 입력하세요." />
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="email"
								name="email" placeholder="이메일을 입력하세요." />
						</div>
						<div class="form-group">
							<div class="col-md-4 col-md-offset-4 f_btn">
								<button type="submit" class="btn btn-primary id_btn">아이디
									찾기</button>
							</div>
						</div>
						</form>
					</div>
					<div class="tab-pane fade" id="pwdf">
						<h3>비밀번호 찾기</h3>
						<hr>
						<br>
						<form id="find-pw-form" method="post" action="${pageContext.request.contextPath}/rest/pwFind">
						<div class="form-group">
							<input type="text" class="form-control" id="userId"
								name="userId" placeholder="아이디를 입력하세요." />
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="email"
								name="email" placeholder="이메일을 입력하세요." />
						</div>
						<div class="form-group">
							<div class="col-md-4 col-md-offset-4 f_btn">
								<button type="submit" class="btn btn-primary">비밀번호 찾기</button>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</script>