<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.ck-blurred.ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-editor__editable_inline
	{
	height: 300px;
}

.modal-header {
	display: block;
}

#loginModal .modal-dialog {
	width: 560px;
}

#loginModal .modal-dialog#idPw-find {
	width: 500px;
}

.modal-dialog .modal-content .modal-body {
	position: relative;
	padding: 40px 45px;
}

#loginModal .modal-dialog .modal-content {
	border-radius: 20px;
}

.bannerBox {
	width: 100%;
	height: 120px;
	margin: 10px 2.5px 0 0;
	border-radius: 12px;
	border: solid 1px #d6d6d6;
	background-color: #e2e2e2;
}

.communicateBox {
	height: 100px;
	border: 1px solid #000;
}

.communicateBox .row {
	text-align: left;
	padding: 12px 25px;
	font-size: 1px;
}

.communicateBox .row div {
	display: inline-block;
}

.communicateBox .row .text {
	display: inline-block;
	vertical-align: middle;
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

.form-group .id_btn {
	width: 100%;
	height: 50px;
	border-radius: 12px;
	box-shadow: 5px 5px 10px 0 rgba(0, 0, 0, 0.16);
	background-image: linear-gradient(to right, #ff7e01, #ff540f);
	font-size: 15px;
	font-weight: 800;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
	border: none !important;
}

.communicate {
	display: inline-block;
	vertical-align: middle;
	margin: 0;
}

.login_logo {
	text-align: center;
	margin-bottom: 30px;
}

.login_logo h5 {
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #484848;
	margin-top: 6px;
	font-family: NanumGothic !important;
	line-height: 1.07;
}

.login-logo {
	width: 215px;
	height: 50px;
	object-fit: contain;
}

form div .input-group input.form-control {
	width: 100%;
	height: 60px;
	border-radius: 12px !important;
	border: solid 1px #d6d6d6;
	background-color: #ffffff;
	margin-bottom: 10px;
}

.form-group {
	margin-bottom: 15px;
	margin-top: 15px;
}
#login-form .btn-primary {
	width: 100%;
	height: 60px;
	margin-bottom: 13px;
	border-radius: 12px;
	box-shadow: 5px 5px 10px 0 rgba(0, 0, 0, 0.16);
	background-image: linear-gradient(to right, #ff7e01, #ff540f);
	font-size: 15px;
	font-weight: 800;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
	border: none !important;
}

#login-form a, a:focus, a:hover {
	text-decoration: none;
	color: #000000;
	line-height: revert;
}

.loginPass {
	width: 15.3px;
	height: 21.4px;
	object-fit: contain;
	margin-top: -4px;
}

.nav-tabs>li>a {
	margin-right: 2px;
	line-height: 1.42857143;
	border: 1px solid transparent;
	border-radius: 4px 4px 0 0;
	color: #343434;
}

.joinBox2 {
	width: 470px;
	height: 45px;
	display: inline-block;
	margin: 5px;
	border-radius: 10px;
	padding: 10px;
	text-align: center;
}

.joinBox2 a {
	font-family: NanumGothic;
	font-size: 15px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.6;
	letter-spacing: normal;
	text-align: left;
}

.joinBox2 img {
	margin-top: -5px;
}

.joinBox2.naver2 {
	background-color: #33c75f;
}

.joinBox2.naver2 a {
	color: #ffffff;
}

.joinBox2.kakao2 {
	background-color: #ffdd56;
}

.joinBox2.kakao2 a {
	color: #744d00;
	text-align: center;
}

.joinBox2.google2 {
	border: solid 1px #d6d6d6;
	background-color: #ffffff;
}

.joinBox2.google2 a {
	color: #484848;
	text-align: center;
}

.hr-sect {
	display: flex;
	flex-basis: 100%;
	align-items: center;
	font-size: 15px;
	margin: 8px 0px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: 4.6;
	letter-spacing: normal;
	text-align: left;
	color: #aaaaaa;
	font-family: NanumGothic !important;
}

.hr-sect::before, .hr-sect::after {
	content: "";
	flex-grow: 1;
	background: #d9d9d9;
	height: 1px;
	font-size: 0px;
	line-height: 0px;
	margin: 0px 16px;
}
#loginRemember span{
	font-family: NanumGothic !important;
	font-size: 15px !important;
	font-weight: normal !important;
	font-stretch: normal !important;
	font-style: normal !important;
	letter-spacing: normal !important;
	text-align: left !important;
	color: #343434 !important;
}
#joininLogin {
	margin-right: 21px;
	font-family: NanumGothic !important;
	font-size: 15px !important;
	font-weight: normal !important;
	font-stretch: normal !important;
	font-style: normal !important;
	letter-spacing: normal !important;
	text-align: left !important;
	color: #343434 !important;
}
#idPwFind {
	font-family: NanumGothic !important;
	font-size: 15px !important;
	font-weight: normal !important;
	font-stretch: normal !important;
	font-style: normal !important;
	letter-spacing: normal !important;
	text-align: left !important;
	color: #343434 !important;
}
#loginRemember span {
	background-position-y: center;
}
</style>

  <!-- Modal -->
  <div class="modal fade" id="loginModal" role="dialog">

  </div>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$(document).on("focus", "#find-pw-form", function(e) {

							$("#find-pw-form").validate({
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
							});
						});
						$(document)
								.on(
										"focus",
										"#find-id-form",
										function(e) {

											$.validator
													.addMethod(
															"phone",
															function(value,
																	element) {
																return this
																		.optional(element)
																		|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i
																				.test(value)
																		|| /^\d{2, 3}\d{3, 4}\d{4}$/i
																				.test(value);
															});

											$("#find-id-form")
													.validate(
															{
																rules : {
																	memTel : {
																		required : true,
																		phone : true,
																	},
																},
																messages : {
																	memTel : {
																		required : '연락처를 입력하세요.',
																		phone : '연락처 형식이 잘못되었습니다.',
																	},
																},
															});
										});
						$(document).on("focus", "#login-form", function(e) {
							$("#login-form").validate({
								rules : {
									memId : {
										required : true,
										email : true,
									},
									memPw : 'required',
								},
								messages : {
									memId : {
										required : '아이디를 입력하세요.',
										email : '아이디는 이메일만 입력 가능합니다.'
									},
									memPw : '비밀번호를 입력하세요.',
								},
							});

						});

						$(document).on("submit", "#find-id-form", function(e) {

							e.preventDefault();

							var form = $(this);
							var url = form.attr('action');

							$.ajax({
								type : "GET",
								url : url,
								data : form.serialize(),
								beforeSend : function() {
									return $('#find-id-form').valid();
								},
								success : function(json) {
									var resultText = "";
									
									for (var i = 0; i < json.result.length; i++) {
										resultText = resultText + json.result[i].mem_id  +"<br>";
									}
									
									console.log(resultText)
									
									swal({
										title : '알림',
										html : '아이디는<br>' + resultText + '입니다.',
										type : 'success',
									});
								}
							});
						});

						$(document).on("submit", "#find-pw-form", function(e) {

							e.preventDefault();

							$('button[type=submit]').prop('disabled', true);
							
							var form = $(this);
							var url = form.attr('action');

							$.ajax({
								type : "POST",
								url : url,
								data : form.serialize(),
								beforeSend : function() {
									return $('#find-pw-form').valid();
								},
								success : function(json) {
									swal({
										title : '임시비밀번호가 발급되었습니다.',
										text : '이메일을 확인해주세요.',
										type : 'success',
									});
									
									$('button[type=submit]').prop('disabled', false);
								}
							});
						});

						$(document)
								.on(
										"submit",
										"#login-form",
										function(e) {

											e.preventDefault();

											var form = $(this);
											var url = form.attr('action');

											$
													.ajax({
														type : "POST",
														url : url,
														data : form.serialize(),
														beforeSend : function() {
															return $(
																	'#login-form')
																	.valid();
														},
														success : function(json) {
															$("#loginModal")
																	.modal(
																			'hide');

															if (json.profile.profileIndus == undefined
																	|| json.profile.profileIndus == '') {
																window.location = json.referer;
/* 																var text = '';
																if (json.profile.profileSort == 1) {
																	text = '프로필 등록 후 여러분이 원하는 판매자와 더 가까워집니다.'
																}
																if (json.profile.profileSort == 2) {
																	text = '프로필 등록 후 여러분이 원하는 공급자와 더 가까워집니다.'
																}
																swal(
																		{
																			title : '<div>프로필 등록을 해야</div><div>프로젝트 등록을 할 수 있습니다.</div>',
																			text : text,
																			type : "question",
																			icon : 'warning',
																			showCancelButton : true,
																			confirmButtonColor : '#3085d6',
																			cancelButtonColor : '#d33',
																			confirmButtonText : '지금 등록하기',
																			cancelButtonText : '나중에 등록하기'
																		})
																		.then(
																				function(
																						result) {
																					if (result.value) {
																						window.location = ROOT_URL
																								+ "/profile?profileMemId="
																								+ json.profile.profileMemId
																								+ "&profileSort="
																								+ json.profile.profileSort;
																					} else {
																						window.location = json.referer;
																					}
																				}); */
															} else {
																window.location = json.referer;
															}
														}
													});
										});
						$(document).on(
								"click",
								"#idPwFind",
								function() {
									$('#loginModal .modal-dialog').remove();

									var content = {

									}

									var template = Handlebars.compile($(
											"#idPw-find-tmpl").html());
									var html = template(content);
									$("#loginModal").append(html);
								});

					});
</script>
<script type="text/x-handlebars-template" id="login-tmpl">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-body">
			<form class="md-float-material" method="POST" id="login-form" action="${pageContext.request.contextPath}/member/login">
                            <div class="auth-box">
                                <div class="row m-b-20">
                                    <div class="login_logo">
                                        <img class="login-logo" src="${pageContext.request.contextPath}/assets/img/sellermatch_logo3.png">
                                        <h5>전세계 검증된 판매자를 만나는 곳</h5>
                                    </div>
                                </div>
                                <div class="input-group col-sm-12">
                                    <input type="email" id="memId" name="memId" class="form-control" placeholder="아이디를 입력해주세요">
                                    <span class="md-line"></span>
                                </div>
                                <div class="row"></div>
                                <div class="input-group col-sm-12">
                                    <input type="password" id="memPw" name="memPw" class="form-control" placeholder="비밀번호를 입력해주세요">
                                    <span class="md-line"></span>
                                </div>
                                <div class="row"></div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" id="loginBtn" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">
										로그인</button>
                                    </div>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-sm-6 col-xs-6">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" id="loginRemember" name="continueLogin">
                                                <label for="loginRemember" id="loginRemember" class="text-inverse"><span>로그인 유지하기</span></label>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-6 forgot-phone text-right">
                                        <a href="/member/joinMain" class="text-right f-w-600 text-inverse font-10" id="joininLogin">회원가입</a>
										<a href="#" class="text-right f-w-600 text-inverse font-10" id="idPwFind">ID PW 찾기</a>
                                    </div>
                                </div>
                            </div>
                        </form>
				<div class="hr-sect">다른 계정으로 로그인</div>
                                                                <!-- 로그인 form end -->													
	        <div class="joinBox2 naver2" id="naver2" OnClick="location.href ='${ naver_url }'" style="cursor:pointer;">
	        	<img alt="" src="${pageContext.request.contextPath}/assets/img/naver2.png">
	       		<a>네이버 아이디로 로그인</a>
	        </div>
	        <div class="joinBox2 kakao2" id="kakao2" OnClick="location.href ='${ kakao_url }'" style="cursor:pointer;">
	        	<img alt="" src="${pageContext.request.contextPath}/assets/img/kakao.png">
	        	<a>카카오톡으로 로그인</a>
	        </div>
	        <div class="joinBox2 google2" id="google2" OnClick="location.href ='${ google_url }'" style="cursor:pointer;">
	        	<img alt="" src="${pageContext.request.contextPath}/assets/img/google.png">
	        	<a>구글 계정으로 로그인</a>
	        </div>
        </div>
      </div>
    </div>
</script>
<script type="text/x-handlebars-template" id="idPw-find-tmpl">
<div class="modal-dialog modal-xl" id="idPw-find">
<div class="modal-content">
<div class="modal-body">
	<div class="">
		<div class="row m-b-20">
			<div class="login_logo" style="margin-top:0;">
        		<img src="${pageContext.request.contextPath}/assets/img/sellermatch_logo3.png">
        		<h5>전세계 검증된 판매자를 만나는 곳</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<ul class="nav nav-tabs togtab">
					<li class="active togli"><a href="#idf" data-toggle="tab">&nbsp;아이디
							찾기</a></li>
					<li class="togli"><a href="#pwdf" data-toggle="tab">비밀번호
							찾기</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active fade in" id="idf">
						<form id="find-id-form" method="post" action="${pageContext.request.contextPath}/idFind">
						<div class="form-group">
							<div class="input-group col-sm-12">
									<input id="memTel" type="text" name="memTel" class="form-control" placeholder="가입시 등록한 연락처">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div>
								<button type="submit" class="btn btn-primary id_btn">아이디
									찾기</button>
							</div>
						</div>
						</form>
					</div>
					<div class="tab-pane fade" id="pwdf">
						<form id="find-pw-form" method="post" action="${pageContext.request.contextPath}/pwFind">
						<div class="form-group">
							<div class="input-group col-sm-12">
								<input id="memId" type="email" name="memId" class="form-control" placeholder="가입시 등록한 이메일">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div>
								<button type="submit" class="btn btn-primary id_btn">비밀번호
									찾기</button>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</script>