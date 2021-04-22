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
					<input class="board-title" name="boardTitle" type="text" placeholder="제목">
				</div>
				<div>
					<textarea id="boardContents" name="boardContents" class="inputForm width-100" style="height: 150px;"></textarea>
					<script type="text/javascript">
						CKEDITOR.replace('boardContents', {
							height : 200,
							enterMode:'2',
						    shiftEnterMode:'3'
						});
					</script>			
				</div>
				<div class="btnBox">
					<button class="cancelBtn">취소하기</button>
					<button type="submit" class="writeBtn">작성하기</button>
				</div>
			</form>
	    </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", ".cancelBtn", function(){
		window.location = ROOT_URL+"/board?boardType=3";
	});
	
	// CKEDITOR 값 저장
	CKEDITOR.instances.boardContents.on('blur', function(e) {
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
