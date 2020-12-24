<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
.modal-header {
	display: block;
}
</style>
  <!-- Modal -->
  <div class="modal fade" id="editModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
													<div class="card-block">
                                                        <h4 class="sub-title">Basic Inputs</h4>
                                                        <form action="${pageContext.request.contextPath}/admin/project/edit" method="post" id="proj_edit_form" name="proj_edit_form" enctype="multipart/form-data">
                                                            <%-- <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품 대표 사진</label>
                                                                <div class="col-sm-9 file_input">
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
                                                            </div> --%>
                                                            <input type="hidden" id="projId" name="projId">
                                                            <div class="form-group row">
                                                                <label for="projTitle" class="col-sm-3 col-form-label">프로젝트 제목
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projTitle" type="text" name="projTitle" class="form-control">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projState" class="col-sm-3 col-form-label">프로젝트 상태
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <select id="projState" name="projState" class="form-control">
							                                                <option value="0">중지</option>
							                                                <option value="1">정상</option>
							                                            </select>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projRegDate" class="col-sm-3 col-form-label">프로젝트 등록일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projRegDate" type="datetime" name="projRegDate" class="form-control" readonly>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projEditDate" class="col-sm-3 col-form-label">프로젝트 수정일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projEditDate" type="datetime" name="projEditDate" class="form-control" readonly>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projMemId" class="col-sm-3 col-form-label">등록자 아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projMemId" type="text" name="projMemId" class="form-control" readonly>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projSort" class="col-sm-3 col-form-label">회원분류
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<select id="projSort" name="projSort" class="form-control">
						                                                <option value="0">일반</option>
						                                                <option value="1">공급자</option>
						                                                <option value="2">판매자</option>
						                                        	</select>
                                                                </div>
                                                            </div>
                                                            <!-- File upload card start -->
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품 상세 사진</label>
                                                                <div class="col-sm-9">
                                                                <div class="form-group">
												                    <div class="card-block">
												                        <input type="file" name="projDetailImg[]" id="filer_input1" multiple="multiple">
												                    </div>
											                    </div>
											                    </div>
											                </div>
											                <!-- File upload card end -->
                                                            <div class="form-group row">
                                                                <label for="projPrice" class="col-sm-3 col-form-label">상품가격
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <input type="number" id="projPrice" name="projPrice" class="form-control" pattern="#,###">
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label for="projMargin" class="col-sm-3 col-form-label">판매마진
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projMargin" name="projMargin" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="10">10%이하</option>
						                                                <option value="20">11%~20%</option>
						                                                <option value="30">21%~30%</option>
						                                                <option value="31">30%초과</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projNation" class="col-sm-3 col-form-label">등록지역
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projNation" name="projNation" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="02">서울</option>
						                                                <option value="031">경기</option>
						                                                <option value="032">인천</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projSupplyType" class="col-sm-3 col-form-label">공급방법
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projSupplyType" name="projSupplyType" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">OEM</option>
						                                                <option value="2">위탁판매</option>
						                                                <option value="3">도매공급</option>
						                                                <option value="4">운영대행</option>
						                                                <option value="5">경매공급</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projEndDate" class="col-sm-3 col-form-label">모집마감일</label>
                                                                <div class="col-sm-9">
                                                                    <input type="date" class="form-control" name="projEndDate" id="projEndDate">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품분류</label>
                                                                <div class="col-sm-9">
                                                                    <select id="projIndus" name="projIndus" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">도서</option>
						                                                <option value="02">의류</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="projRecruitNum" class="col-sm-3 control-label">모집인원
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<input type="number" name="projRecruitNum" class="form-control"
																		id="projRecruitNum" min="1"/>
																</div>
															</div>
                                                            <div class="form-group row">
																<label for="projKeyword" class="col-sm-3 col-form-label">상품 키워드
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="고경력선호">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>고경력선호</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="고마진상품">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>고마진상품</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="매출보장판매자">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>매출보장 판매자</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="수출가능상품">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>수출가능상품</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="요즘뜨는제품">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>요즘 뜨는 제품</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">첨부파일</label>
                                                                <div class="col-sm-9 file_input">
                                                                	<div class="input-group">
                                                                		<%-- <div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div> --%>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" name="projFile" value="" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="projProdCerti" class="col-sm-3 col-form-label">상품 검증</label>
																<div class="col-sm-9">
																	<select id="projProdCerti" name="projProdCerti" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
																</div>
															</div>
															<div class="form-group row">
																<label for="projDetail" class="col-sm-3 col-form-label">상품 상세내용
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<textarea class="form-control" style="width: 100%; height: 300px" name="projDetail" id="projDetail"></textarea>
																</div>
															</div>
															<div class="modal-footer">
																<div style="text-align-last: center;">
																	<input class="btn form-bg-primary" type="submit" value="수정">
																	<input class="btn form-bg-submit" type="button" value="취소" data-dismiss="modal">
																</div>
															</div>
                                                                </form>
                                                                <!-- 회원가입 form end -->
          </div>
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">

	
$(document).ready(function() {
	$("#image").on("change", handleImgfileSelect);
	
	// 3. CKEditor5를 생성할 textarea 지정
	/* ClassicEditor
	    .create( document.querySelector( '#projDetail' ) )
	    .catch( error => {
	        console.error( error );
	    } ); */

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
    
    $('#proj_edit_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            //return $(form).valid();
        },
        success: function(json) {
            swal('알림', '프로젝트가 수정되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/admin/projectList';
            });
        },
    });
});
</script>