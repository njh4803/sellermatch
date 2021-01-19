<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="modal/recommendModal.jsp"%>
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
    float: right;
}
.container3{
    height: 306px;
    width: 362px;
    float: left;
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
	margin-left: 20px;
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
.projInfo{
    margin: 0;
    width: 40%;
    font-size: 13px;
    color: #aaa;
}
.projInfo hr{
	margin: 6px;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap" style="text-align: left;">
		<div class="container1 content clearfix">
			<div class="container2 clearfix">
				<input type="hidden" id="projId" value="${output.projId}">
				<div class="row1">
				</div>
				<div class="row1 leftBox">
					<div class="titleBox">오픈마켓 전문 판매대행회사입니다.</div>
				</div>
				<div class="clearfix"></div>
				<div class="row1 leftBox">
					<div class="infoBox">
						<div><span>유형</span></div>
						<div>${output.projIndusName}</div>
					</div>
					<div class="infoBox">
						<div><span>분류</span></div>
						<div>${output.projPrice}</div>
					</div>
					<div class="infoBox">
						<div><span>지역</span></div>
						<div>${output.projMarginName}</div>
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
				<div class="row1 leftBox" style="padding: 20px;">
					<div class="rightBox projInfo">
	        			<div class="clearfix">
	        				<div class="leftBox margin-0">
			        			<span>계약 프로젝트</span>
			        		</div>
			        		<div class="rightBox margin-0">
			        			<span>${output.contractCount}건</span>
			        		</div>
	        			</div>
	        			<hr>
	        			<div class="clearfix">
	        				<div class="leftBox margin-0">
			        			<span>등록 프로젝트</span>
			        		</div>
			        		<div class="rightBox margin-0">
			        			<span>${output.projAddCount}건</span>
			        		</div>
	        			</div>
	        			<hr>
	        		</div>
	        		<div class="leftBox projInfo">
	        			<div class="clearfix">
	        				<div class="leftBox margin-0">
			        			<span>요청 받은 수</span>
			        		</div>
			        		<div class="rightBox margin-0">
			        			<span>${output.recommendCount}건</span>
			        		</div>
	        			</div>
	        			<hr>
	        			<div class="clearfix">
	        				<div class="leftBox margin-0">
			        			<span>매출규모</span>
			        		</div>
			        		<div class="rightBox margin-0">
			        			<span>연 ${output.profileVolume} 원</span>
			        		</div>
	        			</div>
	        			<hr>
	        			<div class="clearfix">
	        				<div class="leftBox margin-0">
			        			<span>판매경력</span>
			        		</div>
			        		<div class="rightBox margin-0">
			        			<span>${output.profileCareerName}</span>
			        		</div>
	        			</div>
	        			<hr>
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
				<div class="text-left">
					<button class="applyBtn" data-toggle="modal" data-target="#recommendModal">프로젝트 지원요청</button>
					<button class="scrapBtn">스크랩</button>
				</div>
			</div>
		</div>
		<div style="margin-top: 50px;">
			<div class="a">
				<span class="c" id="bt01">상세정보</span>
				<span class="c" id="bt02">프로젝트(2)</span>
				<span class="c" id="bt03">공급자평가(2)</span>
			</div>
			<div class="b">
				<div class="window" id="window1">
					<div class="tabContent">
						${output.projDetail}
					</div>
				</div>
				<div class="window" id="window2">
					<div class="tabName">프로젝트(2)</div>
					<div class="tabContent">
						${output.projRequire}
					</div>
				</div>
				<div class="window" id="window3">
					<div class="tabName">공급자평가(2)</div>
					<div class="tabContent">
						공급자평가 부분
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
	
	$(document).on("click", ".applyBtn", function(){
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		$("#recommendModal").hide();
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (mem_sort != 2) {
			swal({
                title: '알림',
                text: '공급자만 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		$("#recommendModal").show();
	})
});
</script>
    </body>
</html>
