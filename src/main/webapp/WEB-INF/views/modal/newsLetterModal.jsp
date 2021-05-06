<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>


#newsLetterModal .modal-dialog .modal-content {
border-radius: 11px;
}
#newsLetterModal .modal-dialog .modal-content .modal-body {
  width: 600px;
  height: 600px;
  border-radius: 10px;
  box-shadow: 0 5px 6px 0 rgba(0, 0, 0, 0.05);
  border: solid 1px #707070;
  background-color: #ffffff;
}

#newsLetterModal .news-title{
  width: 415px;
  height: 38px;
  margin: 0 56.9px 30px 43px;
  font-size: 35px;
  font-weight: 800;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ff540f;
}

#newsLetterModal .news-sub-title{
  width: 422px;
  height: 47px;
  margin: 30px 52.9px 30px 39px;
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #484848;
}
#newsLetterModal .news-hr{
  width: 500px;
  height: 0;
  margin: 30px 13.9px 0 0;
  border: solid 1px #cccccc;
}
#newsLetterModal .news-info-contents{
  width: 392px;
  height: 100px;
  margin: 30px 67.9px 30px 55px;
  font-size: 10px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #858585;
}

#newsLetterModal .news-email-title {
 width: 94px;
  height: 22px;
  margin: 30px 418.9px 10px 1px;
  font-size: 20px;
  font-weight: bold !important;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #484848;
}

#newsLetterModal .news-blur {
  width: 500px;
  height: 59px;
}
#newsLetterModal .news-email-input{
  width: 500px;
  height: 59px;
  margin: 10px 13.9px 15px 0;
  padding: 14px 20px;
  border-radius: 10px;
  box-shadow: 0 5px 6px 0 rgba(0, 0, 0, 0.05);
  border: solid 1px #c9d1ff;
  background-color: #ffffff;
}

#newsLetterModal #email1{
  width: 165px;
  height: 31px;
  margin: 0 6px 0 0;
  padding: 8px 15px;
  border-radius: 2px;
  border: solid 1px #cccccc;
  background-color: #ffffff;
}

#newsLetterModal #email2{
  width: 160px;
  height: 31px;
  margin: 0 6px;
  padding: 8px 15px;
  border-radius: 2px;
  border: solid 1px #cccccc;
  background-color: #ffffff;
}

#newsLetterModal #email_select{
  width: 85px;
  height: 31px;
  margin: 0 0 0 6px;
  border-radius: 2px;
  border: solid 1px #cccccc;
  background-color: #ffffff;
}
#newsLetterModal .newLetterSubmit{
  width: 500px;
  height: 58px;
  margin: 7px 13.9px 0 0;
  padding: 20px 0;
  border-radius: 5px;
  box-shadow: 3px 5px 10px 0 rgba(0, 0, 0, 0.16);
  background-image: linear-gradient(97deg, #ff8000, #ff540f 100%);
    font-size: 17px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
}

</style>

  <!-- Modal -->
<div class="modal fade" id="newsLetterModal" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
			<div class="topBox">
				<div class="news-title">셀러매치 뉴스레터 구독신청</div>
				<div class="news-sub-title">새로운 판매자, 새로운 공급 물품 등 유익한 정보를<br>뉴스레터로 받아 보실 수 있습니다.</div>
				<hr class="news-hr">
				<div class="news-info-contents">
					개인정보 수집 · 이용 목적
					<br>셀러매치는 뉴스레터 발송을 위해 고객 여러분의 개인정보를 아래와 같이 수집 및 이용합니다.
					<br>
					<br>개인정보 수집 및 이용 목적 : 셀러매치 소식정보 뉴스레터 발송
					<br>수집하는 개인정보 항목 : 이메일 주소
					<br>개인정보 보유 및 이용기간 : 뉴스레터 발송 서비스 종료 시까지
					<br>(단, 관련 법령에 별도 규정이 있을 경우, 해당 법령에 따라 보유)
				</div>
				<hr class="news-hr">
			</div>
				<div class="news-email-box">
					<div class="news-email-title">	
						<p>이메일주소</p>
	               	</div>
	               	<div class= "news-blur">
	               		<form action="${pageContext.request.contextPath}/newsLetter" id="newsLetter_form" name="newsLetter_form" method="POST">
		               	<div class="news-email-input">
		               		<input type="text" name="email1" id="email1" class="frm_input"> @
						    <input type="text" name="email2" id="email2" class="frm_input">
						    <select name="emaildomain" id="email_select">
						        <option value="">직접입력</option>
						        <option value="naver.com">네이버</option>
						        <option value="gmail.com">구글</option>
						        <option value="daum.net">다음</option>
						        <option value="hanmail.net">한메일</option>
						        <option value="nate.com">네이트</option>
						    </select>
		               	</div>
		               	<div class="new-email-input">
		               		<div><button class="newLetterSubmit" href="javascript:void(0);">신청하기</button></div>
		               	</div>
		               	</form>
               		</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(function() {
    $('#email_select').change(function() {
        if ($('#email2').val() == 'directly') {
            $('#email2').attr("disabled", false);
            $('#email2').val("");
            $('#email2').focus();
        } else {
            $('#email2').val($('#email_select').val());
        }
    })
});

$(document).ready(function(){
	$(document).on("click", ".newLetterSubmit", function(e){
		e.preventDefault();
		
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
    	if(email1 == null ||email1 == '' ||email2 == null ||email2 == ''){
    		swal('알림', '이메일을 입력해 주세요', 'warning');
    		return;
    	}
    	$('.newLetterSubmit').attr('disabled', false);
		
	  	$.ajax({
			type: "POST",
	        url: ROOT_URL+"/newsLetter",
	        data: $('#newsLetter_form').serialize()
	        ,success: function(json) {
	        	$('.newLetterSubmit').attr('disabled', true);
	        	swal('알림', '구독 신청이 완료되었습니다.', 'success').then(function(result) {
	                window.location = ROOT_URL + '/'; 
	            });
	        },
	  	});
	});
});

</script>