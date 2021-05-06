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
	    	<form action="${pageContext.request.contextPath}/board/write" id="board-form" method="POST">
				<div>
					<input class="board-title" name="boardTitle" type="text" placeholder="제목을 입력해 주세요">
				</div>
				<div>
					<textarea id="boardContents" name="boardContents" class="inputForm width-100 cj" style="height: 150px;"></textarea>
				</div>
				<div class="btnBox">
					<button type="button" class="cancelBtn">취소하기</button>
					<button type="button" class="writeBtn">작성하기</button>
				</div>
			</form>
	    </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	CKEDITOR.replace('boardContents', {
		height : 200,
		enterMode:'2',
	    shiftEnterMode:'3',
	    extraPlugins : 'confighelper'
	});
	$(document).on("click", ".cancelBtn", function(){
		window.location = ROOT_URL+"/board?boardType=3";
	});

	/** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
	$('#board-form').validate({
		/* 
			required 필수 항목으로 설정한다. (true, false)
			remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
		*/
	    rules: {
	    	boardTitle: 'required',
	    	boardContents: 'required',
	    },
	    messages: {
	    	boardTitle: '제목을 입력해 주세요.',
	    	boardContents: '내용을 입력해 주세요.',
	    }
	});	
	
	// CKEDITOR 값 저장
	CKEDITOR.instances.boardContents.on('blur keypress', function(e) {
		var boardContents = CKEDITOR.instances.boardContents.getData();
		$('#boardContents').text(boardContents);
	});
	
	$(document).on("click", ".writeBtn", function(e){
		e.preventDefault();

	  	$.ajax({
			type: "POST",
	        url: ROOT_URL+"/board/write",
	        data: $('#board-form').serialize(),
	        beforeSend: function() {
	    		var boardContents = CKEDITOR.instances.boardContents.getData();
	    		$('#boardContents').text(boardContents);
	    		
	    		CKupdate();
	    		
	        	if ($('#boardContents').text() == '' || $('#boardContents').text().trim().length < 1) {
	        		swal('알림', '상세 설명을 입력해 주세요', 'warning');
					CKEDITOR.instances.boardContents.focus();
					return false;
				}
	        	
	    		return $('#board-form').valid();
            },success: function(json) {
            	swal('알림', '게시물이 등록되었습니다.', 'success').then(function(result) {
                    window.location = ROOT_URL + '/board/detail?boardId='+json.boardId;
                });
            },
	  	});
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
