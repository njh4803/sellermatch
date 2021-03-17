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
#recommendModal .modal-content{
	border-radius: 25px;	
}   
#recommendModal .modal-content .modal-body {
    position: relative;
    padding: 25px;
    border-radius: 20px;
	border: solid 1px #707070;
	background-color: #ffffff;    
}
.recommend {
	display: inline-block;
	width: 140px;
	height: 30px;
	margin: 0 10px 25px 0;
	padding: 7px 0;
	border-radius: 4px;
	box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
	background-image: linear-gradient(102deg, #ff8000, #ff540f);
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.07;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
}
.recommend-btn {
	width: 100px;
	height: 30px;
	margin-top: 10px;
	border-radius: 4px;
	box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.16);
	background-image: linear-gradient(107deg, #ff8000, #ff540f 100%);
	float: right;
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
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
    width: 440px;
    margin: 10px 0 0 15px;
    padding: 12px 0 13px 15px;
    border: solid 1px #cccccc;
}
.radioBox {
 
}
.recommendText{
	display: inline-block;
	width: 290px;
	font-size: 15px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	text-align: left;
	color: #000000;
	margin-left: 1px;
}
</style>

  <!-- Modal -->
<div class="modal fade" id="recommendModal" role="dialog">
	<div class="modal-dialog modal-xl" style="width: 530px;">
		<div class="modal-content">
			<div class="modal-body">
               	<div class="recommendBox clearfix">
               		<div class="recommend">
               			프로젝트 지원하기
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