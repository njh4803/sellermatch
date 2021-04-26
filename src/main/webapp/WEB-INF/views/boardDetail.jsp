<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/boardDetail.css" rel="stylesheet" type="text/css">

<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="use-top-left">
	    			<div class="use-title">
	    				커뮤니티
	    			</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>
    		</div>
	    	<hr class="use-hr">
	    </div>
	    <div class="notice-header">
        	<div class="detailContentsTitle">
        		<div class="detailContentsTitle1">
        			<span id="boardTitle">${output.boardTitle}</span>
	        	</div>
	        	<div class="detailContentsTitleRegDate">
	        		<div class="infoBox">
	        			<span class="regdateText" id="boardWriter" data-value="${output.boardWriter}">작성자</span>
	        			<span class="regdateDate">${output.boardWriterNick}</span>
	        		</div>
	        		<div class="infoBox">
	        			<span class="regdateText">등록일</span>
	        			<span class="regdateDate">${output.boardRegDate}</span>
	        		</div>
	        	</div>
        	</div>
        </div>
        <div class="contents-box">
        	<div class="contents" id="boardContents">${output.boardContents}</div>
        	<c:if test="${output.boardWriter == member.memId}">
	        	<div class="btnBox">
	        		<button id="editBtn">수정하기</button>
	        		<button id="delBtn">삭제하기</button>
	        	</div>
        	</c:if>
        </div>
        <div>
        	<form action="${pageContext.request.contextPath}/project/reply" method="post" id="question-form" class="text-right">
				<input class="board-comment" id="replyContents" name="replyContents" type="text" placeholder="댓글입력">
				<input type="hidden" id="boardId" name="replyBoardId" value="${output.boardId}">
	    		<input type="hidden" id="replyParentMemId" name="replyParentMemId">
	    		<input type="hidden" id="replyParent" name="replyParent" value="0">
	    		<input type="hidden" id="replySecret" name="replySecret" value="N">
				<input type="button" class="commentBtn" value="등록"/>
			</form>
		</div>
		<c:if test="${replyDto != null}">
			<div class="commentBox">
				<c:forEach var="replyDto" items="${replyDto}" varStatus="status">
					<div class="reviewBox clearfix">
						<div class="reviewBox2">
							<div class="reviewNick">${replyDto.replyWriter}</div>
							<div class="reviewDate">${replyDto.replyRegDate}</div>						
						</div>
						<div class="reviewContents">${replyDto.replyContents}</div>
					</div>	
				</c:forEach>	
			</div>
		</c:if>
        <div class="detailContentsButtonBox">
        	<div class="detailContentsButton" OnClick="location.href ='${pageContext.request.contextPath}/board?boardType=3'" style="cursor:pointer;">
			    <a>목록으로</a>
			</div>
        </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function() {
	
	$(document).on("click", "#editBtn", function(){
		var boardId = $('#boardId').val();
		var boardTitle= $('#boardTitle').text();
		var boardContents= $('#boardContents').text();
		var boardWriter= $('#boardWriter').attr('data-value');
		window.location.href = ROOT_URL + 
		"/board/edit?boardId="+boardId + 
		"&boardContents="+boardContents + 
		"&boardTitle="+boardTitle +
		"&boardWriter="+boardWriter;
	});
	
	$(document).on("click", "#delBtn", function(){
		swal({
            title: '알림',
            text: '정말 삭제 하시겠습니까?',
           	type: "question",
            icon: 'success',
            showCancelButton: true,
        }).then(function(result) {
        	if (result.value) {
	       		$.ajax({
        			type: "POST",
        			url: ROOT_URL+"/board/delete",
        			data: {
        				boardId: $('#boardId').val()
        			},
        			success: function(json){
        				window.location.href = ROOT_URL+"/board?boardType=3";
        			}
        		});
			} else {
				return;
			}
        });		
	});
	
	$(document).on("click", ".commentBtn", function(){
		var login_id = $('#projectInsert').data('member');
		var boardId = $("#boardId").val();
		var secretChk = $("input[name=secret]:checkbox").attr('checked');
		var replyContents =  $('#replyContents').val();
		var replyParent = $('#replyParent').val();
		var replyParentMemId = $('#replyParentMemId').val();
		$('input[name=replySecret]').attr('value', secretChk);
		
		if (login_id == '') {
			swal({
	            title: '알림',
	            text: '로그인 후 이용가능합니다.',
	           	type: 'warning',
	        });
			return;
		}
		
		if (replyContents.trim() == '') {
			swal({
	            title: '알림',
	            text: '내용을 입력하세요.',
	           	type: 'warning',
	        });
			return;			
		}
		
		var boardId = $("#boardId").val();
		var secretChk = $("input[name=secret]:checkbox").attr('checked');
		$('input[name=replySecret]').attr('value', secretChk);
		
		var data = {
	        		replyBoardId: $("#boardId").val(),
	        		replySecret: $('#replySecret').val(),
					/* replyPw: $('#replyPw').val(), */
					replyContents: $('#replyContents').val(),
					replyParent: $('#replyParent').val(),
					replyParentMemId :$('#replyParentMemId').val()
	    		};
		
	  	$.ajax({
				type: "POST",
		        url: ROOT_URL+"/project/reply",
		        data: data,
	        success: function() {
	        	window.location.href = ROOT_URL+"/board/detail?boardId="+boardId;
	       }
	  	});		
	});
});
</script>
