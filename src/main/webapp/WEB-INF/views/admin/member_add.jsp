<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/pages/division/css/style.css">
<style>
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

.content{
    outline: 2px dashed #92b0b3 ;
    outline-offset:-10px;  
    text-align: center;
    transition: all .15s ease-in-out;
    width: 300px;
    height: 300px;
    background-color: gray;
}
</style>
<%@ include file="inc/navigation.jsp"%>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                <div class="page-header">
								    <div class="page-header-title">
								        <h4>회원관리</h4>
								    </div>
								    <div class="page-header-breadcrumb">
								        <ul class="breadcrumb-title">
								            <li class="breadcrumb-item">
								                <a href="index.html">
								                    <i class="icofont icofont-home"></i>
								                </a>
								            </li>
								            <li class="breadcrumb-item"><a href="#!">회원관리</a>
								            </li>
								            <li class="breadcrumb-item"><a href="#!">회원등록</a>
								            </li>
								        </ul>
								    </div>
								</div>
								    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>회원등록</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <form action="${pageContext.request.contextPath}/admin/member/join" id="join_form" name="join_form" method="post" enctype="multipart/form-data">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 사진</label>
                                                                <div class="col-sm-10 file_input">
                                                                	<div class="input-group profile">
                                                                		<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" name="memPhoto" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="memId" class="col-sm-2 col-form-label">아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="memId" type="text" name="memId" class="form-control" placeholder="이메일 입력">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">비밀번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <input type="password" id="memPw" name="memPw" class="form-control" placeholder="영문,숫자,특수문자 조합 최대 30글자">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="memPw_confirm" class="col-sm-2 control-label">비밀번호 확인
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="password" name="memPw_confirm" class="form-control"
																		id="memPw_confirm" placeholder="영문,숫자,특수문자 조합 최대 30글자" />
																</div>
															</div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">이름</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" name="memName" id="memName">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">닉네임</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" name="memNick" id="memNick">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">국가</label>
                                                                <div class="col-sm-10">
                                                                    <select id="memCountry" name="memCountry" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">대한민국</option>
						                                                <option value="02">베트남</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">지역</label>
                                                                <div class="col-sm-10">
                                                                    <select id="memNation" name="memNation" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="02">서울</option>
						                                                <option value="032">인천</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="memEmail" class="col-sm-2 col-form-label">이메일 인증</label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="memEmail" class="form-control" id="memEmail" />
																		<span class="input-group-btn">
																			<button type="button" id="sendAuthEmail"
																				class="btn form-bg-primary">인증 번호 발송</button>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label for="" class="col-sm-2 col-form-label"></label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="auth_confirm" class="form-control" id="auth_confirm" />
																		<span class="input-group-btn">
																			<button type="button" id="authConfirm"
																				class="btn form-bg-primary">인증 번호 확인</button>
																		</span>
																	</div>
																</div>
															</div>
                                                            <div class="form-group row">
																<label for="memTel" class="col-sm-2 col-form-label">연락처
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="memTel" class="form-control" id="memTel"
																		placeholder="`-`없이 숫자만 입력" />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label" style="display: flow-root;">우편번호
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-4">
																	<div class="input-group">
																		<input type="text" name="memPost" class="form-control"
																			id="postcode" maxlength="5" readonly> <span
																			class="input-group-btn">
																			<button type="button" class="btn form-bg-primary postcode-finder"
																				data-postcode="postcode" data-addr1="addr1"
																				data-frame="postcode-frame" onClick="exeDaumPostcode()">우편번호검색</button>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label">주소
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10 col-sm-offset-2">
																	<input type="text" name="memAddr" class="form-control" id="memAddr"
																		readonly />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label">상세주소</label>
																<div class="col-sm-10 col-sm-offset-2">
																	<input type="text" name="memAddr2" class="form-control" id="memAddr2"
																		placeholder="나머지 주소" />
																</div>
															</div>
															<div style="text-align-last: center;">
																<input class="btn form-bg-primary" type="submit" value="등록">
																<input class="btn form-bg-submit" type="reset" value="취소">
															</div>
															<input type="hidden" name="memRname" id="memRname" readonly="readonly">
                                                                </form>
                                                                <!-- 회원가입 form end -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Basic Form Inputs card end -->                                            
                                            
									    	</div>
										</div>
									</div>
                            <!-- navigation 종료 태그 -->
                        </div>
                    </div>
                </div>
            </div>
<script type="text/javascript">
	
$(document).ready(function() {
	$("#image").on("change", handleImgfileSelect);
	
}); // end ready...

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

$(function(){
	
	$('.profile')
	  .on("dragover", dragOver)
	  .on("dragleave", dragOver)
	  .on("drop", uploadFiles);

	function dragOver(e){
	  e.stopPropagation();
	  e.preventDefault();
	  if (e.type == "dragover") {
	    $(e.target).css({
	      //"background-color": "black",
	      "outline-offset": "-20px"
	    });
	  } else {
	      $(e.target).css({
	      //"background-color": "gray",
	      "outline-offset": "-10px"
	    });
	  }
	}

	function uploadFiles(e) {
	    e.stopPropagation();
	    e.preventDefault();
	    dragOver(e);
	  
	    e.dataTransfer = e.originalEvent.dataTransfer;
	    var files = e.target.files || e.dataTransfer.files;
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
			javascript:document.getElementById('file_route').value= f.name;
			console.log(this.name);
			console.log(e.name);
			console.log(this.name);
			console.log(e.name);
			reader.readAsDataURL(f);
		});
		
	}

	$.validator.addMethod("kor", function(value, element) {
		return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
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
            memId: {
                required: true, email: true, minlength: 4, maxlength: 30, 
                remote : {
                    url : ROOT_URL + '/admin/member/idCheck',
                    type : 'post',
                    data : {
                    	memId : function() {
                            return $("#memId").val();
                        }
                    }
                }
            },
            // [비밀번호] 필수 + 글자수 길이 제한
            memPw: { required: true, minlength: 4, maxlength: 30 },
            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
            memPw_confirm: { required: true, equalTo: '#memPw' },
            // [연락처] 필수
            memTel: { required: true, phone: true, minlength: 9, maxlength: 11 },
            // [우편번호] 필수 입력
            postcode: 'required',
            // [주소1] 우편번호가 입력된 경우만 필수
            memAddr: 'required',
            
        },
        messages: {
        	memId: {
                required: '아이디를 입력하세요.',
                email: '아이디는 이메일만 입력 가능합니다.',
                minlength: '아이디는 최소 {4}글자 이상 입력하셔야 합니다.',
                maxlength: '아이디는 최대 {30}글자까지 가능합니다.',
                remote: '이미 사용중인 이메일 입니다.'
            },
            memPw: {
                required: '비밀번호를 입력하세요.',
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
                minlength: '연락처는 최소 {9}글자 이상 입력하셔야 합니다.',
                maxlength: '연락처는 최대 {11}글자까지 가능합니다.',
            },
            postcode: '우편번호를 입력해 주세요.',
            memAddr: '기본주소를 입력해 주세요.',
        }
    });
    
    $('#join_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        success: function(json) {
            swal('알림', '회원이 등록되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/admin/memberList';
            });
        },
    });
	//유효성 검사 아이디 중복 검사 알림창으로 확인하기
/* 	$("#idCheck").click(function(e) {
	    const memId = $("#memId").val();

	    if (!memId) {
	    	swal('알림', '아이디를 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/admin/member/idCheck', {
	    	memId: memId
	    }, function(json) {
	    	swal('확인', '사용가능한 아이디 입니다.', 'success');
	    });
	}); */
	$("#sendAuthEmail").click(function(e) {
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
	$("#authConfirm").click(function(e) {
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
});
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/daum/exeDaumPostcode.js"></script>
<%@ include file="inc/footer.jsp"%>
