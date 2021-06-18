<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="modal/newsLetterModal.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/share.css" rel="stylesheet" type="text/css">
<style>
</style>
<div class="bnr">
	<div class="main-0000" style="background-image: url('${pageContext.request.contextPath}/assets/img/main0000.png');">
	 	<div class="main-000">
  		 	<div class="popup" id="popup" style="background-color:#000000;">
				<img alt="" src="${pageContext.request.contextPath}/assets/img/popup_1.png"  usemap="#maptag">
				<map name="maptag">
					<area shape="rect" coords="130,375,300,410" href="https://forms.gle/FJMWitTgJyvSELneA" title="설문조사" target="_blank">
				</map>
				<div class="popup-btnBox" style="background-color:#000000;">
					<button id="today"  style="color:#ffffff; margin-left: 10px;">오늘하루 보지않기</button>
					<button class="popup-close"  style="color:#ffffff; margin-right: 10px;">닫기</button>
				</div>
			</div>
			<div class="popup2" id="popup2" style="background-color:#000000;">
				<img alt="" src="${pageContext.request.contextPath}/assets/img/P-21623934953919.png"  usemap="#maptag2">
				<map name="maptag2">
					<area shape="rect" coords="170,445,330,485" href="https://sellermatch.co.kr/project/detail?projId=P-21623934953919" title="이달의판매자">
				</map>
				<div class="popup-btnBox" style="background-color:#000000;">
					<button id="today2"  style="color:#ffffff; margin-left: 10px;">오늘하루 보지않기</button>
					<button class="popup-close2"  style="color:#ffffff; margin-right: 10px;">닫기</button>
				</div>
			</div>
<%-- 			<div class="popup3" id="popup3" style="background-color:#000000;">
				<img alt="" src="${pageContext.request.contextPath}/assets/img/popup_1.png"  usemap="#maptag">
				<map name="maptag">
					<area shape="rect" coords="130,375,300,410" href="https://forms.gle/FJMWitTgJyvSELneA" title="이달의회원" target="_blank">
				</map>
				<div class="popup-btnBox" style="background-color:#000000;">
					<button id="today3"  style="color:#ffffff; margin-left: 10px;">오늘하루 보지않기</button>
					<button class="popup-close3"  style="color:#ffffff; margin-right: 10px;">닫기</button>
				</div>
			</div> --%>
	 		<div style="display: inline-block;">
	 			<div class="main-001">
		   	        셀러매치는<br>
		        <span>상품공급자</span>와 <span>판매대행자</span><br>
		        <span>직거래 사이트</span>입니다.
		    	</div>
		    	<div class="main-002">
			   	        고마진, 독점, 위탁배송, OEM, 도매, 수입상품 등 공급자와<br>
				        오픈마켓, 종합몰, SNS, 공동구매, 폐쇄몰, 수출 등 판매자를 <br>
				        찾고 직거래하세요.<br>
	    		</div>
         		<button class="findBtn projectInsert" href="javascript:void(0);">매칭 무료등록</button>
    			<button class="shareBtn" id="shareBtn">친구들과 공유하기</button>
    			<button class="newsLetterBtn" id="newsLetterBtn">뉴스레터 신청하기</button>
			</div>
	 		<div class="main-imgBox">
	 			<div class="main-img1" style="background-image: url('${pageContext.request.contextPath}/assets/img/main_img1.png');">
	 			</div>
			</div>
	    </div>
	</div>
    <div class="bnr">
    	<div class="main-0002 clearfix">
    		<div class="main-003">
    			'매칭 무료등록'을 1분만에 해보세요.<br>
				쉽고 빠르게 판매자/공급자와 직거래 할 수 있어요.<br>
    		</div>
    	</div>
    	<div class="main-0003 clearfix">
    	    <div class="main-0001 clearfix">
	   			<div class="main-004">
	    			<div class="main-img2" style="background-image: url('${pageContext.request.contextPath}/assets/img/main_img2.png');"></div>
	    		</div>
	    		<div class="main-007">
			   		<div class="mainBox mainBox1 hvr-grow-shadow">
		   				<span class="boxSpan">01</span>
		   				<div class="boxText">
		   					<div class="boxText2">
			    				<span>팔기 괜찮은 물건 찾기 힘드시죠?</span><br>
								<br>
								찾고있는 상품을 거래처 찾기에 올려주세요.<br>
								저희가 찾아서 직거래하게 해 드릴게요.<br>	   					
		   					</div>
		   				</div>
		   			</div>
		   			<div class="mainBox mainBox2 hvr-grow-shadow">
		   				<span class="boxSpan">02</span>
		   				<div class="boxText">
		   					<div class="boxText2">
			    				<span>공급 제안이 꾸준히 오면 좋겠죠?</span><br>
								<br>
								약 5분, 판매자 프로필 1회만 등록하세요!<br>
								매력적인 공급 제안서가 계속 올거에요.<br>
							</div>
		   				</div>
		   			</div>
		   			<div class="mainBox mainBox3 hvr-grow-shadow">
		   				<span class="boxSpan">03</span>
		   				<div class="boxText">
		   					<div class="boxText2">
			    				<span>검증된 판매자 찾기 어려우시죠?</span><br>
								<br>
								전국의 잘 파는, 분야별 판매자를 모아놨어요.<br>
								판매자를 검색하고 직거래 할 수 있어요.<br>
							</div>
		   				</div>
		   			</div>
		   			<div class="mainBox mainBox4 hvr-grow-shadow">
		   				<span class="boxSpan">04</span>
		   				<div class="boxText">
		   					<div class="boxText2">
		    					<span>공급제안서 보내기 귀찮으시죠?</span><br>
								<br>	
								공급상품 정보를 1회만 등록하세요.<br>
								매번 반복해서 제안서를 보내지 않아도 됩니다.<br>
							</div>
		   				</div>
		   			</div>  
	    		</div>  	
    		</div>
   		</div>
   		<div class="main-0004">
 			<div class="textBox1">
 				3~10% 더 저렴하게 공급받아<br>
				더 많은 이익을 남길 수 있어요.
			</div>
			<img class="table-img" src="${pageContext.request.contextPath}/assets/img/table.png">
   			<div class="tableBox">
   				<div class="table-title-row">
   					<div class="title-col1">특징</div>
   					<div class="title-col2">셀러매치</div>
   					<div class="title-col3">도매사이트</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						첫 이용까지 소요시간
  					</div>
   					<div class="table-col2">약 5분</div>
   					<div class="table-col3">
   						약 1일 내외
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
  						사업자 없이 이용 가능한가요?		
  					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						대다수 사업자만 이용가능
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						상세페이지 없어도 이용 가능한가요?		
  					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						구매비용 충전 없이 이용 가능한가요?		
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						대다수 구매할 금액 충전 필요
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						중개 수수료 없나요?
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						공급가격에 3~10% 수수료 포함
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						직거래 가능한가요?
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						조건별 거래처 찾기	
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						일부 조건 찾기 기능
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						검증된 거래처 찾기	
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">	
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						거래처 추천 기능
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						판매자 검색 / 열람	
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   				<div class="table-row">
   					<div class="table-col1">
   						해외 거래처 찾기
   					</div>
   					<div class="table-col2">
   						<img alt="" src="${pageContext.request.contextPath}/assets/img/check.png">
   					</div>
   					<div class="table-col3">
   						X
   					</div>
   				</div>
   			</div>
   		</div>
   		<div class="main-0005 clearfix">
   			<div class="main-0004">
	   			<div class="textBox3">
	  				약 5분 정도면<br>
	  				가입하고 첫 이용이 가능해요.
	  			</div>
	   			<div class="main-006">
	   				<div class="memBox" style="margin-right: 60px;">
	   					<div class="main_img4">판매자 회원</div>
	   					<div class="textBox4">
		   					<span>회원가입</span><br>
							판매자 선택 후, 회원가입<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>매칭 무료등록</span><br>
							판매자의 정보를 등록해 주세요<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래하기</span><br>
							<div class="textBox6">
								① 등록한 거래처 찾기에서 지원 공급자 확인<br>
								② 거래처 찾기에서 공급자가 등록한 판매자<br>
								<span class="space"></span>거래처 찾기에 판매자로 지원하고 거래<br>
								③ 판매자 프로필 등록하고, 나에게 지원요청한<br>
								<span class="space"></span>공급자 상품정보를 본 후, 거래<br>
							</div>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래승인 후 완료</span><br>
							<div class="textBox6">
								① 조건에 맞는 지원자를 승인 또는 승인 받기<br>
								② 거래완료 후 상대방에 대한 평가남기기<br>
							</div>
		   				</div>
	   				</div>
	   				<div class="memBox" style="margin-left: 60px;">
	   					<div class="main_img4">공급자 회원</div>
	   					<div class="textBox4">
		   					<span>회원가입</span><br>
							공급자 선택 후, 회원가입<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>매칭 무료등록</span><br>
							공급 상품 정보를 입력해 주세요<br>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래하기</span><br>
							<div class="textBox6">
								① 등록한 거래처 찾기에서 지원 판매자 확인<br>
								② 거래처 찾기에서 판매자가 등록한 공급 상품<br>
								<span class="space"></span>거래처 찾기에 공급자로 지원하고 거래<br>
								③ 판매자 찾기에서 판매자 지원요청 후, 거래<br>
							</div>
							<br><br>
							<div class="main-img3"></div>
							<br><br>
							<span>거래승인 후 완료</span><br>
							<div class="textBox6">
								① 조건에 맞는 지원자를 승인 또는 승인 받기<br>
								② 거래완료 후 상대방에 대한 평가남기기<br>
							</div>
		   				</div>  					
	   				</div>
	   			</div>   			
   			</div>
   		</div>
   		<div class="main-0004">
   			<img class="img4" alt="" src="${pageContext.request.contextPath}/assets/img/main_img4.png">
   			<div class="textBox7">
	   			셀러매치를 이용하며<br>
				자주 묻는 질문
   			</div>
   			<div class="FAQ">
   				<div class="FAQBox">
   					<div class="img5 img5-show" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>셀러매치 이용료는 어떻게 되나요?</span>
   					</div>
   					<div class="answerBox answerBox-show">
	   					셀러매치 서비스는 현재 무료 베타 서비스 기간입니다.<br> 곧, 유료 서비스로 전환이 될 예정이며,
						유료화 전에 미리 공지를 통해 내용을 전달드릴 예정입니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>유료화가 되고나서 결제를 하지 않으면 이용할 수 없나요?</span>
   					</div>
   					<div class="answerBox">
	   					유료화가 되면 일부 서비스는 결제를 해야 이용할 수 있게 될 예정입니다.<br>
      					그러나, '매칭 무료등록' 등의 일부 서비스는 계속 무료로 이용이 가능하며,
      					유료화가 되어도 무료 서비스 기간동안 등록한 내용은 그대로 유지가 됩니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>하나의 계정으로 판매자와 공급자 2가지 기능을 모두 사용할 수 있나요?</span>
   					</div>
   					<div class="answerBox">
	   					현재는 가능하지 않습니다. 판매자와 공급자 중 하나를 꼭 선택해서 가입하셔야 합니다.<br>
        				다만, 추후에 기능을 업데이트 할 예정이오니 마이페이지에서 회원전환을 해주시면 됩니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>상대방의 연락처 등을 알 수 있나요?</span>
   					</div>
   					<div class="answerBox">
						네, 그렇습니다. 셀러매치는 직거래 서비스로써, '지원하기'를 통해 서로 연결(매칭)이 되면<br>
					        상대방이 등록한 모든 정보를 열람할 수 있습니다.<br> 직접 메일이나 전화로 연락하셔서 직거래를
					        할 수 있습니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>아무 상품이나 매칭 무료등록해도 되나요?</span>
   					</div>
   					<div class="answerBox">
	   					일반적으로 판매 또는 공급이 이뤄지는 상품의 카테고리를 선택할 수 있게 되어 있습니다.<br>
					        선택할 수 없는 상품의 경우 '기타' 항목을 선택하신 후, 등록하실 수 있습니다.<br>
					        다만, 상식적으로 거래가 이뤄지기 힘들거나 불가한 서비스, 관리자가 판단하기에 서비스에
					        방해가 되는 내용 등은 관리자의 권한으로 사전 권고없이 수정 또는 삭제될 수 있습니다.
	   				</div>
   				</div>
   				<div class="FAQBox nowBtnShow">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>매칭 무료등록은 몇 번까지 등록 할 수 있나요?</span>
   					</div>
   					<div class="answerBox">
	   					현재는 무료 베타 서비스 기간으로, 베타서비스 기간 중에는 제한없이 등록할 수 있습니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>해외 판매자 또는 공급자도 찾을 수 있나요?</span>
   					</div>
   					<div class="answerBox">
	   					네, 가능합니다. 아직 서비스를 시작한지 얼마 되지 않아 충분한 판매자 및 공급자 수가 부족할 수 있습니다.
        				조속한 시일내에 양질의 판매자와 공급자가 활동하는 서비스로 거듭나겠습니다.
	   				</div>
   				</div>
   				<div class="FAQBox">
   					<div class="img5" style="background-image: url('${pageContext.request.contextPath}/assets/img/rightArrow.png');"></div>
   					<div class="Qa">
   						<span>공급 상품 단가, 이익율, 판매자 매출 등의 검증 내용은 신뢰할만 한가요?</span>
   					</div>
   					<div class="answerBox">
						검증을 거친 공급상품의 정보와 판매자의 정보는 관리자가 관련 내용을 면밀히 검토한 후,
					        검증 표시를 하게 됩니다. 그래서 신뢰하셔도 좋다고 말씀드릴 수 있습니다.<br>
					        다만, 검증을 요청한 이용자가 의도적으로 거짓 정보를 전달하거나, 검증 후 정보가 변경이 되어
					        검증된 내용과 실제 내용이 다를 수 있습니다.<br>
					        검증된 내용과 다른 사실을 발견하였을 경우, 셀러매치 고객센터(help@sellermatch.co.kr)으로
					        연락주시면 적절한 조치를 취하도록 하겠습니다.
	   				</div>
   				</div>
   			</div>
   		</div>
   		<div class="main-0005">
   			<img class="img3" alt="" src="${pageContext.request.contextPath}/assets/img/main_img3.png">
   			<div class="textBox5">
   				<span>직접 써보시는 것이 가장 빠를거에요.</span><br>
				무료체험에는 어떠한 비용도 들지 않아요.
   			</div>
   			<button class="nowBtn projectInsert">바로 체험해보기</button>
   		</div>
    </div>
</div>
<input type="text" value="http://sellermatch.co.kr/" id="urlAddress" style="display:none;">
<%@ include file="inc/footer.jsp"%>
<script>
	// 24시간 기준 쿠키 설정하기
	var setCookie = function(cname, cvalue, exdays){
		var todayDate = new Date();
		todayDate.setTime(todayDate.getTime() + (exdays*24*60*60*1000));
		var expires = "expires=" + todayDate.toUTCString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}
</script>
<script>
$(document).ready(function() {
	
	/* 메인 이벤트팝업 노출 *//* 이벤트팝업 쿠키 설정 */
  	//$('.popup').show();
 	$('.popup2').show();
 	//$('.popup3').show();
	
 	cookiedata = document.cookie;
	if ( cookiedata.indexOf("popup=N") < 0 ){ //쿠키 변경 여부 불러오기
		document.all['popup'].style.visibility = "visible";
	} else {
		document.all['popup'].style.display = "none";
	}
	if ( cookiedata.indexOf("popup2=N") < 0 ){ //쿠키 변경 여부 불러오기
		document.all['popup2'].style.visibility = "visible";
	} else {
		document.all['popup2'].style.display = "none";
	}  
/* 	if ( cookiedata.indexOf("popup3=N") < 0 ){ //쿠키 변경 여부 불러오기
		document.all['popup3'].style.visibility = "visible";
	} else {
		document.all['popup3'].style.display = "none";
	}  */

	// 오늘하루 보지않기 버튼
 	$('#today').on('click', function(){
		setCookie("popup", "N", 1); //쿠키값 변경
		$('#popup').hide();
	});	
	// 오늘하루 보지않기 버튼
	$('#today2').on('click', function(){
		setCookie("popup2", "N", 1); //쿠키값 변경
		$('#popup2').hide();
	});	 
	// 오늘하루 보지않기 버튼
/* 	$('#today3').on('click', function(){
		setCookie("popup3", "N", 1); //쿠키값 변경
		$('#popup3').hide();
	});	 */
	
	// 팝업 닫기
 	$('.popup-close').on('click', function(){
		$('.popup').hide();
	});
	$('.popup-close2').on('click', function(){
		$('.popup2').hide();
	}); 
/* 	$('.popup-close3').on('click', function(){
		$('.popup3').hide();
	}); */
	
	$('.FAQBox').hover(function() {

	     //이부분은 마우스가 올라 요소 위에 올라왔을때 이벤트입니다.
		$(this).children('.answerBox').addClass('answerBox-show');
		$(this).children('.img5').addClass('img5-show');
	}, function(){

	    //이부분은 마우스가 요소에서 나갈떄 실행할 수 있는 이벤트 입니다.
		$(this).children('.answerBox').removeClass('answerBox-show');
		$(this).children('.img5').removeClass('img5-show');
	});
	
	$(window).scroll(function(){
    	//스크롤 하단 위치 값구하기
    	/* var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop(); */
    	
    	
    	//스크롤의 위치가 상단에서 450보다 크면 
        /* if($(window).scrollTop() > 450){  */ 
        if(window.pageYOffset >= $('.findBtn').offset().top){ 
            $('.gnb_project').addClass("fix");  
            //위의 if문에 대한 조건 만족시 fix라는 class를 부여함  
        }else {
            $('.gnb_project').removeClass("fix");
            //위의 if문에 대한 조건 아닌경우 fix라는 class를 삭제함  
        }
        
        if(window.pageYOffset < $('.nowBtnShow').offset().top){
        }else {
            $('.gnb_project').removeClass("fix");
            //위의 if문에 대한 조건 아닌경우 fix라는 class를 삭제함  
        }
    }); 
	
/* 	$(window).scroll(function(){
   	 
        if(window.pageYOffset >= $('.main-0005').offset().top){  
            $('.gnb_project').removeClass("fix"); 
        }else {
            $('.gnb_project').addClass("fix");
        }
    });  */

	
	$('#sellerGoBtn').on('click', function(){
		window.location = ROOT_URL + '/project/find'
	});
	
	$('#PpGoBtn').on('click', function(){
		window.location = ROOT_URL + '/seller/find'
	});
	
	$('#slider-div').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next'),
		  prevArrow:$('.prev'),
	});
	
	$('#newsLetterBtn').on('click', function(){
		$('#newsLetterModal').modal();
	});
	
});
</script>
<script src="${pageContext.request.contextPath}/assets/js/share.js"></script>
</body>
</html>
