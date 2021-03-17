<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/usageFee.css" rel="stylesheet" type="text/css">

<div class="partner_bnr">
    <div class="partner_wrap2">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="use-top-left">
	    			<div class="use-title">1:1 문의하기</div>
		    		<div class="use-text">궁금한 내용에 대한 답변을 메일로 받아보세요.</div>
	    		</div>
		    	<div class="use-top-right">
		    		<img class="use-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="use-hr">
			<form action="${pageContext.request.contextPath}/OneToOne" id="OneToOne-form" name="OneToOne-form" method="post" enctype="multipart/form-data">
				<div id="OneToOne">
				</div>
				<div class="qa-container clearfix">
					<div class="qa-row">
						<div class="qa-rowBox">
							<div class="qa-text">문의제목</div>
						</div>
						<div class="qa-contents">
							<input type="text" name="boardTitle" class="form-control" id="boardTitle"/>
						</div>
					</div>
					<div class="qa-row">
						<div class="qa-rowBox">
							<div class="qa-text">문의종류</div>
						</div>
						<div class="qa-contents">
							<select id="boardQaType" name="boardQaType" class="form-control">
								<option value="일반문의">일반문의</option>
								<option value="주문결제문의">주문결제문의</option>
								<option value="환불문의">환불문의</option>
								<option value="반품문의">반품문의</option>
								<option value="기타문의">기타문의</option>
							</select>
						</div>
					</div>
					<div class="qa-row">
						<div class="qa-rowBox">
							<div class="qa-text">답변수령 이메일</div>
						</div>
						<div class="qa-contents">
							<input type="text" name="boardEmail1" class="form-control2" id="boardEmail1"/>
							<span>@</span>
							<input type="text" name="boardEmail2" class="form-control2" id="boardEmail2"/>
							<select id="boardEmail3" name="boardEmail3" class="form-control">
								<option value="">직접입력</option>
								<option value="naver.com">naver.com</option>
							</select>
						</div>
					</div>
					<div class="qa-row2">
						<div class="qa-rowBox2">
							<div class="qa-text">문의 내용</div>
						</div>
						<div class="qa-contents">
							<textarea name="boardContents" id="boardContents" class="form-control"></textarea>
						</div>
					</div>
					<div class="qa-row">
						<div class="qa-rowBox">
							<div class="qa-text">첨부파일</div> 
						</div>
						<div class="qa-contents">
	    					<div style="display: flex;">
	                        	<input id = "file_route" type="text" class="form-control" readonly="readonly"/>
	                        	<label class="fileLable">
	                             	파일 선택
	                            	<input id="image" name="boardFile" value="" class="jFiler-input-button" type="file" style="display: none;" onchange="javascript:document.getElementById('file_route').value=this.value"/>
	                            </label>
	                        </div>
						</div>
					</div>
					<div>
						<input class="qabtn" type="submit" value="문의하기">
					</div>
				</div>
			</form>	    	
	    </div>
   </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", "#boardEmail3", function(e){
		var boardEmail3 = $('#boardEmail3').val();
		$('#boardEmail2').val(boardEmail3);
	});
	
	// 유효성 검사
	$(document).on("focus", "#OneToOne-form", function(e){
	    $('#OneToOne-form').validate({
			
	        rules: {
	            boardTitle: 'required',
	            boardContents: 'required',
	            
	        },
	        messages: {
	            boardTitle: '문의제목을 입력해 주세요.',
	            boardContents: '문의내용을 입력해주세요',
	        }
	    });
	});
	$(document).on("submit", "#OneToOne-form", function(e){
		e.preventDefault();
		
	    $('#OneToOne-form').ajaxForm({
	        // submit 전에 호출된다.
	        beforeSubmit: function(arr, form, options) {
	            return $(form).valid();
	        },
	        success: function(json) {
				swal('알림', '문의가 접수되었습니다.', 'success').then(function(result) {    					
		            if (result.value) {
		            	window.location = ROOT_URL+ "/usageFee"
		            }
		        });
	        },
	    });
	});
});
</script>