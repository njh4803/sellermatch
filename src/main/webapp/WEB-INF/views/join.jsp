<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
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
.check{
  width: 300px;
  height: 80px;
  margin: 30px 20px 150px 20px;
  padding: 25.5px 0;
  border-radius: 10px;
  background-image: linear-gradient(to right, #d90b54, #3b1374);
}
.default-check{
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #000000;    
  width: 300px;
  height: 80px;
  margin: 30px 20px 150px 20px;
  padding: 25.5px 0;
  border-radius: 10px;
  border: solid 0.5px #cccccc;
  background-color: #ffffff;
}
.none-check{
	background-color: #e3e3e3;
	width: 300px;
	height: 80px;
	margin: 30px 20px 150px 20px;
	padding: 25.5px 0;
	border-radius: 10px;
}
.addBtn {
	background-color: #E52867;
    color: white;
    border-radius: 10px;
    width: 150px;
    height: 50px;
    font-size: 20px;
    margin: 30px 0;
}
a {
	text-decoration: none;
	color: black;
}
.partner_bnr .partner_wrap h2 {
    font-size: 30px;
    line-height: 60px;
    font-weight: 700;
    margin-bottom: 10px;
}
.partner_bnr .partner_wrap {
    width: 1280px;
    margin: 40px auto;
    text-align: center;
}
.projectBox{
	display: inline-block;
}
.projTable{
	border: 2px solid #ccc;
	width: 700px;
    height: 700px;
}
.projTable td{
	border: 2px solid #ccc;
    text-align: left;
}
.inputForm{
	width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
}
.width-70{
	width: 70%;
	float: left;
}
.width-30{
	width: 30%;
	display: inline-block;
}
.row1{
	display: inline-block;
}
/* 필수항목 표시를 위한 `*` */
.identify {
	font-size: 14px;
	color: #f00;
}

/* 에러 메시지에 대한 글자 색상 */
.error {
	color: red;
}

/* 에러가 발생한 <input>태그 */
input.error {
	
}
/* 에러메시지가 표시중인 <label> 태그 */
label.error {
	font-size: 10px;
	color: red;
	display: inline-block;
	padding: 5px 10px;
	margin: 0;
}
.jFiler-input-dragDrop {
    width: 100%;
    background-color: #fafafa;
}
.ck-blurred.ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-editor__editable_inline {
	height: 300px;
}
.fileLable{
	position: relative;
    cursor: pointer;
    display: inline-block;
    vertical-align: middle;
    overflow: hidden;
    width: 100px;
    height: 30px;
    background: #1abc9c;
    color: #fff;
    text-align: center;
    line-height: 30px;
    margin-top: 2px;
    border-radius: 5px;
    margin-left: 10px;
}
.formControl{
	width: 400px;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    display: inline-block;
    background-color: #e3e3e3;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
}
.formControl input {
    position: absolute;
    width: 0;
    height: 0;
    overflow: hidden;
}
.formControl input[type=text] {
	vertical-align:middle;
	display:inline-block;
	width:400px;
	height:28px;
	line-height:28px;
	font-size:11px;
	padding:0;
	border:0;
	border:1px solid #777;
	padding-left: 10px;
}
.joinForm {
	border: 2px solid #ccc;
	border-radius: 10px;
	width: 700px;
    text-align: left;
    display: inline-block;
    padding: 50px;
    padding-top: 0;
}
.resultBox{
	text-align: left;
	padding: 50px 0;
}

.resultBox .resultText span{
	color: blue;
}
.colForm-label{
	width: 122px;
	padding-right: 0;
}
.join-btn:disabled{
	background-color: #D9D9D9;
}
.join-btn{
    display: inline-block;
    width: 300px;
    height: 40px;
    color: white;
    background-color: #595959;
    margin-bottom: 0;
    margin-top: 30px;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    padding: 6px 12px;
    font-size: 17px;
    line-height: 1.42857143;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.Agreement {
	color: #A6A6A6;
}
.r-span{
	color: red;
}
.s-span{
	color: blue;
}
.Agreement-box{
	border-top: 1px solid #aaa;
	padding: 10px;
	margin-top: 10px;
}
.Agreement-container{
	margin-left: 125px;
    margin-right: 38px;
}
.Agreement-box textarea{
	width: 100%;
    height: 100px;
    padding: 15px;
    font-size: 10px;
    color: #aaa;
    border: 1px solid #e3e3e3;
    margin: 10px 0;
}
/* checkbox */
input[type="checkbox"].findCheck + label span {
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
  padding-left: 20px;
  margin: 0;
  height: auto;
  background:url(../local_assets/img/checkActiveNone20.png) no-repeat;
  background-position-y: center;
}
input[type="checkbox"].findCheck:checked + label span {
    background:url(../local_assets/img/checkActive20.png) no-repeat;
    color: #ffffff;
    background-position-y: center;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
        <h2>공급자 또는 판매자 중 하나를 선택하세요</h2>
        <h3>아래 간단한 내용만 입력하면, 회원가입이 완료됩니다!</h3>
    </div>
    <div id="findCheckBox">
    	<div class="partner_wrap addbox2">
		    <hr>
		</div>
		<div class="partner_wrap addbox2 selectProfile">
			<div style="display: inline-block;">
				<button id="spBtn" class="default-check text-center" value="판매자">
					<input type="checkbox" class="findCheck spFind" id="spFind" value="판매자">
					<label for="spFind"><span>&nbsp;&nbsp;판매자 가입</span></label>
				</button>
			</div>
			<div style="display: inline-block;">
			    <button id="ppBtn" class="default-check text-center" value="공급자">
			    	<input type="checkbox" class="findCheck ppFind" id="ppFind" value="공급자">
			    	<label for="ppFind"><span>&nbsp;&nbsp;공급자 가입</span></label>
			    </button>
			</div>
		</div>
    </div>
    
    <div id="hiddenBox" style="display: none;">
    	<input type="hidden" id="memSort">
    </div>
    <div class="partner_wrap join-temp-Box">
    	
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>
<script>
$(document).ready(function() {
	
	$(document).on("change", "#image" ,handleImgfileSelect);
	
	$(document).on("click", ".agree-all", function(){
		$(".agree-chk").prop("checked", this.checked);
		$(".select-chk").prop("checked", this.checked);
		
		if (this.checked) {
			$('.join-btn').css("background-color", "#595959");
			$('.join-btn').attr('disabled', false);
		} else {
			$('.join-btn').css("background-color", "#D9D9D9");
			$('.join-btn').attr('disabled', true);
		}
	});
	
	$(document).on("click", ".select-chk", function(){
		
		var total_len = $(".chk").length;
		console.log(total_len)
		//선택된 갯수
		var len = $(".chk:checked").length;
		console.log(len)
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);	
		}
		
		if (this.checked == false) {
			$(".agree-all").prop("checked", false);
		}
	});
	
	$(document).on("click", ".agree-chk", function(){
		
		var total_len = $(".chk").length;
		console.log(total_len)
		//선택된 갯수
		var len = $(".chk:checked").length;
		console.log(len)
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);	
		}
		
		if (this.checked) {
			$('.join-btn').css("background-color", "#595959");
			$('.join-btn').attr('disabled', false);
		} else {
			$('.join-btn').css("background-color", "#D9D9D9");
			$('.join-btn').attr('disabled', true);
			$(".agree-all").prop("checked", false);
		}
		
	});
	
	$(document).on("click", ".findCheck", function(){
		$(".joinForm").remove();
		var value = this.value;
		var tag;
		if (this.checked) {
			
			if ('판매자' == value) {
				$("#ppBtn").attr('disabled', true);
				$("#ppBtn").attr('class','none-check text-center');
				$("#spBtn").attr('class','check text-center');
				//$(".ppFind").attr('disabled', true);
				$(".ppFind").prop("checked", false); 
				$("#memSort").val("2");
				tag = '<div class="resultText">판매자가입을 선택하셨습니다. <span>다양한 고마진 공급자를 찾아 수익을 향상시키세요!</span></div>';
			}
			if ('공급자' == value) {
				$("#spBtn").attr('disabled', true);
				$("#spBtn").attr('class','none-check text-center');
				$("#ppBtn").attr('class','check text-center');
				//$(".spFind").attr('disabled', true);
				$(".spFind").prop("checked", false);
				$("#memSort").val("1");
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
	
	$(document).on("focus blur", "#memNick", function(){
		var memNick = $('#memNick').val();
		$('#memNick').val(memNick.trim());
		console.log($('#memNick').val())
	});
	
	$(document).on("focus", "#join_form", function(e){
		
		$.validator.addMethod("passwordCk",  function( value, element ) {

			return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);

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
	                required: true, email: true, 
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
	            memPw2: { required: true, passwordCk:true, minlength: 6, maxlength: 30 },
	            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
	            memPw_confirm: { required: true, equalTo: '#memPw2' },
	            // [연락처] 필수
	            memTel: { phone: true },
	            // [우편번호] 필수 입력
	            postcode: 'required',
	            // [주소1] 우편번호가 입력된 경우만 필수
	            memAddr: 'required',
	            
	        },
	        messages: {
	        	memberId: {
	                required: '아이디를 입력하세요.',
	                email: '아이디는 이메일만 입력 가능합니다.',
	                remote: '이미 사용중인 이메일 입니다.'
	            },
	            memPw2: {
	                required: '비밀번호를 입력하세요.',
	                passwordCk: '비밀번호는 문자 + 숫자 + 특수문자를 포함하셔야 합니다.',
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
	                phone: '연락처 형식이 잘못되었습니다.',
	            },
	            postcode: '우편번호를 입력해 주세요.',
	            memAddr: '기본주소를 입력해 주세요.',
	        }
	    });
	});
    
    $(document).on("submit", "#join_form", function(e){
		e.preventDefault();
		
		var profileMemId = $('#memberId').val();
		var profileSort = $('#memSort').val();
		
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
            		    var text = '';
	   					if (profileSort == 1) {
	   						text = '프로필 등록 후 여러분이 원하는 공급자와 더 가까워집니다.'
	   					}
	   					if (profileSort == 2) {
	   						text = '프로필 등록 후 여러분이 원하는 판매자와 더 가까워집니다.'
	   					}
	   					swal({
	   	    	            title: '<div>프로필 등록을 해야</div><div>프로젝트 등록을 할 수 있습니다.</div>',
	   	    	            text: text,
	   	    	            type: "question",
	   	    	            icon: 'warning',
	   	    	            showCancelButton: true,
	   	    	            confirmButtonColor: '#3085d6',
	   	    	            cancelButtonColor: '#d33',
	   	    	            confirmButtonText: '지금 등록하기',
	   	    	            cancelButtonText: '나중에 등록하기'
		    	        }).then(function(result) {    					
		    	            if (result.value) {
		    	            	window.location = ROOT_URL+ "/profile?profileMemId="+profileMemId+"&profileSort="+profileSort;
		    	            } else {
		    	            	window.location = ROOT_URL + '/temp';
		    	            }
		    	        });
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
																<input type="hidden" id="memSort" name="memSort" value="{{memSort}}">
																<input type="hidden" name="memRname" id="memRname" value="0" readonly="readonly">
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
                                                                    <input type="password" id="memPw2" name="memPw2" class="form-control" placeholder="비밀번호를 입력해주세요. (6자 이상)">
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
															<div class="form-group row">
																<label for="memTel" class="col-sm-2 colForm-label">연락처
																</label>
																<div class="col-sm-9">
																	<input type="text" name="memTel" class="form-control" id="memTel"
																		placeholder="`-`  없이 숫자만 입력(연락처는 아이디를 찾을 때 이용됩니다.)" />
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
															</div> -->
			<div class="Agreement-container">
				<div class="Agreement">
					<input type="checkbox" class="agree-all" id="checkAll"><label for="checkAll"><span>전체약관동의</span></label>
				</div>
				<div class="Agreement-box clearfix">
					<div class="Agreement" style="float: left;">
						<input type="checkbox" id="chk1" class="agree-chk chk">
						<label for="chk1"><span class="r-span">(필수)</span>이용약관동의</label>
					</div>
					<div style="float: right;">
						내용보기 V
					</div>
					<textarea style="width: 100%; height: 100px; padding: 15px;">제 1조 (목적)</textarea>
					
					<div class="Agreement" style="float: left;">
						<input type="checkbox" id="chk2" class="select-chk chk">
						<label for="chk2"><span class="s-span">(선택)</span>개인정보 수집 및 이용동의</label>
					</div>
					<div style="float: right;">
						내용보기 V
					</div>
				</div>
				<div style="text-align-last: center;">
					<button class="join-btn" type="submit" disabled="disabled">가입하기</button>
				</div>
			</div>
															
                                                                </form>
                                                                <!-- 회원가입 form end -->
    	</div>
</script>    
    </body>
</html>
