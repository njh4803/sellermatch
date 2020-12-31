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
.replyBox {
	padding-left: 15px;
}
</style>

  <!-- Modal -->
  <div class="modal fade" id="replyModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
			<form action="${pageContext.request.contextPath}/admin/reply" id="reply_form" name="reply_form" enctype="multipart/form-data">
															<div class="form-group row">
                                                                <label for="replyBoardId" class="col-sm-2 col-form-label">게시판 번호</label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="replyBoardId" type="text" name="replyBoardId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="replyBoardTitle" class="col-sm-2 col-form-label">게시판 제목</label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="replyBoardTitle" type="text" name="replyBoardTitle" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="replyBoardWriter" class="col-sm-2 col-form-label">게시판 작성자</label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="replyBoardWriter" type="text" name="replyBoardWriter" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <!-- <div class="row">
                                                            	<label class="col-sm-2 col-form-label">댓글 수</label>
                                                            </div> -->
                                                            <!-- <div class="replyBox">
                                                            	<hr>
                                                            	<div class="row">
                                                            		<span class="">닉네임</span>
                                                            		<span class="">2020-12-30</span>
                                                            	</div>
                                                            	<div class="row">
                                                            		<span>댓글 내용</span>
                                                            	</div>
                                                            </div> -->
                                                                </form>
                                                                <!-- form end -->													
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">
	
$(document).ready(function() {
	
}); // end ready...
$(function(){
	
});
</script>