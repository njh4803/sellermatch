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
#recommendModal .modal-content .modal-body {
    position: relative;
    padding: 50px 40px 40px 40px;
}
.recommend {
	display: inline-block;
	width: 126px;
    height: 30px;
	padding: 4px 0 5px;
	border-radius: 10px;
	background-image: linear-gradient(to left, #3b1374 , #d10c56 );
	text-align: center;
	margin-bottom: 15px;
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
}
.recommend-btn {
	width: 100px;
	height: 30px;
	margin: 15px 0 0 239px;
	padding: 4.1px 21.8px 4.9px 22.2px;
	border-radius: 4px;
	background-image: linear-gradient(to left, #3b1374, #d10c56);
	float: right;
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;	
}
.recommendBox .recommend p{
	margin: 0;
}
.projectTitle {
    display: inline-block;
    font-size: 15px;
    font-weight: bold;
    text-align: left;
    width: 446px;
    margin: 15px 0 0 15px;
    padding: 12px 0 13px 15px;
    border: solid 1px #cccccc;
}
.radioBox {
 
}
.recommendText{
	display: inline-block;
    width: 323px;
	height: 24px;
	font-size: 16px;
	font-weight: 400;
	font-stretch: normal;
	font-style: normal;
	letter-spacing: normal;
	text-align: left;
	color: #000000;
	margin-left: 11px;
}
</style>

  <!-- Modal -->
<div class="modal fade" id="recommendModal" role="dialog">
	<div class="modal-dialog modal-xl" style="width: 560px;">
		<div class="modal-content">
			<div class="modal-body">
               	<div class="recommendBox clearfix">
               		<div class="recommend">
               			프로젝트 지원요청
               		</div>
               		<div>
               			<button class="recommend-btn">지원하기</button>
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