<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/file.css">
 <!-- ckeditor js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<style>
.partner_bnr {
    width: 100%;
    padding-top: 0 !important;
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
	width: 160px;
	height: 40px;
	border-radius: 4px;
	background-image: linear-gradient(to right, #d90b54, #3b1374);
	font-size: 13px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	padding: 10.5px 0;
	letter-spacing: normal;
	text-align: center;
	color: #ffffff;
    margin: 30px 0;
}
a {
	text-decoration: none;
	color: black;
}
.partner_bnr .partner_wrap h2 {
  margin: 10px 0 30px 0;
  font-size: 25px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.2;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.partner_bnr .partner_wrap h3 {
  margin-bottom: 39px;
  margin-top: 80px;
  font-size: 20px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.5;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
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
    margin-left: 5px;
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
.projAdd span{
	font-size: 30px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.47;
	letter-spacing: normal;
	color: #ffffff;
	vertical-align: middle;
}
.projAdd{
	background: linear-gradient(to right, #d90b54, #3b1374);
	width: 500px;
	height: 80px;
	margin-top: 100px;
	margin-bottom: 20px;
	padding: 18px 0;
	text-align: center;
	border-radius: 10px
}
.projAdd:disabled{
	background: #dddddd;
	color: #ffffff;
}
.projAdd button:enabled{
	background: linear-gradient(to right, #d90b54, #3b1374);
}
.logoBox{
  display:inline-block;
  width: 492.5px;
  height: 100px;
  object-fit: contain;
}
.bar{
  width: 1920px;
  height: 40px;
  margin-bottom: 140px;
  background-image: linear-gradient(to right, #d90b54, #153f92 51%, #57207c);
}
.imgContainer{
	width: 1280px;
	margin: 0 auto;
}
.imgBox1{
  display: inline-block;
  width: 280px;
  height: 420px;
  padding-bottom: 25px;
  border-radius: 10px;
  border: solid 1px #cccccc;
  background-color: #ffffff;
  text-align: center;
}
.imgBox1 .textBox1{
  margin-top: 20px;
  font-size: 30px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.33;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.imgBox1 .textBox2{

  margin: 20px 0 27px;
  font-size: 20px;
  height: 54px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.25;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
}
.addPass{
  width: 21.7px;
  height: 33.1px;
  object-fit: contain;
  margin-right: 10.7px;
}
.addPass2{
  width: 10px;
  height: 16.6px;
}
.addBox{
	width: 1280px;
    margin: 0 auto;
    text-align: center;
}
.addBox2{
    width: 500px;
    margin: 0 auto;
    text-align: left;
    margin-bottom: 393px;
}
/* checkbox */
input[type="checkbox"].findCheck + label span {
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
  padding-left: 20px;
  margin: 0;
  height: auto;
  font-weight: normal;
  background:url(../local_assets/img/checkActiveNone20.png) no-repeat;
  background-position-y: center;
}
input[type="checkbox"].findCheck:checked + label span {
    background:url(../local_assets/img/checkActive20.png) no-repeat;
    color: #ffffff;
    background-position-y: center;
}
.addBox2 input[type="checkbox"] + label span {
    display: inline-block;
    object-fit: contain;
	font-size: 15px;
	font-weight: 500;
	font-stretch: normal;
	letter-spacing: normal;
	color: #707070;
    padding-left: 20px;
    margin: 0;
    height: auto;
    line-height: normal;
    font-weight: normal;
    background:url(../local_assets/img/checkActiveNone20.png) no-repeat;
    background-position-y: center;
}
.addBox2 input[type="checkbox"]:checked + label span {
    background:url(../local_assets/img/checkActive20.png) no-repeat;
    background-position-y: center;
}
.addBox2 a{
  font-size: 15px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: normal;
  text-align: right;
  color: #707070;	
}
.addHr{
  width: 1280px;
  height: 0;
  margin: 30px auto;
  border: solid 1px #dddddd;
}
.circleArrow1{
	position: absolute;
    right: 1238px;
    top: 725px;
}
.circleArrow2{
    position: absolute;
    right: 905px;
    top: 725px;
}
.circleArrow3{
    position: absolute;
    right: 573px; 
    top: 725px;
}
.circle{
  width: 60px;
  height: 60px;
}
.rightArrow{
    position: relative;
    left: -40px;
    width: 12.6px;
    height: 22.6px;
}
</style>
<div class="partner_bnr">
	<div class="bar"></div>
    <div class="partner_wrap">
    	<img class="logoBox" alt="" src="${pageContext.request.contextPath}/local_assets/img/addProjLogo.png">
        <h2>최고의 공급자와 셀러가 되어 보세요!</h2>
        <h3>아래 간단한 내용만 입력하면, 전세계 파트너를 연결 시켜 드립니다</h3>
    </div>
    <div class="showAddBox">
	    <div class="imgContainer">
	    	<div class="imgBox1" style="margin-right: 50px;">
	    		<div class="textBox1">
	    			공급자나<br>
	    			판매자 찾기<br>
	    			등록!
	    		</div>
	    		<div class="textBox2">
	    			찾는 정보가 정확할수록<br>
					매칭 확률이 올라갑니다
	    		</div>
	    		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/add01.png">
	    	</div>
			<div class="circleArrow1">
				<img class="circle" alt="" src="${pageContext.request.contextPath}/local_assets/img/circle.png">
				<img class="rightArrow" alt="" src="${pageContext.request.contextPath}/local_assets/img/rightArrow.png">
			</div>
	    	<div class="imgBox1" style="margin-right: 50px;">
	    		<div class="textBox1">
	    			신속하게<br>
	    			등록사항<br>
	    			검증
	    		</div>
	    		<div class="textBox2">
	    			24시간 이내 검토완료<br>
	    		</div>
	    		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/add02.png">
	    	</div>
			<div class="circleArrow2">
				<img class="circle" alt="" src="${pageContext.request.contextPath}/local_assets/img/circle.png">
				<img class="rightArrow" alt="" src="${pageContext.request.contextPath}/local_assets/img/rightArrow.png">
			</div>	    	
	    	<div class="imgBox1" style="margin-right: 50px;">
	    		<div class="textBox1">
	    			보유한<br>
	    			사이트<br>
	    			등록 허가
	    		</div>
	    		<div class="textBox2">
	    			24시간 이내 등록 허가<br> 
	    		</div>
	    		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/add03.png">
	    	</div>
			<div class="circleArrow3">
				<img class="circle" alt="" src="${pageContext.request.contextPath}/local_assets/img/circle.png">
				<img class="rightArrow" alt="" src="${pageContext.request.contextPath}/local_assets/img/rightArrow.png">
			</div>	    	
	    	<div class="imgBox1">
	    		<div class="textBox1">
	    			공급자 및<br>
	    			셀러<br>
	    			계약관리
	    		</div>
	    		<div class="textBox2">
	    			공급자 및 셀러<br>
					지원사업 진행사항
	    		</div>
	    		<img alt="" src="${pageContext.request.contextPath}/local_assets/img/add04.png">
	    	</div>
	    </div>
	    <div class="addBox">
	    	<button id="projAdd" class="projAdd text-center" disabled="disabled">
	    		<img class="addPass" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png"><span>프로젝트 등록</span>
	    	</button>
	    </div>
	    <div class="addBox2">
	    	<input id="addCheck" type="checkbox"><label for="addCheck"><span>&nbsp;&nbsp;등록을 위해 개인정보공개 및 등록 약관에 동의합니다</span></label>
	    	<a href="javascript:void(0)" id="termsOfService2" style="float: right;">약관보기 ></a>
	    </div>  
    </div>
   	<div id="findCheckBox">
    	
    </div>
  	<div id="hiddenBox" style="display: none;">
    	<input type="hidden" id="memSort" value="${member.memSort}">
    	<input type="hidden" id="memId" value="${member.memId}">
    	<input type="hidden" id="indusDto" value="${indusDto}">
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	//약관보기
	$('#termsOfService2').on('click', function(){
		$('#termsOfServiceModal').modal();
	});
	
	$("#projAdd").on("click", function(){
		$(".showAddBox").remove();
		var content = {
				memSort: $("#memSort").val()
		}
   		var template = Handlebars.compile($("#project-find-tmpl").html());
   		var html = template(content);
   		$("#findCheckBox").append(html);
	});
	
	$(document).on("click", ".findCheck", function(){
		$(".resultText").remove();
		var memSort = $("#member").val();
		console.log(memSort);
		
		var value = this.value;
		if (value != memSort) {
			var text1='';
			var text2='';
			if (memSort == '공급자') {
				text1 = "(귀하는 "+memSort+"입니다. 판매자찾기만 가능합니다)"
				text2 = memSort+"찾기를 원하시면 판매자로 가입하세요!";
			}
			if (memSort == '판매자') {
				text1 = "(귀하는 "+memSort+"입니다. 공급자찾기만 가능합니다)"
				text2 = memSort+"찾기를 원하시면 공급자로 가입하세요!";
			}
			swal('알림', text1+'<br>'+text2, 'error')
			this.checked = false
			$(".projectAdd").remove();
			return;
		}
		console.log($("#spBtn").val());
		console.log(value);
		var tag;
		if (this.checked) {
			if ('판매자' == value) {
				$("#spBtn").attr('disabled', true);
				$("#spBtn").attr('class','none-check text-center');
				$("#ppBtn").attr('class','check text-center');
				$(".spFind").attr('disabled', true);
				tag = '<div class="resultText">공급자찾기를 선택하셨습니다. (판매자입니다.)</div>';
			}
			if ('공급자' == value) {
				$("#ppBtn").attr('disabled', true);
				$("#ppBtn").attr('class','none-check text-center');
				$("#spBtn").attr('class','check text-center');
				$(".ppFind").attr('disabled', true);
				tag = '<div class="resultText">판매자찾기를 선택하셨습니다. (공급자입니다.)</div>';
			}
			$(".selectFind").append(tag);
			$.ajax({
				   type: "GET",
		           url: ROOT_URL+"/project/indus",
	               success: function(json) {
	            	   var content = {
		             		memSort: $("#memSort").val(),
		        			memId: $("#memId").val(),
		        			indusList: json.indusList
	            		}
	              		var template = Handlebars.compile($("#project-add-tmpl").html());
	              		var html = template(content);
	              		$("#hiddenBox").before(html);
	               }
	        });
			
       		
		} else {
			$("#ppBtn").attr('disabled', false);
			$(".ppFind").attr('disabled', false);
			$("#spBtn").attr('disabled', false);
			$(".spFind").attr('disabled', false);
			$("#ppBtn").attr('class','default-check text-center');
			$("#spBtn").attr('class','default-check text-center');
			$(".projectAdd").remove();
		}
	});
	
	//파일 업로드
    var objDragAndDrop = $(".dragAndDropDiv");
	var imgBox = $("#imgBox");
    
    $(document).on("dragenter",".dragAndDropDiv",function(e){
        e.stopPropagation();
        e.preventDefault();
        $(this).css('border', '2px solid #0B85A1');
    });
    $(document).on("dragover",".dragAndDropDiv",function(e){
        e.stopPropagation();
        e.preventDefault();
    });
    $(document).on("drop",".dragAndDropDiv",function(e){
        
        $(this).css('border', '2px dotted #0B85A1');
        e.preventDefault();
        var files = e.originalEvent.dataTransfer.files;
        var imgListStr = $("#detailImgList").val();
        //$('#imgBox ul').remove();
        handleFileUpload(files,imgBox,imgListStr);
    });
    
    $(document).on('dragenter', function (e){
        e.stopPropagation();
        e.preventDefault();
    });
    $(document).on('dragover', function (e){
      e.stopPropagation();
      e.preventDefault();
      objDragAndDrop.css('border', '2px dotted #0B85A1');
    });
    $(document).on('drop', function (e){
        e.stopPropagation();
        e.preventDefault();
    });
    //drag 영역 클릭시 파일 선택창
    objDragAndDrop.on('click',function (e){
        $('input[name=projDetailImg]').trigger('click');
    });

    $('input[name=projDetailImg]').on('change', function(e) {
        var files = e.originalEvent.target.files;
        var imgListStr = $("#detailImgList").val();
        //$('#imgBox ul').remove();
        handleFileUpload(files,imgBox,imgListStr);
    });
    
    function handleFileUpload(files,imgBox,imgListStr) {
    	
    	var imgList = [];
    	imgList = imgListStr.split("|");
    	
    	if (files.length > 5 || imgList.length > 5) {
			alert('사진은 최대 5개까지 첨부가능합니다.');
			return;
		}
    	
		for (var i = 0; i < files.length; i++) 
		{
			var fd = new FormData();
		    var src_tag = new createimgBox(imgBox,files[i]); //Using this we can set progress.
		    fd.append('detailImg', files[i]);
		    sendFileToServer(fd,src_tag);
		}
		
    }  

    function createimgBox(obj, img){

    	var tag1 = $('<ul class="jFiler-items-list jFiler-items-grid"></ul>').appendTo(obj);
    	var tag2 = $('<li class="jFiler-item"></li>').appendTo(tag1);
    	var tag3 = $('<div class="jFiler-item-container"></div>').appendTo(tag2);
    	var tag4 = $('<div class="jFiler-item-inner"></div>').appendTo(tag3);
    	var tag5 = $('<div class="jFiler-item-thumb"></div>').appendTo(tag4);
    	var tag6 = $('<div class="jFiler-item-assets jFiler-row"></div>').appendTo(tag4);
    	var tag7 = $('<div class="jFiler-item-status"></div>').appendTo(tag5);
    	/* var tag8 = $('<div class="jFiler-item-info"></div>').appendTo(tag5); */
    	var tag9 = $('<div class="jFiler-item-thumb-image"></div>').appendTo(tag5);
    	var tag10 = $('<img style="max-width: 100%" draggable="false">').appendTo(tag9);
    	/* var tag11 = $('<span class="jFiler-item-title"><b title="1">1</b></span>').appendTo(tag8); */
    	/* var tag12 = $('<span class="jFiler-item-others">2</span>').appendTo(tag8); */
    	var tag13 = $('<ul class="list-inline pull-left"></ul>').appendTo(tag6);
    	var tag14 = $('<ul class="list-inline pull-right"></ul>').appendTo(tag6);
    	var tag15 = $('<input class="btn removeImg" type="button" value="x">').appendTo(tag14);
    	
    	obj.append(obj.tag1);
    	
    	const reader = new FileReader()
    	reader.onload = function(img) {
    	  tag10.attr('src', img.target.result);
    	}
    	reader.readAsDataURL(img)
    	return tag10;
    }
    function sendFileToServer(formData,src_tag)
    {
        var uploadURL = ROOT_URL + "/admin/project/fileUpload"; //Upload URL
        var detailImgStr = $('#detailImgList').val();
        $.ajax({
            url: uploadURL,
            type: "POST",
            contentType:false,
            processData: false,
            cache: false,
            data: formData,
            success: function(json){
            	console.log(json.fName);
            	var result = '';
            	if ($('#detailImgList').val() == undefined) {
            		$('#detailImgList').val(json.fName + '|');
            		result = $('#detailImgList').val();
				} else {
					result = $('#detailImgList').val() + json.fName + '|';
				}
            	console.log(result);
            	$('#detailImgList').val(result);
            	src_tag.attr('data-src', json.fName + '|');
            }
        });
    }
    
    $(document).on("click",".removeImg",function(event){
    	var parent = event.target.parentNode;
    	console.log(parent)
    	var imgItem = parent.parentNode.parentNode.parentNode.parentNode.parentNode;
    	var img_src = parent.parentNode.parentNode.childNodes[0].childNodes[1].childNodes[0].getAttribute('data-src');
    	console.log(img_src);
    	imgItem.remove();
    	var imgListStr = $("#detailImgList").val();
    	var imgList = [];
    	var result = '';
    	imgList = imgListStr.split("|");
    	img_src = img_src.replace("|","");
    	for (var i = 0; i < imgList.length-1; i++) {
    		console.log(imgList[i]);
    		console.log(img_src);
    		console.log('------------------------------------------------------------------------------------------');
			if (imgList[i] == img_src) {
				console.log('건너뜀');
				continue;
			}
			result += imgList[i]+"|";
		}
    	console.log(result);
    	$('#detailImgList').val(result);
    });
    
    $(document).on("change", "#projTitleSelect", function(){
		$("#projTitle").val(this.value);
	});
	$(document).on("change", "#projRequireSelect", function(){
		$("#projRequire").val(this.value);
	});
	$(document).on("click", "#addCheck", function(){
		var check = this.checked
		if (check) {
			$("#projAdd").attr('disabled', false);
		}else {
			$("#projAdd").attr('disabled', true);
		}
	});
	$(document).on("focus", "#proj_form", function(e){
		/** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
		$('#proj_form').validate({
			/* 
				required 필수 항목으로 설정한다. (true, false)
				remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
			*/
			
		    rules: {
		        // [프로젝트 제목] 필수
		        projTitle: {
		            required: true, minlength: 5, maxlength: 100, 
		        },
		        // [상품가격] 필수
		        projState: 'required',
		        // [상품마진] 필수
		        projPrice: 'required',
		        // [등록지역] 필수
		        projMargin: 'required',
		        // [공급방법] 필수
		       	projSupplyType: 'required',
		        // [등록지역] 필수
		        projIndus: 'required',
		     	// [상품 상세내용] 필수
		        projDetail: 'required',
		        projEndDate: 'required',
		        projRecruitNum: 'required',
		        projChannel: 'required',
		        projNation: 'required',
		    },
		    messages: {
		    	projMemId: {
		            required: '아이디를 입력하세요.',
		            email: '아이디는 이메일만 입력 가능합니다.',
		            remote: '존재 하지 않는 아이디 입니다.'
		        },
		    	projTitle: {
		            required: '프로젝트 제목을 입력해주세요.',
		            minlength: '제목은 최소 {4}글자 이상 입력하셔야 합니다.',
		            maxlength: '제목은 최대 {100}글자까지 가능합니다.',
		        },
		        projState: {
		            required: '프로젝트 상태를 선택해주세요.',
		        },
		        projPrice: {
		            required: '상품가격을 입력해주세요.',
		        },
		        projMargin: {
		            required: '상품마진률을 선택해주세요.',
		        },
		        projSupplyType: {
		            required: '공급방법을 선택해주세요.',
		        },
		        projDetail: '상품 상세내용를 입력해주세요.',
		        projIndus: '상품분류를 선택해주세요.',
		        projEndDate: '모집마감일을 선택해주세요.',
		        projRecruitNum: '모집인원을 입력해주세요.',
		        projChannel: '채널을 선택해주세요.',
		        projNation: '등록지역을 선택해주세요.',
		    }
		});
	});

    $(document).on("submit", "#proj_form", function(e){
		e.preventDefault();
		
		
		/* ckEditor 적용 */
		//var projDetail = CKEDITOR.instances.projDetail.getData();
        //$("#projDetail").val(projDetail);
		
		var form = $(this);
		var url = form.attr('action');
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#proj_form').valid();
               },
               success: function() {
               	swal('알림', '프로젝트가 등록되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/temp';
                   });
               }
        });
        
    });
});
</script>
<script type="text/javascript">
$(function() {
	Handlebars.registerHelper('ckEditor', function () {
		var tag = '<script type="text/javascript">'+ 'CKEDITOR.replace("projDetail")'+'</'+'script>';
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
<script type="text/x-handlebars-template" id="project-find-tmpl">
<div class="partner_wrap addbox2">
    <hr class="addHr">
</div>
<div class="partner_wrap addbox2 selectFind">
	<input type="hidden" id="member" name="member" value="${member.memSortName}">
	<div style="display: inline-block;">
		<button id="spBtn" class="default-check text-center" value="공급자"><input type="checkbox" class="findCheck spFind" id="spFind" value="공급자">
			<label for="spFind"><span>&nbsp;&nbsp;판매자 찾기</label></span></button>
	</div>
	<div style="display: inline-block;">
	    <button id="ppBtn" class="default-check text-center" value="공급자"><input type="checkbox" class="findCheck ppFind" id="ppFind" value="판매자">
			<label for="ppFind"><span>&nbsp;&nbsp;공급자 찾기</label></span></button>
	</div>
</div>
</script>
<script type="text/x-handlebars-template" id="project-add-tmpl">
<div class="partner_wrap addbox2 projectAdd">
    	<div class="text-center projectBox">
			<form action="${pageContext.request.contextPath}/project/add" id="proj_form" name="proj_form" method="post" enctype="multipart/form-data">
				<input type="hidden" name="projSort" value="{{memSort}}">
				<input type="hidden" name="projMemId" value="{{memId}}">
				<input type="hidden" name="projState" value="1">
	    		<table class="projTable">
	    			<tbody>
	    				<tr>
	    					<td>프로젝트 제목</td>
							{{#ifCond memSort '==' 1}}
	    					<td>
	    						<div class="width-70">
	    							<input type="text" class="inputForm" id="projTitle" name="projTitle" placeholder="[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]">
	    						</div>
	    						<div class="width-30">
		    						<select id="projTitleSelect" name="projTitleSelect" class="inputForm">
		    							<option value="" selected="selected">[기본문구선택]</option>
	                               		<option value="판매자를 찾습니다.">고매출 판매자를 찾습니다</option>
	                                	<option value="판매위임합니다.">위탁전문 공급업체입니다</option>
	                                	<option value="배송대행지를 찾습니다.">위탁판매자 찾습니다</option>
	                              	</select>
	    						</div>
	    					</td>
							{{else}}
	    					<td>
	    						<div class="width-70">
	    							<input type="text" class="inputForm" id="projTitle" name="projTitle" placeholder="다앙한 건강식품 위탁판매 합니다">
	    						</div>
	    						<div class="width-30">
		    						<select id="projTitleSelect" name="projTitleSelect" class="inputForm">
		    							<option value="" selected="selected">[기본문구선택]</option>
	                               		<option value="판매자를 찾습니다.">고마진 공급자를 찾습니다</option>
	                                	<option value="판매위임합니다.">위탁판매 전문셀러입니다</option>
	                                	<option value="배송대행지를 찾습니다.">위탁업체 찾습니다 </option>
	                              	</select>
	    						</div>
	    					</td>
							{{/ifCond}}
	    				</tr>
	    				<tr>
	    					<td>상품분류</td>
	    					<td>
	    						<select id="projIndus" name="projIndus" class="inputForm width-100">
                                    <option value="">선택하세요.</option>
									{{#indusList}}
										<option value="{{indusId}}">{{indusName}}</option>
									{{/indusList}}
                                </select>
	    					</td>
	    				</tr>
						{{#ifCond memSort '==' 1}}
	    				<tr>
	    					<td>상품가격</td>
	    					<td>
	    						<input type="number" class="inputForm width-100" id="projPrice" name="projPrice" min="0" max="1000000" value="0">
	    					</td>
	    				</tr>
						{{/ifCond}}
	    				<tr>
	    					<td>판매마진</td>
	    					<td>
	    						<select id="projMargin" name="projMargin" class="inputForm width-100">
                                    <option value="">선택하세요.</option>
                                    <option value="10">10%이하</option>
                                    <option value="20">11%~20%</option>
                                    <option value="30">21%~30%</option>
                                    <option value="31">30%초과</option>
                                </select>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>등록지역</td>
	    					<td>
	    						<select id="projNation" name="projNation" class="inputForm width-100">
                                    <option value="">선택하세요.</option>
                                    <option value="02">서울</option>
                                    <option value="031">경기</option>
                                    <option value="032">인천</option>
                                    <option value="033">강원</option>
                                    <option value="041">충남</option>
                                    <option value="042">대전</option>
                                    <option value="043">충북</option>
                                    <option value="051">부산</option>
                                    <option value="052">울산</option>
                                    <option value="053">대구</option>
                                    <option value="054">경북</option>
                                    <option value="055">경남</option>
                                    <option value="061">전남</option>
                                    <option value="062">광주</option>
                                    <option value="063">전북</option>
                                    <option value="044">세종특별자치시</option>
                                    <option value="064">세종특별자치도</option>
                                </select>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>공급방법</td>
	    					<td>
		    					<select id="projSupplyType" name="projSupplyType" class="inputForm width-100">
	                                <option value="">선택하세요.</option>
	                                <option value="1">OEM</option>
	                                <option value="2">위탁판매</option>
	                                <option value="3">도매공급</option>
	                                <option value="4">운영대행</option>
	                                <option value="5">경매공급</option>
	                            </select>
	    					</td>
	    				</tr>
	    				<tr>
							{{#ifCond memSort '==' 1}}
	    						<td>채널</td>
							{{else}}
								<td>판매 채널</td>
							{{/ifCond}}
	    					<td>
		    					<div class="inputForm width-100">
		    						<div class="row1">
	                                	<input id="chk1" type="checkbox" name="projChannel" value="1">
	                                	<label for="chk1"><span>오픈마켓</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk2" type="checkbox" name="projChannel" value="2">
	                                	<label for="chk2"><span>종합몰</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk3" type="checkbox" name="projChannel" value="3">
	                                	<label for="chk3"><span>폐쇄몰</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk4" type="checkbox" name="projChannel" value="4">
	                                	<label for="chk4"><span>커뮤니티</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk5" type="checkbox" name="projChannel" value="5">
	                                	<label for="chk5"><span>SNS</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk6" type="checkbox" name="projChannel" value="6">
	                                	<label for="chk6"><span>오프라인</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk7" type="checkbox" name="projChannel" value="7">
	                                	<label for="chk7"><span>해외</span></label>
		                           	</div>
		                        </div>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>모집마감일</td>
	    					<td>
	    						<input type="date" name="projEndDate" id="projEndDate" class="inputForm width-100">
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>모집인원</td>
	    					<td>
	    						<input type="number" name="projRecruitNum" id="projRecruitNum" class="inputForm width-100" min="1" max="100" value="1"/>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>상세설명</td>
	    					<td>
	    						<div>
			                       	<textarea id="projDetail" name="projDetail" class="inputForm width-100" style="height: 150px;"></textarea>
									
	                        </div>
   					</td>
   				</tr>
   				<tr>
   					<td>필수요건</td>
   					<td>
   						<div class="width-70">
   							<input type="text" class="inputForm" id="projRequire" name="projRequire">
   						</div>
						{{#ifCond memSort '==' 1}}
   						<div class="width-30">
    						<select id="projRequireSelect" name="projRequireSelect" class="inputForm">
    							<option value="" selected="selected">[기본문구선택]</option>
                              	<option value="경력자 필수입니다">경력자 필수입니다</option>
                               	<option value="메일, 문자만 가능">메일, 문자만 가능</option>
                               	<option value="마진협상가능">마진협상가능</option>
                            </select>
   						</div>
						{{else}}
   						<div class="width-30">
    						<select id="projRequireSelect" name="projRequireSelect" class="inputForm">
    							<option value="" selected="selected">[기본문구선택]</option>
                              	<option value="경력자 필수입니다">경력자 필수입니다</option>
                               	<option value="메일, 문자만 가능">메일, 문자만 가능</option>
                               	<option value="마진협상가능">마진협상가능</option>
                            </select>
   						</div>
						{{/ifCond}}
   					</td>
   				</tr>
				{{#ifCond memSort '==' 2}}
   				<tr>
   					<td>해시태그</td>
   					<td>
    					<div class="inputForm width-100">
    						<div class="row1">
                                   	<input type="checkbox" name="projKeyword" id="hash1" value="고경력선호">
                                   	<label for="hash1"><span>고경력선호</span></label>
                              	</div>
                              	<div class="row1">
                                   	<input type="checkbox" name="projKeyword" id="hash2" value="고마진상품">
                                   	<label for="hash2"><span>고마진상품</span></label>
                              	</div>
                              	<div class="row1">
                                   	<input type="checkbox" name="projKeyword" id="hash3" value="수익보장_공급자_교체">
                                   	<label for="hash3"><span>수익보장_공급자_교체</span></label></span>
                              	</div>
                              	<div class="row1">
                                   	<input type="checkbox" name="projKeyword" id="hash4" value="수출가능상품">
                                   	<label for="hash4"><span>수출가능상품</span></label>
                              	</div>
                              	<div class="row1">
                                   	<input type="checkbox" name="projKeyword" id="hash5" value="요즘뜨는제품">
                                   	<label for="hash5"><span>요즘뜨는제품</span></label>
                              	</div>
                           </div>
   					</td>
   				</tr>
				{{/ifCond}}
   				<tr>
   					<td>상세사진</td>
   					<td>
   						<!-- File upload card start -->
						<div class="row1">
							<div class="card-block">
								<input type="hidden" id=detailImgList name="detailImgList">
								<div id="fileUpload" class="dragAndDropDiv">Drag & Drop Files Here or Browse Files</div>
								<input type="file" name="projDetailImg" id="fileUpload" style="display:none;" multiple/>
  									<div id="imgBox" class="jFiler-items jFiler-row">
															
								</div>
		                    </div>
		                </div>
						<!-- File upload card end -->                                                            
   					</td>
   				</tr>
   				<tr>
   					<td>첨부파일</td>
   					<td>
    					<div class="row1">
    						<div style="display: flex;">
                               	<input id = "file_route" type="text" class="formControl" readonly="readonly"/>
                             	<label class="fileLable">
                             		파일 선택
                             		<input id = "image" name="projFile" value="" class="jFiler-input-button" type="file" style="display: none;" onchange="javascript:document.getElementById('file_route').value=this.value"/>
                             	</label>
                               </div>
                           </div>
   					</td>
   				</tr>
   			</tbody>
   		</table>
   		<div>
	    	<button class="addBtn" type="submit">
				<img class="addPass2" alt="" src="${pageContext.request.contextPath}/local_assets/img/pass13.png">
				프로젝트 등록
			</button>
	    </div>
   	</form>    	
  	</div>
  </div>

</script>
<!-- jquery file upload js -->
<script src="${pageContext.request.contextPath}/assets/pages/jquery.filer/js/jquery.filer.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/custom-filer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/jquery.fileuploads.init.js" type="text/javascript"></script>    
    </body>
</html>
