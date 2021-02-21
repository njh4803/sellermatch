<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="modal/recommendModal.jsp"%>
<style>
.partner_bnr {
    width: 100%;
    padding-bottom: 110px;
}
.partner_bnr2 {
    width: 100%;
    padding-bottom: 100px;
    text-align: center;
}
.container1{
	width: 1280px;
	margin: 0 auto;
	border: solid 1px #cccccc;
	display: inline-block;
	padding: 60px 60px;
}
.container2{
	margin-bottom: 58px;
}
.container1 .container2{
	margin: 0;
	height: fit-content;
    float: left;
    margin-bottom: 58px;
}
.bar{
  width: 1920px;
  height: 60px;
  margin-bottom: 40px;
  background-image: linear-gradient(to right, #d90b54, #153f92 51%, #57207c);
  padding: 12px;
}
.bar div{
  width: 1280px;
  font-size: 25px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: left;
  color: #ffffff; 
  margin: 0 auto;
}
.leftBox{
	float: left;
}
.rightBox{
	float: right;
	margin: 15px 15px;
}
.row1{
	height: 50px;
	width: 97%;
	margin-left: 0;
	margin-right: 0;
}
.row2{
	margin-left: 0;
	margin-right: 0;
}
.profileImgBox{
	display: inline-block;
	float: left;
}
.profileImg{
  width: 160px;
  height: 160px;
  object-fit: contain;
  border-radius: 70%;
  margin-right: 30px;
}
.infoBox1{
	width: 718px;
	margin-bottom: 20px;
	display: inline-block;
}
.infoBox2{
	width: 718px;
	display: inline-block;
}
.infoBox1 .textBox1{
  display: inline-block;
  width: 50px;
  height: 20px;
  margin-right: 15px;
  background-color: #25398b;
  font-size: 10px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.5;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
  vertical-align: top;
}
.infoBox2 .textBox2{
	display: block;
	width: 718px;
    height: 29px;
    font-size: 20px;
    font-weight: 500;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.5;
    letter-spacing: normal;
    text-align: left;
    margin: 0;
    color: #000000;
}
.infoBox2 .textBox2 span:nth-child(1){
	margin-left: 20px;
}
.infoBox2 .textBox2 span{
	display: inline-block;
	font-size: 20px;
	margin-right: 15px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.5;
	letter-spacing: normal;
	text-align: left;
	color: #707070;
}
.hashtag{
  height: 21px;
  margin-right: 15px;
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: left;
  color: #4b4b4b;
  display: inline-block;
}
.intro{
  height: 60px;
  font-size: 30px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.match{
  width: 250px;
  height: 50px;
  border-radius: 4px;
  background-image: linear-gradient(to right, #d90b54, #3b1374);
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: center;
  color: #ffffff;
}
.matchPass{
  width: 11px;
  height: 15.3px;
  object-fit: contain;
  margin-top: -3px;
}
.star{
  width: 11.6px;
  height: 11.1px;
  object-fit: contain;
  margin-top: -3px;
}
.scrap{
  width: 250px;
  height: 50px;
  border-radius: 4px;
  border: solid 1px #c6c6c6;
  background-color: #ffffff;
  margin-bottom: 18px;
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.4;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.btnBox{
	float: right;
	width: 250px;
	margin-top: -110px;
}
.detailBox1{
  display: inline-block;
  width: 1160px;
  border-top: solid 1px #cccccc;
  border-bottom: solid 1px #cccccc;
  margin-bottom: 15px;
  background-color: #fff8fa;
}
.detailBox2{
  display: inline-block;
  width: 1160px;
  border-top: solid 1px #cccccc;
  border-bottom: solid 1px #cccccc;
  background-color: #faf6ff;
  margin-bottom: 60px;
}
.infoBox{
  text-align: center;
  width: 286px;
  height: 100px;
  display: inline-block;
}
.textBox2{
  display: inline-block;
  font-size: 15px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #707070;
  margin-top: 20px;
  margin-bottom: 10px;
}
.infoBox .textRow{
  font-size: 20px;
  margin-bottom: 20px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.infoBox2{
    display: inline-block;
    text-align: left;
    width: 388px;
}
.detailBox3{
  font-size: 24px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.25;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.profile-hr{
  width: 1160px;
  height: 0;
  margin: 10px 0;
  border: solid 1px #cccccc;
}
.ContentsBox1{
  width: 1160px;
  margin-bottom: 76px;
  font-size: 15px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.73;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.ContentsBox2{
  width: 1160px;
  margin-bottom: 50px;
  font-size: 15px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.73;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
.ContentsBox2 .projectDate{
	display: inline-block;
    width: 95px;
    height: fit-content;
    padding: 0 15px 5px 0;
    font-size: 15px;
    font-weight: 400;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.73;
    letter-spacing: normal;
    text-align: left;
    color: #000000;
    border-right: solid 0.5px #cccccc;
}
.ContentsBox2 .project{
  width: 90%;
  display: inline-block;
  margin: 0 0 5px 15px;
  font-size: 15px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.73;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}

</style>
<div class="partner_bnr">
	<div class="bar"><div>판매자 상세정보</div></div>
    <div class="partner_wrap" style="text-align: left;">
		<div class="container1 content">
			<input type="hidden" id="profileMemId" value="${output.profileMemId}">
			<div class="container2">
				<div class="profileImgBox">
					<img class="profileImg"  src="${pageContext.request.contextPath}/local_assets/img/profile.png">
				</div>
				<div class="infoBox1 leftBox">
					<div class="textBox1">추천셀러</div>
					<c:forEach var="profileHashtag" items="${output.profileHashtag}" varStatus="status">
        				<div class="hashtag"># ${profileHashtag}</div>
        			</c:forEach>
				</div>
				<div class="infoBox1 leftBox">
					<div class="intro">
						${output.memNick}
					</div>
				</div>
				<div class="infoBox2 leftBox">
					<div class="textBox2">판매채널
						<c:forEach var="profileChannel" items="${output.profileChannelList}" varStatus="status">
	        				<span>${profileChannel}</span>
	        			</c:forEach>
	           		</div>
	           		<div class="textBox2">검증내용
						<c:if test="${output.profileBizCerti == 1}"> 
							<span>사업자인증</span>
						</c:if>
						<c:if test="${output.memRname == 1}">
							<span>신원인증</span>
						</c:if>
						<c:if test="${output.profileChChk == 1}">
							<span>채널검증</span>
						</c:if>
						<c:if test="${output.profileSaleChk == 1}">
							<span>매출검증</span>
						</c:if>
	           		</div>
				</div>
				<div class="btnBox">
					<button class="scrap">
					<img class="star" alt="" src="${pageContext.request.contextPath}/local_assets/img/starNone.png">
						관심등록
					</button>
					<button class="match" id="applyBtn">
					<img class="matchPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
						지원요청
					</button>
				</div>
			</div>
			<div class="detailBox1">
				<div class="infoBox">
					<div class="textBox2"><span>유형</span></div>
					<c:if test="${output.profileBizSortName != ''}">
						<div class="textRow"><span>${output.profileBizSortName}</span></div>
					</c:if>
					<c:if test="${output.profileBizSortName == ''}">
						<div class="textRow"><span>등록X</span></div>
					</c:if>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>분류</span></div>
					<div class="textRow"><span>${output.profileIndusName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>지역</span></div>
					<div class="textRow"><span>${output.profileNationName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>요청받은수</span></div>
					<div class="textRow"><span>${output.recommendCount}명</span></div>
				</div>				
			</div>
			<div class="detailBox2">
				<div class="infoBox">
					<div class="textBox2"><span>매출규모</span></div>
					<div class="textRow"><span>${output.profileVolume}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>판매경력</span></div>
					<div class="textRow"><span>${output.profileCareerName}</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>계약 프로젝트</span></div>
					<div class="textRow"><span>${output.contractCount}개</span></div>
				</div>
				<div class="infoBox">
					<div class="textBox2"><span>등록 프로젝트</span></div>
					<div class="textRow"><span>${output.projAddCount}개</span></div>
				</div>				
			</div>
			<div class="detailBox3">상세정보</div>
			<hr class="profile-hr">
			<div class="ContentsBox1">
				${output.profileIntro}
			</div>			
			<div class="detailBox3">프로젝트</div>
			<hr class="profile-hr">
			<div class="ContentsBox2">
				<c:forEach var="project" items="${project}">
						<div class="projectDate">${project.projRegDate}</div>
						<div class="project">${project.projTitle}</div>
				</c:forEach>
			</div>
			<div class="detailBox3">공급자평가</div>
			<hr class="profile-hr">
			<div class="ContentsBox3">
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
				계약했던 공급자들이 판매자에 대해 평가를 남기는 부분입니다
			</div>
		</div>
	</div>
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
	
	$(document).on("click", "#applyBtn", function(){
		$(".radioBox").remove();
		
		var login_id = $('#projectInsert').data('member');
		var mem_sort = $('#projectInsert').data('memsort');
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		
		if (mem_sort != 1) {
			swal({
                title: '알림',
                text: '공급자만 이용가능합니다.',
               	type: 'warning',
            });
			return;
		}
		$.ajax({
			type: "GET",
		    url: ROOT_URL+"/project",
	        success: function(json) {
	        	console.log(json.projectList)
	        	var content = json
           		var template = Handlebars.compile($("#recommend-tmpl").html());
           		var html = template(content);
           		$(".recommend").after(html);
			}
		});
		
		$("#recommendModal").modal();
	})
});
</script>
<script type="text/x-handlebars-template" id="recommend-tmpl">
<div class="recommendText">판매자에게 지원요청할 프로젝트를 선택하세요.</div>
{{#projectList}}
<div class="radioBox">
	<input type="radio" name="recommendProj" value="{{projId}}">
	<div class="projectTitle">{{projTitle}}</div>
</div>
{{/projectList}}
</script>
    </body>
</html>
