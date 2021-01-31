<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- Modal -->
  <div class="modal fade" id="memberAddModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원등록</h4>
        </div>
        <div class="modal-body">
			<form action="${pageContext.request.contextPath}/admin/member/join" id="join_form" name="join_form" method="post" enctype="multipart/form-data">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 사진</label>
                                                                <div class="col-sm-10 file_input">
                                                                	<div class="input-group profile">
                                                                		<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img1" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id="image1" name="memPhoto" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">가입 유형</label>
                                                                <div class="col-sm-10">
                                                                    <select id="memSort" name="memSort" class="form-control">
						                                                <option value="1">공급자</option>
						                                                <option value="2">판매자</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="memberId" class="col-sm-2 col-form-label">아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="memberId" type="text" name="memberId" class="form-control" placeholder="이메일 입력">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">비밀번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <input type="password" id="memberPw" name="memberPw" class="form-control" placeholder="영문,숫자,특수문자 조합 최대 30글자">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="memberPw_confirm" class="col-sm-2 control-label">비밀번호 확인
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="password" name="memberPw_confirm" class="form-control"
																		id="memberPw_confirm" placeholder="영문,숫자,특수문자 조합 최대 30글자" />
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
																</label>
																<div class="col-sm-10">
																	<input type="text" name="memTel" class="form-control" id="memTel"
																		placeholder="`-`없이 숫자만 입력" />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label" style="display: flow-root;">우편번호
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

<script type="text/javascript">
	
$(document).ready(function() {
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
				$("#img1").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	};
	
	$("#image1").on("change", handleImgfileSelect);
	
}); // end ready...

$(function(){

	$.validator.addMethod("kor", function(value, element) {
		return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
	});

	$.validator.addMethod("phone", function(value, element) {
		return this.optional(element)
				|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
				|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
	});
	
	$.validator.addMethod("passwordCk",  function( value, element ) {

		return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);

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
                    url : ROOT_URL + '/admin/member/idCheck',
                    type : 'post',
                    data : {
                    	memberId : function() {
                            return $("#memberId").val();
                        }
                    }
                }
            },
            // [비밀번호] 필수 + 글자수 길이 제한
            memberPw: { required: true, passwordCk:true, minlength: 6, maxlength: 30 },
            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
            memberPw_confirm: { required: true, equalTo: '#memberPw' },
            
        },
        messages: {
        	memberId: {
                required: '아이디를 입력하세요.',
                email: '아이디는 이메일만 입력 가능합니다.',
                remote: '이미 사용중인 이메일 입니다.'
            },
            memberPw: {
            	required: '비밀번호를 입력하세요.',
                passwordCk: '비밀번호는 문자 + 숫자 + 특수문자를 포함하셔야 합니다.',
                minlength: '비밀번호는 최소 {6}글자 이상 입력하셔야 합니다.',
                maxlength: '비밀번호는 최대 {30}글자까지 가능합니다.',
            },
            memberPw_confirm: {
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
	
	$(document).on("focus blur", "#memNick", function(){
		var memNick = $('#memNick').val();
		$('#memNick').val(memNick.trim());
	});
});
</script>