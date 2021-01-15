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
	margin: 0 240px;
	height: 400px;
}
.container2{
	margin: 0 240px;
	height: 50px;
}
.container1 .container2{
	margin: 0;
    width: 70%;
    height: 100%;
    float: left;
}
.container3{
	border-left: 2px solid #e3e3e3;
    height: 100%;
    width: 30%;
    float: right;
    padding: 60px;
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
  width: 200px;
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
    border: 1px solid black;
    display: inline-block;
}
</style>
<div class="partner_bnr">
</div>
<div class="container1 content">
	<div class="container2">
		<input type="hidden" id="projId${status.index}" value="${output.projId}">
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
		<div class="row1 text-left">
			<div class="profileImgBox">${output.profilePhoto}</div>
			<div style="vertical-align: middle;float: right;">${output.profileIntro}</div>
			${output.projAddCount}
		</div>
	</div>
</div>
<div class="container1">
	<ul class="nav nav-tabs togtab">
		<li class="active togli"><a target="idf" data-toggle="tab">&nbsp;아이디
				찾기</a></li>
		<li class="togli"><a target="pwdf" data-toggle="tab">비밀번호
				찾기</a></li>
	
	</ul>
	
	<div id="idf">
		아이디찾기
	</div>
	<div style="height: 1000px;">
		 
	</div>
	<div id="pwdf">
		비밀번호찾기
	</div>
</div>
<div class="partner_bnr">
</div>
<%@ include file="inc/footer.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>
<script>
$(document).ready(function() {
	
	$(document).on("change", "#image" ,handleImgfileSelect);
	
	$(document).on("click", ".findCheck", function(){
		$(".joinForm").remove();
		var value = this.value;
		var tag;
		if (this.checked) {
			
			if ('판매자' == value) {
				$("#ppBtn").attr('disabled', true);
				$("#ppBtn").attr('class','none-check text-center');
				$("#spBtn").attr('class','check text-center');
				$(".ppFind").attr('disabled', true);
				$("#memSort").val("2");
				tag = '<div class="resultText">판매자가입을 선택하셨습니다. <span>다양한 고마진 공급자를 찾아 수익을 향상시키세요!</span></div>';
			}
			if ('공급자' == value) {
				$("#spBtn").attr('disabled', true);
				$("#spBtn").attr('class','none-check text-center');
				$("#ppBtn").attr('class','check text-center');
				$(".spFind").attr('disabled', true);
				$("#memSort").val("2");
				tag = '<div class="resultText">공급자가입을 선택하셨습니다. <span>검증된 고매출 판매자를 찾아 매출을 올려보세요!</span></div>';
			}
			
			var content = {
             		memSort: $("#memSort").val(),
        			tag: tag
        		}
       		var template = Handlebars.compile($("#project-join-tmpl").html());
       		var html = template(content);
       		$(".join-temp-Box").append(html);
       		
		} else {
			$("#ppBtn").attr('disabled', false);
			$(".ppFind").attr('disabled', false);
			$("#spBtn").attr('disabled', false);
			$(".spFind").attr('disabled', false);
			$("#ppBtn").attr('class','default-check text-center');
			$("#spBtn").attr('class','default-check text-center');
			$("#memSort").val("");
		}
	});
	
	$(document).on("click", "#sendAuthEmail", function(){
	    const memEmail = $("#memEmail").val();
	
	    if (!memEmail) {
	    	swal('알림', '이메일을 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/member/sendAuthEmail', {
	    	memEmail: memEmail
	    }, function(json) {
	    	swal('확인', '인증번호가 발송되었습니다.', 'success');
	    });
	});
	
	$(document).on("click", "#authConfirm", function(){
	    const auth_confirm = $("#auth_confirm").val();
	
	    if (!auth_confirm) {
	    	swal('알림', '인증번호를 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/member/authConfirm', {
	    	auth_confirm: auth_confirm
	    }, function(json) {
	    	if (json.result == "0") {
	    		swal('알림', '인증실패', 'warning');
			} else {
		    	swal('확인', '인증이 확인되었습니다.', 'success');
		    	$("#memRname").val(json.result);
			}
	    });
	});
	$(document).on("focus", "#join_form", function(e){
		$.validator.addMethod("kor", function(value, element) {
			return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
		});

		$.validator.addMethod("phone", function(value, element) {
			return this.optional(element)
					|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
					|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
		});
		
	    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
	    $('#join_form').validate({
	    	/* 
				required 필수 항목으로 설정한다. (true, false)
				remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
			*/
			
	        rules: {
	            // [아이디] 필수 + 알파벳,숫자 조합만 허용
	            memberId: {
	                required: true, email: true, minlength: 4, maxlength: 30, 
	                remote : {
	                    url : ROOT_URL + '/member/idCheck',
	                    type : 'post',
	                    data : {
	                    	memberId : function() {
                            return $('#memberId').val();
                        }
	                    }
	                }
	            },
	            // [비밀번호] 필수 + 글자수 길이 제한
	            memPw: { required: true, minlength: 4, maxlength: 30 },
	            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
	            memPw_confirm: { required: true, equalTo: '#memPw' },
	            // [연락처] 필수
	            memTel: { required: true, phone: true, minlength: 9, maxlength: 11 },
	            // [우편번호] 필수 입력
	            postcode: 'required',
	            // [주소1] 우편번호가 입력된 경우만 필수
	            memAddr: 'required',
	            
	        },
	        messages: {
	        	memberId: {
	                required: '아이디를 입력하세요.',
	                email: '아이디는 이메일만 입력 가능합니다.',
	                minlength: '아이디는 최소 {4}글자 이상 입력하셔야 합니다.',
	                maxlength: '아이디는 최대 {30}글자까지 가능합니다.',
	                remote: '이미 사용중인 이메일 입니다.'
	            },
	            memPw: {
	                required: '비밀번호를 입력하세요.',
	                minlength: '비밀번호는 최소 {0}글자 이상 입력하셔야 합니다.',
	                maxlength: '비밀번호는 최대 {0}글자까지 가능합니다.',
	            },
	            memPw_confirm: {
	                required: '비밀번호 확인값을 입력하세요.',
	                equalTo: '비밀번호 확인이 잘못되었습니다.',
	            },
	            email: {
	                required: '이메일을 입력하세요.',
	                email: '이메일 형식이 잘못되었습니다.',
	                maxlength: '이메일은 최대 {0}글자까지 가능합니다.',
	                remote: '이미 사용중인 이메일 입니다.'
	            },
	            memTel: {
	                required: '연락처를 입력하세요.',
	                phone: '연락처 형식이 잘못되었습니다.',
	                minlength: '연락처는 최소 {9}글자 이상 입력하셔야 합니다.',
	                maxlength: '연락처는 최대 {11}글자까지 가능합니다.',
	            },
	            postcode: '우편번호를 입력해 주세요.',
	            memAddr: '기본주소를 입력해 주세요.',
	        }
	    });
	});
    
    $(document).on("submit", "#join_form", function(e){
		e.preventDefault();
		console.log('123213123')
	    var form = $(this);
		var url = form.attr('action');
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#join_form').valid();
               },
               success: function() {
               	swal('알림', '회원가입이 완료되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/temp';
                   });
               }
        });
    });
});

function handleImgfileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			return;
		}
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
};
</script>
<script type="text/javascript">
$(document).ready(function() {
	Handlebars.registerHelper('createTag', function (tag) {
		return new Handlebars.SafeString(tag);
	});

	Handlebars.registerHelper('ifCond', function (v1, operator, v2, options) {

	    switch (operator) {
	        case '==':
	            return (v1 == v2) ? options.fn(this) : options.inverse(this);
	        case '===':
	            return (v1 === v2) ? options.fn(this) : options.inverse(this);
	        case '!=':
	            return (v1 != v2) ? options.fn(this) : options.inverse(this);
	        case '!==':
	            return (v1 !== v2) ? options.fn(this) : options.inverse(this);
	        case '<':
	            return (v1 < v2) ? options.fn(this) : options.inverse(this);
	        case '<=':
	            return (v1 <= v2) ? options.fn(this) : options.inverse(this);
	        case '>':
	            return (v1 > v2) ? options.fn(this) : options.inverse(this);
	        case '>=':
	            return (v1 >= v2) ? options.fn(this) : options.inverse(this);
	        case '&&':
	            return (v1 && v2) ? options.fn(this) : options.inverse(this);
	        case '||':
	            return (v1 || v2) ? options.fn(this) : options.inverse(this);
	        default:
	            return options.inverse(this);
	    }
	});	
});

</script>
<script type="text/x-handlebars-template" id="project-join-tmpl">
<div class="joinForm">
    	<div class="resultBox">
    		{{createTag tag}}
    	</div>
    	<form action="${pageContext.request.contextPath}/member/join" id="join_form" name="join_form" method="post" enctype="multipart/form-data">
																<input type="hidden" id="memSort" value="{{memSort}}">
                                                            <%-- <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">프로필 사진</label>
                                                                <div class="col-sm-10 file_input">
                                                                	<div class="input-group profile">
                                                                		<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label class="fileLable">
										                                		파일 선택
										                                		<input id = "image" name="memPhoto" class="jFiler-input-button" style="display: none" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div> --%>
                                                            <div class="form-group row">
                                                                <label for="memberId" class="col-sm-2 colForm-label">아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="memberId" type="text" name="memberId" class="form-control" placeholder="이메일 입력">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">비밀번호
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <input type="password" id="memPw" name="memPw" class="form-control" placeholder="비밀번호를 입력해주세요. (6자 이상)">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="memPw_confirm" class="col-sm-2 colForm-label">비밀번호 확인
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<input type="password" name="memPw_confirm" class="form-control"
																		id="memPw_confirm" placeholder="비밀번호를 한번 더 입력해주세요." />
																</div>
															</div>
                                                            <!-- <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">이름</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" name="memName" id="memName">
                                                                </div>
                                                            </div> -->
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">닉네임</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" name="memNick" id="memNick" 
                                                                    placeholder="별명을 입력하세요. 회사명 등 정보성 닉네임을 입력하시면 이용제한을 받을 수 있습니다.">
                                                                </div>
                                                            </div>
                                                            <!-- <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">국가</label>
                                                                <div class="col-sm-10">
                                                                    <select id="memCountry" name="memCountry" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">대한민국</option>
						                                                <option value="02">베트남</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">지역</label>
                                                                <div class="col-sm-10">
                                                                    <select id="memNation" name="memNation" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="02">서울</option>
						                                                <option value="032">인천</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="memEmail" class="col-sm-2 colForm-label">이메일 인증</label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="memEmail" class="form-control" id="memEmail" />
																		<span class="input-group-btn">
																			<button type="button" id="sendAuthEmail"
																				class="btn form-bg-primary">인증 번호 발송</button>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label for="" class="col-sm-2 colForm-label"></label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="auth_confirm" class="form-control" id="auth_confirm" />
																		<span class="input-group-btn">
																			<button type="button" id="authConfirm"
																				class="btn form-bg-primary">인증 번호 확인</button>
																		</span>
																	</div>
																</div>
															</div>
                                                            <div class="form-group row">
																<label for="memTel" class="col-sm-2 colForm-label">연락처
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="memTel" class="form-control" id="memTel"
																		placeholder="`-`없이 숫자만 입력" />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label" style="display: flow-root;">우편번호
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="memPost" class="form-control"
																			id="postcode" maxlength="5" readonly> <span
																			class="input-group-btn">
																			<button type="button" class="btn form-bg-primary postcode-finder"
																				data-postcode="postcode" data-addr1="addr1"
																				data-frame="postcode-frame" onClick="exeDaumPostcode()">우편번호검색</button>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label">주소
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10 col-sm-offset-2">
																	<input type="text" name="memAddr" class="form-control" id="memAddr"
																		readonly />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label">상세주소</label>
																<div class="col-sm-10 col-sm-offset-2">
																	<input type="text" name="memAddr2" class="form-control" id="memAddr2"
																		placeholder="나머지 주소" />
																</div>
															</div>
															<div style="text-align-last: center;">
																<input class="btn form-bg-primary" type="submit" value="등록">
																<input class="btn form-bg-submit" type="reset" value="취소">
															</div>
															<input type="hidden" name="memRname" id="memRname" readonly="readonly"> -->
															<div style="text-align-last: center;">
																<button class="join-btn" type="submit">가입하기</button>
															</div>
                                                                </form>
                                                                <!-- 회원가입 form end -->
    	</div>
</script>    
    </body>
</html>
