<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- Modal -->
  <div class="modal fade" id="s-profileModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
			<form action="${pageContext.request.contextPath}/admin/profile" id="profile_form" name="profile_form" enctype="multipart/form-data">
															<div class="form-group row">
                                                                <label for="sellerId" class="col-sm-2 col-form-label">판매자 프로필 번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="sellerId" type="text" name="sellerId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sellerMemId" class="col-sm-2 col-form-label">판매자 아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="sellerMemId" type="text" name="sellerMemId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sellerState" class="col-sm-2 col-form-label">판매자 상태
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="sellerState" type="text" name="sellerState" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sellerRegDate" class="col-sm-2 col-form-label">판매자 등록일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="sellerRegDate" type="date" name="sellerRegDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sellerEditDate" class="col-sm-2 col-form-label">판매자정보 수정일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="sellerEditDate" type="date" name="sellerEditDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">판매자 등급
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="sellerGrade" name="sellerGrade" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">1등급</option>
						                                                <option value="2">2등급</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">판매 경력
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="sellerCareer" name="sellerCareer" class="form-control">
						                                                <option value="0">경력없음</option>
						                                                <option value="1">1개월 이상</option>
						                                                <option value="3">3개월 이상</option>
						                                                <option value="6">6개월 이상</option>
						                                                <option value="9">1년 이상</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">판매자 지역
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="sellerNation" name="sellerNation" class="form-control">
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
                                                                    <select id="sellerIndus" name="sellerIndus" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">도서</option>
						                                                <option value="02">의류</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">판매 채널</label>
                                                                <div class="col-sm-10">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="1">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오픈마켓</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="2">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>종합몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="3">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>폐쇄몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="4">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>커뮤니티</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="5">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>SNS</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="6">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오프라인</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="sellerCh" type="checkbox" name="sellerCh" value="7">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>해외</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">채널 검증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="sellerChChk" name="sellerChChk" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="sellerChChkDate" class="col-sm-2 col-form-label">채널 검증일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="sellerChChkDate" type="date" name="sellerChChkDate" class="form-control">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="sellerBizNum" class="col-sm-2 col-form-label">사업자 번호
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="sellerBizNum" class="form-control" id="sellerBizNum" />
																</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">사업자 유형
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="sellerBizSort" name="sellerBizSort" class="form-control">
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
                                                                    <select id="sellerBizCerti" name="sellerBizCerti" class="form-control">
						                                                <option value="0">미인증</option>
						                                                <option value="1">인증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">매출 검증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="sellerSaleChk" name="sellerSaleChk" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">판매자 소개 사진</label>
                                                                <div class="col-sm-10">
                                                                <div class="form-group">
												                    <div class="card-block">
												                        <input type="file" name="sellerPhoto[]" id="filer_input1" multiple="multiple">
												                    </div>
											                    </div>
											                    </div>
											                </div>
											                <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">자기 소개
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <textarea id="sellerIntro" name="sellerIntro" style="width: 100%; height: 150px;" class="form-control"></textarea>
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
    $('#profile_form').validate({
    	/* 
			required 필수 항목으로 설정한다. (true, false)
			remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
		*/
		
        rules: {
            // [비밀번호] 필수 + 글자수 길이 제한
            sellerNation: 'required',
            sellerGrade : 'required',
            sellerIndus : 'required',
            sellerBizNum : 'required',
            sellerBizSort : 'required',
            sellerIntro : 'required',
        },
        messages: {
        	sellerNation: '판매자지역을 선택해주세요.',
        	sellerGrade: '판매자등급을 선택해주세요.',
        	sellerIndus : '상품분류를 선택해주세요.',
        	sellerBizNum : '사업자 번호를 입력해주세요.',
        	sellerBizSort : '사업자 유형을 선택해주세요.',
        	sellerIntro : '자기소개를 입력해주세요.',
        }
    });
    
    $("#profile_form").submit(function(e) {
		e.preventDefault();
		
		var form = $(this);
        var url = form.attr('action');
       
        $.ajax({
			   type: "PUT",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#profile_form').valid();
               },
               success: function() {
            	   swal('알림', '프로필이 수정되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/admin/memberList';
                   });
               }
        });
        
    });
});
</script>