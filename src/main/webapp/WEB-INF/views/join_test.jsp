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
	background-color: #E52867;
    color: white;
    border-radius: 10px;
    width: 300px;
    height: 100px;
    font-size: 20px;
}
.default-check{
	background-color: white;
    color: black;
    border-radius: 10px;
    border: 1px solid #e3e3e3;
    width: 300px;
    height: 100px;
    font-size: 20px;
}
.none-check{
	background-color: #e3e3e3;
    color: black;
    border-radius: 10px;
    border: 1px solid #e3e3e3;
    width: 300px;
    height: 100px;
    font-size: 20px;
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
.join-btn{
    display: inline-block;
    width: 300px;
    height: 40px;
    color: white;
    margin-bottom: 0;
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
				<button id="spBtn" class="default-check text-center" value="판매자"><input type="checkbox" class="findCheck spFind" value="판매자">판매자 가입</button>
			</div>
			<div style="display: inline-block;">
			    <button id="ppBtn" class="default-check text-center" value="공급자"><input type="checkbox" class="findCheck ppFind" value="공급자">공급자 가입</button>
			</div>
		</div>
    </div>
    
    <div id="hiddenBox" style="display: none;">
    	<input type="hidden" id="memSort">
    </div>
    <div class="partner_wrap join-temp-Box">
    	<div class="joinForm">
    	<form action="${pageContext.request.contextPath}/member/join" id="join_form" name="join_form" method="post" enctype="multipart/form-data">
																<input type="hidden" id="memSort" value="0">
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
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 colForm-label">닉네임</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" name="memNick" id="memNick" 
                                                                    placeholder="별명을 입력하세요. 회사명 등 정보성 닉네임을 입력하시면 이용제한을 받을 수 있습니다.">
                                                                </div>
                                                            </div>
                                                            <div style="text-align-last: center;">
																<button class="join-btn" type="submit">가입하기</button>
															</div>
                                                                </form>
                                                                <!-- 회원가입 form end -->
    	</div>
    </div>
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
			/* 
			var content = {
             		memSort: $("#memSort").val(),
        			tag: tag
        		}
       		var template = Handlebars.compile($("#project-join-tmpl").html());
       		var html = template(content);
       		$(".join-temp-Box").append(html); */
       		
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

</script>    
    </body>
</html>
