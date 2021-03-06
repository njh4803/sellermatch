<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/boardWrite.css" rel="stylesheet" type="text/css">
 <!-- ckeditor js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>

<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3 clearfix">
    		<div class="clearfix">
	    		<div class="use-top-left">
	    			<div class="use-title">커뮤니티</div>
		    		<div class="use-text">이용자들과 자유롭게 소통할 수 있는 공간입니다.</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="use-hr">
	    	<form action="${pageContext.request.contextPath}/board/edit" id="board-form" method="POST">
	    		<input type="hidden" id="boardId" name="boardId" value="${boardDto.boardId}">
	    		<input type="hidden" id="boardWriter" name="boardWriter" value="${boardDto.boardWriter}">
				<input type="hidden" id="boardType" name="boardType" value="${boardDto.boardType}">
				<div>
					<input class="board-title" name="boardTitle" type="text" placeholder="제목" value="${boardDto.boardTitle}" placeholder="제목을 입력해 주세요">
				</div>
				<div>
					<textarea id="boardContents" name="boardContents" class="inputForm width-100" style="height: 150px;">${boardDto.boardContents}</textarea>
					<script type="text/javascript">
						CKEDITOR.replace('boardContents', {
							height : 200,
							enterMode:'2',
						    shiftEnterMode:'3',
						    extraPlugins : 'confighelper'
						});
					</script>			
				</div>
				<div class="btnBox">
					<button type="button" class="cancelBtn">취소하기</button>
					<button class="writeBtn">수정하기</button>
				</div>
			</form>
	    </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", ".cancelBtn", function(){
		var boardId = $("#boardId").val();
		window.location = ROOT_URL+"/board/detail?boardId="+boardId;
	});
	
	$(document).on("click", ".writeBtn", function(e){
		e.preventDefault();
		var boardContents = $('#boardContents').text();
		var boardTitle = $('.board-title').val();

		if (boardTitle.trim() == '') {
			swal('알림', '제목을 입력해 주세요', 'warning');
			return false;
		}
		
		if (boardContents.trim() == '') {
    		swal('알림', '상세 설명을 입력해 주세요', 'warning');
			CKEDITOR.instances.boardContents.focus();
			return false;
		} 
		
		$('#board-form').submit();
	});
		
	// CKEDITOR 값 저장
	CKEDITOR.instances.boardContents.on('blur keypress', function(e) {
		var boardContents = CKEDITOR.instances.boardContents.getData();
		$('#boardContents').text(boardContents);
		console.log(boardContents);
		console.log($('#boardContents').text(boardContents));
	});	
	
});



/* CKEDITOR */
//AJAX 로 폼의 데이터를 전송할 때 CKEDITOR로 변환 된 textarea값을 다시 변경해줘야 데이터가 전달된다.
function CKupdate(){
for ( instance in CKEDITOR.instances )
    CKEDITOR.instances[instance].updateElement();
}

//리사이징 제한
CKEDITOR.config.resize_enabled = false;
</script>
