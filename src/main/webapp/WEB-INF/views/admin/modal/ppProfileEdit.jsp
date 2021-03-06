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
			<form action="${pageContext.request.contextPath}/admin/profile" id="profile_form1" name="profile_form1" enctype="multipart/form-data">
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
    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
    $('#profile_form1').validate({
    	/* 
			required 필수 항목으로 설정한다. (true, false)
			remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
		*/
		
		rules: {
            ppNation: 'required',
            ppGrade : 'required',
            ppIndus : 'required',
            ppBizNum : 'required',
            ppBizSort : 'required',
            ppIntro : 'required',
        },
        messages: {
        	ppNation: '공급자지역을 선택해주세요.',
        	ppGrade: '공급자등급을 선택해주세요.',
        	ppIndus : '상품분류를 선택해주세요.',
        	ppBizNum : '사업자 번호를 입력해주세요.',
        	ppBizSort : '사업자 유형을 선택해주세요.',
        	ppIntro : '자기소개를 입력해주세요.',
        }
    });
    
    $("#profile_form1").submit(function(e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.

        var form = $(this);
        var url = form.attr('action');
        
       
        $.ajax({
               type: "PUT",
               url: url,
               data: form.serialize(),
               beforeSend: function() {
	        	   return $('#profile_form1').valid();
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