<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link href="${pageContext.request.contextPath}/assets/css/myHome.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">회원정보 / 프로필관리</div>
		    		<div class="mypage-text">나의 활동 정보를 한 눈에 볼 수 있습니다.</div>
	    		</div>
		    	<div class="mypage-top-right">
		    		<img class="mypage-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="mypage-hr">
	       	<ul class="my-tabs">
				<li class="tab-link current" data-tab="my-tab-1" id="select-my-tab1">MY홈</li>
				<li class="tab-link" data-tab="my-tab-2" id="select-my-tab2">가입정보관리</li>
				<li class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필관리</li>
				<li class="tab-link2" data-tab="my-tab-4" id="select-my-tab4">거래관리</li>
			</ul>
			<div id="my-tab-1" class="tab-content2 current">
				<div class="my_home clearfix">
					<div class="myBox">
						<div class="myBox-inner">
							<div class="textBox1">${output.profileGrade}</div>
							<div class="textBox2">${output.memNick}님</div>
						</div>
					</div>
					<div class="myBox2">
						<div class="myBox2-inner">
							<div class="textBox1">거래 등록</div>
							<div class="textBox2 projAddCount" id="projAddCount" data-value="${output.projAddCount}">${output.projAddCount}건</div>
						</div>
						<div class="myBox2-inner">
							<div class="textBox1">평가건수</div>
							<div class="textBox2">0건</div>
						</div>
						<div class="myBox2-inner">
							<div class="textBox1">공급자 평가점수</div>	
							<div class="textBox2">0점</div>
						</div>
					</div>
				</div>
				<div>
					<div class="myBox3 clearfix">
						<div class="textBox1">
							<div class="myBox-row">
								간단한 인증 한번으로<br>
								경쟁력을 높여보세요!
							</div>
							<div class="myBox-row2">
								<button>바로 인증하기</button>
							</div>
						</div>
						<div class="textBox1">
							<div class="myBox-row">거래 관리</div>
							<div class="myBox-row2">
								<button class="projAddCount">바로가기</button>
							</div>
						</div>
						<div class="textBox1">
							<div class="myBox-row">관심등록리스트(26)</div>
							<div class="myBox-row2">
								<button>바로가기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", "ul.my-tabs li", function(e){
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		if (tab_id == 'my-tab-4') {
			location.href="/myPage/delngManage/registDelng";
		}
		if (tab_id == 'my-tab-2') {
			location.href="/myPage/joinManage";
		}
		if (tab_id == 'my-tab-3') {
			location.href="/myPage/profileManage";
		}
	});
});	
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>