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
  <div class="modal fade" id="boardModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
				<form action="${pageContext.request.contextPath}/admin/boardEdit"
					id="board_form" name="board_form" enctype="multipart/form-data" method="post">
					<div class="form-group row">
						<label for="boardId" class="col-sm-2 col-form-label">게시판
							번호 <span class="identify">*</span>
						</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardId" type="text" name="boardId"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardTitle" class="col-sm-2 col-form-label">게시판
							제목 <span class="identify">*</span>
						</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardTitle" type="text" name="boardTitle"
									class="form-control">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardWriter" class="col-sm-2 col-form-label">게시판
							작성자 <span class="identify">*</span>
						</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardWriter" type="text" name="boardWriter"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardRegDate" class="col-sm-2 col-form-label">등록일시</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardRegDate" type="text" name="boardRegDate"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardEditDate" class="col-sm-2 col-form-label">수정일시</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardEditDate" type="text" name="boardEditDate"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardType" class="col-sm-2 col-form-label">게시판
							유형 <span class="identify">*</span>
						</label>
						<div class="col-sm-10">
							<select id="boardType" name="boardType" class="form-control">
								<option value="">선택하세요.</option>
								<option value="1">공지사항</option>
								<option value="2">자주하는 질문</option>
								<option value="3">문의하기</option>
								<option value="4">1대1 문의</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">상단공지 여부 </label>
						<div class="col-sm-10">
							<select id="boardNoticeTop" name="boardNoticeTop"
								class="form-control">
								<option value="N">일반공지</option>
								<option value="Y">상단공지</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardEmail" class="col-sm-2 col-form-label">이메일</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardEmail" type="email" name="boardEmail"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardHit" class="col-sm-2 col-form-label">조회수</label>
						<div class="col-sm-10">
							<div class="form-group">
								<input id="boardHit" type="number" name="boardHit"
									class="form-control" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="boardContents" class="col-sm-2 col-form-label">게시판
							내용 <span class="identify">*</span>
						</label>
						<div class="col-sm-10">
							<textarea id="boardContents" name="boardContents"
								class="form-control"></textarea>
							<script type="text/javascript">
								CKEDITOR.replace('boardContents', {
									height : 500
								});
							</script>
						</div>
					</div>
					<div class="modal-footer">
						<div style="text-align-last: center;">
							<input class="btn form-bg-primary" type="submit" value="수정">
							<input class="btn form-bg-submit" type="button" value="취소"
								data-dismiss="modal">
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
	
}); // end ready...
$(function(){
	
    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
    $('#board_form').validate({
    	/* 
			required 필수 항목으로 설정한다. (true, false)
			remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
		*/
		rules: {
            // [제목] 필수
            boardTitle: 'required',
            boardContents: 'required',
            boardType: 'required',
        },
        messages: {
        	boardTitle: '게시판 제목을 입력해주세요.',
        	boardContents: '게시판 내용을 입력해주세요.',
        	boardType : '게시판 유형을 선택해주세요.',
        }
    });
    
    $("#board_form").submit(function(e) {
		e.preventDefault();
		
		var form = $(this)
        var url = form.attr('action');
        
        CKupdate();
        var formData = form.serialize();
        
        $.ajax({
			   type: "POST",
	           url: url,
	           data: formData,
	           beforeSend: function() {
	        	   return $('#board_form').valid();
               },
               success: function() {
            	   swal('알림', '게시판이 수정되었습니다.', 'success').then(function(result) {
            		   location.reload();
                   });
               }
        });
        
    });
});

//AJAX 로 폼의 데이터를 전송할 때 CKEDITOR로 변환 된 textarea값을 다시 변경해줘야 데이터가 전달된다.
function CKupdate(){
    for ( instance in CKEDITOR.instances )
        CKEDITOR.instances[instance].updateElement();
}
</script>