<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- Modal -->
  <div class="modal fade" id="p-profileModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
			<form action="${pageContext.request.contextPath}/admin/profile" id="profile_form" name="profile_form" enctype="multipart/form-data">
															<div class="form-group row">
                                                                <label for="ppId" class="col-sm-2 col-form-label">프로필 번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="ppId" type="text" name="ppId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="ppProjId" class="col-sm-2 col-form-label">등록된 프로젝트 번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="ppProjId" type="text" name="ppProjId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="ppMemId" class="col-sm-2 col-form-label">아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="ppMemId" type="text" name="ppMemId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="ppRegDate" class="col-sm-2 col-form-label">공급자 등록일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="ppRegDate" type="date" name="ppRegDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="ppEditDate" class="col-sm-2 col-form-label">공급자정보 수정일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="ppEditDate" type="date" name="ppEditDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="ppState" class="col-sm-2 col-form-label">공급자 상태
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                               		<select id="ppState" name="ppState" class="form-control">
						                                                <option value="0">중지</option>
						                                                <option value="1">정상</option>
						                                            </select>
						                                        </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">공급자 등급
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="ppGrade" name="ppGrade" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">1등급</option>
						                                                <option value="2">2등급</option>
						                                                <option value="3">3등급</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">공급자 지역
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="ppNation" name="ppNation" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="02">서울</option>
						                                                <option value="031">경기</option>
						                                                <option value="032">인천</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">상품분류</label>
                                                                <div class="col-sm-10">
                                                                    <select id="ppIndus" name="ppIndus" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">도서</option>
						                                                <option value="02">의류</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">채널</label>
                                                                <div class="col-sm-10">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="1">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오픈마켓</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="2">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>종합몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="3">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>폐쇄몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="4">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>커뮤니티</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="5">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>SNS</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="6">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오프라인</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="ppCh" type="checkbox" name="ppCh" value="7">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>해외</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="ppBizNum" class="col-sm-2 col-form-label">사업자 번호
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="ppBizNum" class="form-control" id="ppBizNum" />
																</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">사업자 유형
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="ppBizSort" name="ppBizSort" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">법인사업자</option>
						                                                <option value="2">개인사업자</option>
						                                                <option value="3">간이과세자</option>
						                                                <option value="4">개인</option>
						                                                <option value="5">기타</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">사업자 인증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="ppBizCerti" name="ppBizCerti" class="form-control">
						                                                <option value="0">미인증</option>
						                                                <option value="1">인증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">수익성 검증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="ppProfit" name="ppProfit" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">수익성 검증일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <input type="date" name="ppProfitChkDate" id="ppProfitChkDate" class="form-control">
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">공급자 소개 사진</label>
                                                                <div class="col-sm-10">
                                                                <div class="form-group">
												                    <div class="card-block">
												                        <input type="file" name="ppPhoto[]" id="filer_input1" multiple="multiple">
												                    </div>
											                    </div>
											                    </div>
											                </div>
											                <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">자기 소개
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <textarea id="ppIntro" name="ppIntro" style="width: 100%; height: 150px;" class="form-control"></textarea>
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
            // [비밀번호] 필수 + 글자수 길이 제한
            memPw: { minlength: 4, maxlength: 30 },
            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
            memPw_confirm: { equalTo: '#memPw' },
         	// [국가] 필수
            memCountry: 'required',
         	// [지역] 필수
            memNation: 'required',
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
            memCountry: '국가를 선택해주세요.',
            memNation: '지역을 선택해주세요.',
        }
    });
    
    
    /* $('#profile_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        type: 'PUT',
        Content-Type: application/x-www-form-urlencoded,
        success: function(json) {
            swal('알림', '회원정보가 수정되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/admin/memberList';
            });
        },
    }); */
    $("#profile_form").submit(function(e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.

        var form = $(this);
        var url = form.attr('action');
        
       
        $.ajax({
               type: "PUT",
               url: url,
               data: form.serialize(), // serializes the form's elements.
               success: function() {
            	   swal('알림', '프로필이 수정되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/admin/memberList';
                   });
               }
        });
        
    });
    
});
</script>