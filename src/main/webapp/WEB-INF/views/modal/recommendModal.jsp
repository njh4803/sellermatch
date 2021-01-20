<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.modal-header {
	display: block;
}   
.modal-content .modal-body {
    position: relative;
    padding: 20px;
}
.recommend {
	width: 100px;
	background-color: #00B0F0;
	border-radius: 10px;
	color: white;
	padding: 10px;
	text-align: center;
}
.recommend-btn {
	width: 100px;
	background-color: #7F7F7F;
	border-radius: 5px;
	color: white;
	padding: 5px;
	float: right;
	margin-top: 20px;
}
.recommendBox .recommend p{
	margin: 0;
}
.projectTitle {
	background-color: white;
    border: 1px solid #aaa;
    display: inline-block;
    width: 90%;
    height: 40px;
    padding: 6px;
    margin-left: 14px;
    font-size: 22px;
    font-weight: bold;
    text-align: center;
}
.radioBox {
    margin-top: 20px;
    margin-left: 20px;
}
</style>

  <!-- Modal -->
<div class="modal fade" id="recommendModal" role="dialog">
	<div class="modal-dialog modal-xl" style="width: 400px;">
		<div class="modal-content">
			<div class="modal-body">
               	<div class="recommendBox clearfix">
               		<div class="recommend">
               			<p>프로젝트</p>
               			<p>지원요청</p>
               		</div>
               		<div>
               			<button class="recommend-btn">지원요청하기</button>
               		</div>
               	</div>          
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	
$(document).ready(function() {
	$(document).on("click", ".recommend-btn", function(){
		var recommendProj = $("input[name=recommendProj]:checked").val();
		if (recommendProj == undefined) {
			swal('알림', '프로젝트를 선택해주세요.', 'warning');
			return;
		}
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/apply/project",
		    data: {
		    	applyProjId: recommendProj,
		    	applyMemId: $("#profileMemId").val(),
		    	applyType:2
		    },
	        success: function(json) {
	      		if (json.result == 1) {
	      			swal('알림', '이미 지원요청한 프로젝트입니다.', 'success');
	      			return;
				}
				swal({
	  		          title: '확인',
	  		          text: '지원요청 하시겠습니까?', 
	  		          type: "question",
	  		          showCancelButton: true
	  		    }).then(function(result) {			
	  		        if (result.value) {
	  		        	var data = {
	  		        		applyProjId: recommendProj,
	  		        		applyMemId: $("#profileMemId").val(),
	  		        		applyProjState:3,
	  		        		applyType:2
	  		        	};
	  		        	  
	  		        	$.ajax({
	  			   			type: "POST",
	  			   	        url: ROOT_URL+"/recommend/project",
	  			   	        data: data,
	  		                success: function() {
	  		                	swal('알림', '지원요청 완료.', 'success');
	  		                	window.location.href = ROOT_URL+"/seller/detail?profileMemId="+$("#profileMemId").val();
	  		                }
	  			      	});
	  		      	}
				});	
			}
		});
	});
});
</script>