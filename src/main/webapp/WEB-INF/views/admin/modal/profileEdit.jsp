<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- Modal -->
  <div class="modal fade" id="profileModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
			<form action="${pageContext.request.contextPath}/admin/profile" id="profile_form" name="profile_form" enctype="multipart/form-data">
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 분류
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <input type="hidden" name="profileSort">
                                                                <div class="col-sm-10">
                                                                    <select id="profileSort" class="form-control" disabled="disabled">
						                                                <option value="1">공급자</option>
						                                                <option value="2">판매자</option>
						                                            </select>
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label for="profileId" class="col-sm-2 col-form-label">프로필 번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileId" type="text" name="profileId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="profileMemId" class="col-sm-2 col-form-label">아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileMemId" type="text" name="profileMemId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="profileState" class="col-sm-2 col-form-label">프로필 상태
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileState" type="text" name="profileState" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="profileRegDate" class="col-sm-2 col-form-label">프로필 등록일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileRegDate" type="date" name="profileRegDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="profileEditDate" class="col-sm-2 col-form-label">프로필정보 수정일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileEditDate" type="date" name="profileEditDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">회원등급
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileGrade" name="profileGrade" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">1등급</option>
						                                                <option value="2">2등급</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label class="col-sm-2 col-form-label">판매 경력
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileCareer" name="profileCareer" class="form-control">
						                                                <option value="0">경력없음</option>
						                                                <option value="1">1개월 이상</option>
						                                                <option value="3">3개월 이상</option>
						                                                <option value="6">6개월 이상</option>
						                                                <option value="9">1년 이상</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">등록자 지역
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileNation" name="profileNation" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="02">서울</option>
						                                                <option value="031">경기</option>
						                                                <option value="032">인천</option>
						                                                <option value="033">강원</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">상품분류</label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileIndus" name="profileIndus" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">도서</option>
						                                                <option value="02">의류</option>
						                                                <option value="03">잡화</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">채널</label>
                                                                <div class="col-sm-10">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="1">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오픈마켓</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="2">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>종합몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="3">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>폐쇄몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="4">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>커뮤니티</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="5">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>SNS</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="6">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오프라인</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="7">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>해외</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">해시태그</label>
                                                                <div class="col-sm-10">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileHashtag" type="checkbox" name="profileHashtag" value="다양한 채널운영">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>다양한 채널운영</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileHashtag" type="checkbox" name="profileHashtag" value="높은 매출 셀러">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>높은 매출 셀러</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileHashtag" type="checkbox" name="profileHashtag" value="장기판매경력">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>장기판매경력</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileHashtag" type="checkbox" name="profileHashtag" value="탁월한 판매능력">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>탁월한 판매능력</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileHashtag" type="checkbox" name="profileHashtag" value="다양한 판매분야">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>다양한 판매분야</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label class="col-sm-2 col-form-label">채널 검증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileChChk" name="profileChChk" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label for="profileChChkDate" class="col-sm-2 col-form-label">채널 검증일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileChChkDate" type="date" name="profileChChkDate" class="form-control">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="profileBizNum" class="col-sm-2 col-form-label">사업자 번호
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="profileBizNum" class="form-control" id="profileBizNum" />
																</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">사업자 유형
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileBizSort" name="profileBizSort" class="form-control">
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
                                                                    <select id="profileBizCerti" name="profileBizCerti" class="form-control">
						                                                <option value="0">미인증</option>
						                                                <option value="1">인증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label class="col-sm-2 col-form-label">매출 검증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileSaleChk" name="profileSaleChk" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">신원 인증
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileRname" name="profileRname" class="form-control">
						                                                <option value="0">미인증</option>
						                                                <option value="1">인증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="profileHit" class="col-sm-2 col-form-label">프로필 조회수
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="profileHit" class="form-control" id="profileHit" readonly="readonly"/>
																</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 소개 사진</label>
                                                                <div class="col-sm-10">
                                                                <div class="form-group">
												                    <div class="card-block">
												                        <input type="file" name="profilePhoto[]" id="filer_input1" multiple="multiple">
												                    </div>
											                    </div>
											                    </div>
											                </div>
											                <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">자기 소개
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <textarea id="profileIntro" name="profileIntro" style="width: 100%; height: 150px;" class="form-control"></textarea>
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
            profileNation: 'required',
            profileGrade : 'required',
            profileIndus : 'required',
            profileBizNum : 'required',
            profileBizSort : 'required',
            profileIntro : 'required',
        },
        messages: {
        	profileNation: '판매자지역을 선택해주세요.',
        	profileGrade: '판매자등급을 선택해주세요.',
        	profileIndus : '상품분류를 선택해주세요.',
        	profileBizNum : '사업자 번호를 입력해주세요.',
        	profileBizSort : '사업자 유형을 선택해주세요.',
        	profileIntro : '자기소개를 입력해주세요.',
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