<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
.font-30{
	font-size: 30px;
}
.partner_bnr {
    width: 100%;
    padding-top: 180px;
    padding-bottom: 100px;
}
.partner_bnr2 {
    width: 100%;
    padding-bottom: 100px;
    text-align: center;
}
.search_chk{
	width: 400px;
    height: 100px;
    background-color: #d6d6d6;
    display: inline-block;
    border-radius: 20px;
    text-align: center;
	padding: 40px 0;
    margin: 0 40px;
}
.chk_list_container{
	height: 150px;
	margin: 0 260px;
}
.chk_listBox{
	display: inline-block;
	overflow-x:hidden;
	overflow-y:auto;
	width:12.27%;
	height:200px;
	border: 1px solid #e3e3e3;
	text-align: left;
	margin-right: -5px;
}
.container1{
	border: 2px solid #e3e3e3;
	height: 400px;
}
.container2{
	margin: 0 240px;
	height: 50px;
}
.container1 .container2{
	margin: 0;
    width: 844px;
    height: 396px;
    float: left;
}
.container3{
	border-left: 2px solid #e3e3e3;
	border-bottom: 2px solid #e3e3e3;
    height: 278px;
    width: 362px;
    float: right;
    padding: 20px;
}
.container4{
    border-left: 2px solid #e3e3e3;
    border-bottom: 2px solid #e3e3e3;
    border-right: 2px solid #e3e3e3;
    width: 364px;
    margin-right: -2px;
    background-color: white;
    float: right;
    padding: 20px;
}
.row1{
	height: 50px;
	width: 97%;
	margin-left: 0;
	margin-right: 0;
}
.row2{
	height: 25px;
	margin-left: 0;
	margin-right: 0;
}
.height-500{
	height: 500px;
	margin: 0;
}
.leftBox{
	float: left;
	margin: 3px 15px;
}
.rightBox{
	float: right;
	margin: 15px 15px;
}
.rightBox a{
	margin: 0 15px;
	font-weight: 0;
	text-decoration: none;
	color: #000;
}

.row2 .leftBox{
	float: left;
	padding: 0 5px;
	margin:0;
}
.row2 .rightBox{
	float: right;
	padding: 0 5px;
	margin:0;
}
.margin-0{
	margin:0;
}
.sortBox span{
	margin: 0 10px;
}
.p-findBtn{
	background-color: #E62267;
	color: white;
	width: 100px;
	height: 40px;
}
.s-findBtn{
	background-color: #57207C;
	color: white;
	width: 100px;
	height: 40px;
}
.orangeBox{
	background-color: #ED7D31;
	color: white;
	display: inline-block;
	border-radius: 5px;
	padding: 15px 15px;
	margin-right: 10px;
}
.blueBox{
	background-color: #71A6DB;
	color: white;
	display: inline-block;
	border-radius: 1px;
	padding: 15px 15px;
	margin-right: 10px;
}
.titleBox{
	font-size: 30px;
}
.titleBox .pp{
	width: 100px;
	height: 40px;
	color: #E62267;
}
.titleBox .sp{
	width: 100px;
	height: 40px;
	color: #57207C;
}
.contentsBox{
	text-align: left;
	background-color: #F2F2F2;
	padding: 15px;
	border-radius: 10px;
	min-height: 100px;
	max-height: 100px;
}
.tagBox{
	display: inline-block;
	color: #7F7F7F;
	margin-right: 10px;
}
.tagContainer{
	padding-top: 50px;
}

.projDetail a{
	text-decoration: none;
	color: black;
}
a:focus, a:hover{
	text-decoration: none;
}
/* 스크롤바 디자인 */
.chk_listBox::-webkit-scrollbar {
  width: 4px;
  height: 10px;
  background: #ffffff;
}
.chk_listBox::-webkit-scrollbar-thumb {
  border-radius: 3.5px;
  background-color: #D9D9D9;

  .chk_listBox:hover {
    background-color: #adb5bd;
  }
}
.chk_listBox::-webkit-scrollbar-track {
  background: #ffffff;
}
/*post slider*/
.post-slider{
  width:90%;
  margin:0px auto;
  position:relative;
}
.post-slider .silder-title{
  text-align:center;
  margin:30px auto;
}
.post-slider .next{
  position:absolute;
  top:50%;
  right:30px;
  font-size:2em;
  color:gray;
  cursor: pointer;
}
.post-slider .prev{
  position:absolute;
  top:50%;
  left:30px;
  font-size:2em;
  color:gray;
    cursor: pointer;
}
.post-slider .post-wrapper{

  width:84%;
  height:350px;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post{
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info{
  font-size:15px;
  height:100%;
  padding-left:10px;
  border: 2px solid #e3e3e3;
}
.post-slider .post-wrapper .post .slider-image{
  width:100%;
  height:300px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
  display: none;
}
.infoBox{
  display: inline-block;
  width: 150px;
  text-align: center;
  border: 1px solid #e3e3e3;
  background-color: #D9D9D9;
  height: 50px;
  padding-top: 10px;
  margin-right: 20px;
}
.infoBox span{
	color: #aaa;
}
.infoBox2{
  display: inline-block;
  text-align: left;
  border: 1px solid #e3e3e3;
  height: 50px;
  padding-top: 15px;
  padding-right: 10px;
  margin-right: 20px;
}
.infoBox2 span{
	margin: 20px;
}
.profileImgBox{
    width: 100px;
    height: 100px;
    display: inline-block;
    border-radius: 70%;
    overflow: hidden;
    border: 1px solid #e3e3e3;
    margin: 15px;
}
.miniImgBox{
  	width: 60px;
    height: 60px;
    display: inline-block;
    border-radius: 70%;
    overflow: hidden;
    border: 1px solid #e3e3e3;
    margin: 15px;
}
.intro{
	display: inline-block;
    vertical-align: middle;
    width: 126px;
    margin-left: 10px;
    font-size: 10px;
    color: #aaa;
}
</style>
<style media="screen">
.a {
	width: 100%;
	border-bottom: 3px solid black;
}
.c {
	display: inline-block;
    text-align: center;
    padding-top: 7px;
    cursor: pointer;
    width: 100px;
    height: 30px;
    margin-bottom: -2px;
}
.c:active {
	background-color: #e3e3e3;
	border: 1px solid black;
}
.c:hover {
	background-color: #e3e3e3;
	border: 1px solid black;
}
#bt01 {
	background-color: #e3e3e3;
	border: 1px solid black;
}
.window {
	width: 100%;
}
.tabName{
	font-size: 25px;
}
.tabContent {
    padding: 20px;
    border: 1px solid black;
    min-height: 150px;
    margin: 16px 0;
}
.applyBtn{
	color: white;
    width: 180px;
    height: 50px;
    font-size: 18px;
    display: inline-block;
    background-color: #00B0F0;
    float: left;
    margin-left: 20px;
}
.scrapBtn{
	width: 100px;
	height: 50px;
	font-size: 18px;
    display: inline-block;
    background-color: white;
    float: left;
    border: 1px solid #e3e3e3;
}
.applyNum{
	margin: 30px;
	font-size: 18px;
}
.applyNick{
	display: inline-block;
    vertical-align: top;
    width: 150px;
    font-size: 10px;
    text-align: left;
    color: #00B0F0;
    margin: 20px 0;
}
.applyTag{
	display: inline-block;
	margin: 15px 0;
    font-size: 10px;
    text-align: left;
    color: #aaa;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap" style="text-align: left;">
		<div class="container1 content clearfix">
			<div class="container2 clearfix">
				<input type="hidden" id="projId" value="${output.projId}">
				<input type="hidden" id="projSort" value="${output.projSort}">
				<div class="row1">
				</div>
				<div class="row1 leftBox">
					<c:choose>
						<c:when test="${output.projDday < 0}">
							<div class="blueBox">마감</div>
						</c:when>
						<c:otherwise>
							<div class="blueBox">마감 ${output.projDday}일전</div>
						</c:otherwise>
					</c:choose>
					<c:forEach var="projKeywordList" items="${output.projKeywordList}">
		           		<div class="tagBox">#${projKeywordList}</div>
		           	</c:forEach>
				</div>
				<div class="clearfix"></div>
				<div class="row1 leftBox projDetail"  data-index="${status.index}">
					<div class="titleBox">${output.projTitle}</div>
				</div>
				<div class="clearfix"></div>
				<div class="row1 leftBox">
					<div class="infoBox">
						<div><span>상품분류</span></div>
						<div>${output.projIndusName}</div>
					</div>
					<div class="infoBox">
						<div><span>상품단가</span></div>
						<div>${output.projPrice}</div>
					</div>
					<div class="infoBox">
						<div><span>판매마진</span></div>
						<div>${output.projMarginName}</div>
					</div>
					<div class="infoBox">
						<div><span>등록지역</span></div>
						<div>${output.projNationName}</div>
					</div>
				</div>
				<div class="row1 leftBox">
					<div class="infoBox2">
						<div><span>공급방법</span>${output.projSupplyTypeName}</div>
					</div>
					<div class="infoBox2">
						<div><span>모집마감</span>${output.projEndDate}일</div>
					</div>
					<div class="infoBox2">
						<div><span>모집인원</span>${output.projRecruitNum}명</div>
					</div>
					<div class="infoBox2">
						<div><span>지원자수</span>${output.applyCount}명</div>
					</div>
				</div>
				<div class="row1 leftBox">
					<div class="infoBox2" style="width: 100%;">
						<div><span>판매채널</span>
						<c:forEach var="projChannelList" items="${output.projChannelList}" varStatus="status">
		           			<c:choose>
		           				<c:when test="${status.last}">
		           					${projChannelList} 
		           				</c:when>
		           				<c:otherwise>
		           					${projChannelList}, 
		           				</c:otherwise>
		           			</c:choose>
		           		</c:forEach>
		           		</div>
					</div>
				</div>
				<div class="row1 leftBox">
					<div class="infoBox2" style="width: 100%;">
						<div><span>검증내용</span>
						<c:if test="${output.profileBizCerti == 1}"> 
							사업자인증
						</c:if>
						<c:if test="${output.memRname == 1}">
							신원인증
						</c:if>
						<c:if test="${output.projProfit == 1}">
							수익성검증
						</c:if>
						<c:if test="${output.projProdCerti == 1}"> 
							상품검증
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							채널검증
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							매출검증
						</c:if>
						</div>
					</div>
				</div>
			</div>
			<div class="container3">
				<div class="row1 text-left">
					<div class="blueBox">등록자</div> ${output.memNick}
				</div>
				<div class="text-left">
					<img class="profileImgBox"  src="${pageContext.request.contextPath}/local_assets/img/profile.png">
					<div class="intro">${output.profileIntro}</div>
				</div>
				<div class="row1 text-left leftBox">
					<div>
						프로젝트 등록 ${output.projAddCount}건
					</div>
					<div>
						프로젝트 거래 ${output.contractCount}건
					</div>
				</div>
			</div>
			<div class="container4">
				<div class="row1 text-left">
					<button class="applyBtn">프로젝트 지원하기</button>
					<button class="scrapBtn">스크랩</button>
				</div>
				<div class="text-center">
					<div class="applyNum">총 지원자 ${output.applyCount}명</div>
				</div>
				<c:choose>
					<c:when test="${output.applyCount > 0}">
						<div class="text-center">
						<c:forEach var="applyDto" items="${applyDto}">
							<img class="miniImgBox"  src="${pageContext.request.contextPath}/local_assets/img/profile.png">
							<div class="applyNick">
								<div>( ${applyDto.memNick} )</div>
								<div class="applyTag">
									<c:forEach var="hashtag" items="${applyDto.profileHashtagList}">
		        						# ${hashtag}
		        					</c:forEach>
								</div>
							</div>
						</c:forEach>	
						</div>
					</c:when>
					<c:otherwise>
						<div class="text-center">
							<div>지원자 없음</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div style="margin-top: 50px;">
			<div class="a">
				<span class="c" id="bt01">상세정보</span>
				<span class="c" id="bt02">필수요건</span>
				<span class="c" id="bt03">문의하기</span>
				<span class="c" id="bt04">후기</span>
			</div>
			<div class="b">
				<div class="window" id="window1">
					<div class="tabContent">
						${output.projDetail}
					</div>
				</div>
				<div class="window" id="window2">
					<div class="tabName">필수요건</div>
					<div class="tabContent">
						${output.projRequire}
					</div>
				</div>
				<div class="window" id="window3">
					<div class="tabName">문의하기</div>
					<div class="tabContent">
						문의하기 부분
					</div>
				</div>
				<div class="window" id="window4">
					<div class="tabName">후기</div>
					<div class="tabContent">
						후기 부분
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="partner_bnr">
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
	$(document).on("click", "#bt01" ,function(){
		var position = $("#window1").offset(); /* 함수 position에 #window1의 위치를 담는다 */
		$("html").stop().animate({scrollTop:(position.top-130)}, 500); /* 문서의 스크롤 위치를 애니메이션으로 이동 -> 그 위치는 함수 position(#window1의 좌표값)의 top값 */
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt01").css("background-color", "#e3e3e3");
		$("#bt01").css("border", "1px solid black");
	});
	$(document).on("click", "#bt02" ,function(){
		var position = $("#window2").offset();
		$("html").stop().animate({scrollTop:(position.top-130)}, 500);
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt02").css("background-color", "#e3e3e3");
		$("#bt02").css("border", "1px solid black");
	});
	$(document).on("click", "#bt03" ,function(){
		var position = $("#window3").offset();
		$("html").stop().animate({scrollTop:(position.top-130)}, 500);
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt03").css("background-color", "#e3e3e3");
		$("#bt03").css("border", "1px solid black");
	});
	$(document).on("click", "#bt04" ,function(){
		var position = $("#window4").offset();
		$("html").stop().animate({scrollTop:(position.top-130)}, 500);
		$(".c").css("background-color", "#fff");
		$(".c").css("border", "0");
		$("#bt04").css("background-color", "#e3e3e3");
		$("#bt04").css("border", "1px solid black");
	});
	
	$(document).on("click", ".applyBtn", function(){
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		var proj_sort = $('#projSort').val();
		console.log(mem_sort);
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (mem_sort == proj_sort) {
			var text='';
			if (proj_sort == 1) {
				text = '판매자만 이용가능합니다.'
			}
			if (proj_sort == 2) {
				text = '공급자만 이용가능합니다.'
			}
			swal({
                title: '알림',
                text: text,
               	type: 'warning',
            });
			return;
		}
		
		
		
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/apply/project",
		    data: {
		    	applyProjId: $("#projId").val(),
		    	applyMemId: login_id,
		    	applyType:1
		    },
            success: function(json) {
          		if (json.result == 1) {
          			swal('알림', '이미 지원한 프로젝트입니다.', 'success');
          			return;
				}
				swal({
	  		          title: '확인',
	  		          text: '지원 하시겠습니까?', 
	  		          type: "question",
	  		          showCancelButton: true
	  		    }).then(function(result) {			
	  		        if (result.value) {
	  		        	var data = {
	  		        		applyProjId: $("#projId").val(),
	  		        		applyProjState:2,
	  		        		applyType:1
	  		        	};
	  		        	  
	  		        	$.ajax({
	  			   			type: "POST",
	  			   	        url: ROOT_URL+"/apply/project",
	  			   	        data: data,
	  		                success: function() {
	  		                	swal('알림', '지원 완료.', 'success');
	  		                	window.location.href = ROOT_URL+"/project/detail?projId="+$("#projId").val();
	  		                }
	  			      	});
	  		      	}
				});	
			}
		});
	})
});
</script>
    </body>
</html>
