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
  <div class="modal fade" id="boardAddModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">게시판 등록</h4>
        </div>
        <div class="modal-body">
			<form action="${pageContext.request.contextPath}/admin/board" id="boardAdd_form" name="boardAdd_form" enctype="multipart/form-data">
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">게시판 유형
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<select id="boardType2" name="boardType" class="form-control">
						                                                <option value="1">공지사항</option>
						                                                <option value="2">자주하는 질문</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="boardTitle" class="col-sm-2 col-form-label">게시판 제목
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="boardTitle2" type="text" name="boardTitle" class="form-control">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="boardContents" class="col-sm-2 col-form-label">게시판 내용
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<textarea id="addBoardContents" name="boardContents" class="form-control"></textarea>
																	<script type="text/javascript">
																	 CKEDITOR.replace('addBoardContents'
																	                , {height: 500                                                  
																	                 });
																	</script>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
																<div style="text-align-last: center;">
																	<input class="btn form-bg-primary" type="submit" value="등록">
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
	
}); // end ready...
$(function(){
	
    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
    $('#boardAdd_form').validate({
    	/* 
			required 필수 항목으로 설정한다. (true, false)
			remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
		*/
		
        rules: {
            // [제목] 필수
            boardTitle: 'required',
            boardContents: 'required',
        },
        messages: {
        	boardTitle: '게시판 제목을 입력해주세요.',
        	boardContents: '게시판 내용을 입력해주세요.',
        }
    });
    
    $("#boardAdd_form").submit(function(e) {
		e.preventDefault();
		
		var form = $(this);
        var url = form.attr('action');
		
		var boardContents = CKEDITOR.instances.addBoardContents.getData();
		var comunityTitle2 = $("#boardTitle2").val();
		var type = $("#boardType2").val();
		
		console.log("boardContents : " + boardContents);
		console.log("comunityTitle2 : " + comunityTitle2);
		console.log("type : " + type);
		
		$.ajax({
			type: "POST",
			url: url,
			data: {boardContents : boardContents, boardTitle : comunityTitle2, boardType : type},
			dataType: "json",
			success: function(data){
					console.log(data);
					swal("알림", "게시판이 등록되었습니다.", "success");
					
					window.setTimeout("pageReload()", 2000);
			}

		});
		
		/* var form = $(this);
        var url = form.attr('action');
		
        var boardContents = CKEDITOR.instances.addBoardContents.getData();
      	
      	form.push({boardContents : boardContents});
      	
      	var form = $(this);
      	
      	console.log("aaa : " + form.serialize());
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#boardAdd_form').valid();
               },
               success: function() {
            	   swal('알림', '게시판이 등록되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/admin/boardList';
                   });
               }
        }); */
        
    });
   
});

function pageReload() {
	location.reload();
}
</script>