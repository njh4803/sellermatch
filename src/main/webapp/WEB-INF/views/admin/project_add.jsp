<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/division/css/style.css">
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
.jFiler-input-dragDrop {
    width: 100%;
    background-color: #fafafa;
}
.ck-blurred.ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-editor__editable_inline {
	height: 300px;
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
								            <li class="breadcrumb-item"><a href="#!">상품관리(프로젝트)</a>
								            </li>
								            <li class="breadcrumb-item"><a href="#!">공급자 상품등록</a>
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
                                                        <h5>상품 등록</h5>
                                                        <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title">Basic Inputs</h4>
                                                        <form action="${pageContext.request.contextPath}/admin/product/add" id="prod_form" name="prod_form" method="post" enctype="multipart/form-data">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">상품 대표 사진</label>
                                                                <div class="col-sm-10 file_input">
                                                                	<div class="input-group">
                                                                		<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" name="prodPhoto" value="" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div>
                                                            <!-- File upload card start -->
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">상품 상세 사진</label>
                                                                <div class="col-sm-10">
                                                                <div class="form-group">
												                    <div class="card-block">
												                        <input type="file" name="files[]" id="filer_input1" multiple="multiple">
												                    </div>
											                    </div>
											                    </div>
											                </div>
											                <!-- File upload card end -->
                                                            
                                                            <div class="form-group row">
                                                                <label for="prodName" class="col-sm-2 col-form-label">상품명
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="prodName" type="text" name="prodName" class="form-control" placeholder="이메일 입력">
	                                                                    <!-- <span
																			id="guide" class="input-group-btn">
																			<button type="button" id="idCheck"
																				class="btn form-bg-primary">중복검사</button>
																		</span> -->
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">상품가격
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <input type="number" id="prodPrice" name="prodPrice" class="form-control" pattern="#,###">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="prodQty" class="col-sm-2 control-label">상품 개수
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="number" name="prodQty" class="form-control"
																		id="prodQty" min="0" pattern="#,###" />
																</div>
															</div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">모집마감일</label>
                                                                <div class="col-sm-10">
                                                                    <input type="date" class="form-control" name="prodEndDate" id="prodEndDate">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">산업 대분류</label>
                                                                <div class="col-sm-10">
                                                                    <select id="prodIndusA" name="prodIndusA" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="대한민국">대한민국</option>
						                                                <option value="베트남">베트남</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">산업 중분류</label>
                                                                <div class="col-sm-10">
                                                                    <select id="prodIndusB" name="prodIndusB" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="대한민국">대한민국</option>
						                                                <option value="베트남">베트남</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">산업 소분류</label>
                                                                <div class="col-sm-10">
                                                                    <select id="prodIndusC" name="prodIndusC" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="대한민국">대한민국</option>
						                                                <option value="베트남">베트남</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="prodKeyword" class="col-sm-2 col-form-label">상품 키워드
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="prodKeyword" class="form-control" id="prodKeyword"
																		placeholder="`,`로 구분" />
																</div>
															</div>
															<div class="form-group row">
																<label for="prodDetail" class="col-sm-2 col-form-label">상품 상세내용
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<textarea class="form-control" style="width: 100%; height: 300px" name="prodDetail" id="editor"></textarea>
																</div>
															</div>
															<div style="text-align-last: center;">
																<input class="btn form-bg-primary" type="submit" value="등록">
																<input class="btn form-bg-submit" type="reset" value="취소">
															</div>
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
	
	// 3. CKEditor5를 생성할 textarea 지정
	ClassicEditor
	    .create( document.querySelector( '#editor' ) )
	    .catch( error => {
	        console.error( error );
	    } );
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
    
    $('#prod_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            //return $(form).valid();
        },
        success: function(json) {
            swal('알림', '상품이 등록되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/admin/productList';
            });
        },
    });
});
</script>

<!-- CKEditor js -->
<script src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
<%@ include file="inc/footer.jsp"%>
