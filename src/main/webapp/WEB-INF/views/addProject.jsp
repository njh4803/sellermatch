<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/file.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
    padding-left: 10px;
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
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
        <h2>최고의 공급자와 셀러가 되어 보세요!</h2>
        <h3>아래 간단한 내용만 입력하면, 전세계 파트너를 연결 시켜 드립니다</h3>
    </div>
    <div class="partner_wrap addbox1">
    	<img src="${pageContext.request.contextPath}/main_assets/image/프로젝트등록임시이미지.PNG">
    </div>
    <div class="partner_wrap addbox1">
    	<button id="projAdd" class="check text-center">프로젝트 등록</button>
    </div>
    <div class="partner_wrap addbox1">
    	<input type="checkbox"><a href="javascript:void(0)">개인정보공개 및 등록 약관을 확인 하였음. (등록약관보기)</a>
    </div>
    <div class="partner_wrap addbox2">
    	<hr>
    </div>
    <div class="partner_wrap addbox2 selectFind">
    	<input type="hidden" id="member" name="member" value="${member.memSortName}">
    	<div style="display: inline-block;">
    		<button id="spBtn" class="default-check text-center" value="판매자"><input type="checkbox" class="findCheck spFind" value="판매자">판매자 찾기</button>
    	</div>
    	<div style="display: inline-block;">
    		<button id="ppBtn" class="default-check text-center" value="공급자"><input type="checkbox" class="findCheck ppFind" value="공급자">공급자 찾기</button>
    	</div>
    </div>
    <div class="partner_wrap addbox2">
    	<div class="text-center projectBox">
			<form action="">
	    		<table class="projTable">
	    			<tbody>
	    				<tr>
	    					<td>프로젝트 제목</td>
	    					<td>
	    						<div class="width-70">
	    							<input type="text" class="inputForm" id="projTitle" name="projTitle" placeholder="[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]">
	    						</div>
	    						<div class="width-30">
		    						<select id="projTitleSelect" name="projTitleSelect" class="inputForm">
		    							<option value="" selected="selected">[기본문구선택]</option>
	                               		<option value="판매자를 찾습니다.">판매자를 찾습니다.</option>
	                                	<option value="판매위임합니다.">판매위임합니다.</option>
	                                	<option value="배송대행지를 찾습니다.">배송대행지를 찾습니다.</option>
	                              	</select>
	    						</div>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>상품분류</td>
	    					<td>
	    						<select id="projIndus" name="projIndus" class="inputForm width-100">
                                    <option value="">선택하세요.</option>
                                    <option value="01">도서</option>
                                    <option value="02">의류</option>
                                </select>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>상품가격</td>
	    					<td>
	    						<input type="number" class="inputForm width-100" id="projPrice" name="projPrice" min="0" max="1000000" placeholder="0">
	    					</td>
	    				</tr>
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
	    					<td>판매채널</td>
	    					<td>
		    					<div class="inputForm width-100">
		    						<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="1">
	                                	<span>오픈마켓</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="2">
	                                	<span>종합몰</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="3">
	                                	<span>폐쇄몰</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="4">
	                                	<span>커뮤니티</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="5">
	                                	<span>SNS</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="6">
	                                	<span>오프라인</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="projChannel" value="7">
	                                	<span>해외</span>
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
	    						<input type="number" name="projRecruitNum" id="projRecruitNum" class="inputForm width-100" min="1" max="100" placeholder="1"/>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>상세설명</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>필수요건</td>
	    					<td>
	    						<div class="width-70">
	    							<input type="text" class="inputForm" id="projRequire" name="projRequire">
	    						</div>
	    						<div class="width-30">
		    						<select id="projRequireSelect" name="projRequireSelect" class="inputForm">
		    							<option value="" selected="selected">[기본문구선택]</option>
	                               		<option value="저녁에만 거래가능합니다.">저녁에만 거래가능합니다.</option>
	                                	<option value="필수요건입니다.">필수요건입니다.</option>
	                                	<option value="기본문구입니다.">기본문구입니다.</option>
	                              	</select>
	    						</div>
	    					</td>
	    				</tr>
	    				<tr>
	    					<td>해시태그</td>
	    					<td>
		    					<div class="inputForm width-100">
		    						<div class="row1">
	                                    <label>
	                                    	<input type="checkbox" name="projKeyword" value="고경력선호">
	                                    	<span class="cr">
	                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                    	</span>
	                                    	<span>고경력선호</span>
	                                    </label>
	                               	</div>
	                               	<div class="row1">
	                                    <label>
	                                    	<input type="checkbox" name="projKeyword" value="고마진상품">
	                                    	<span class="cr">
	                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                    	</span>
	                                    	<span>고마진상품</span>
	                                    </label>
	                               	</div>
	                               	<div class="row1">
	                                    <label>
	                                    	<input type="checkbox" name="projKeyword" value="매출보장판매자">
	                                    	<span class="cr">
	                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                    	</span>
	                                    	<span>매출보장 판매자</span>
	                                    </label>
	                               	</div>
	                               	<div class="row1">
	                                    <label>
	                                    	<input type="checkbox" name="projKeyword" value="수출가능상품">
	                                    	<span class="cr">
	                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                    	</span>
	                                    	<span>수출가능상품</span>
	                                    </label>
	                               	</div>
	                               	<div class="row1">
	                                    <label>
	                                    	<input type="checkbox" name="projKeyword" value="요즘뜨는제품">
	                                    	<span class="cr">
	                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                    	</span>
	                                    	<span>요즘 뜨는 제품</span>
	                                    </label>
	                               	</div>
	                            </div>
	    					</td>
	    				</tr>
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
		    						<div style="display: flow-root;">
	                                	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
		                             	<label>
		                             		파일 선택
		                             		<input id = "image" name="projFile" value="" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
		                             	</label>
	                                </div>
	                            </div>
	    					</td>
	    				</tr>
	    			</tbody>
	    		</table>
	    	</form>    	
    	</div>
    </div>
    <div class="partner_wrap">
    	
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
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
    	var tag8 = $('<div class="jFiler-item-info" style="display: none;"></div>').appendTo(tag5);
    	var tag9 = $('<div class="jFiler-item-thumb-image" style="height: 100%;"></div>').appendTo(tag5);
    	var tag10 = $('<img style="max-width: 100%" draggable="false">').appendTo(tag9);
    	var tag11 = $('<span class="jFiler-item-title"><b title="1">1</b></span>').appendTo(tag8);
    	var tag12 = $('<span class="jFiler-item-others">2</span>').appendTo(tag8);
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
    	var img_src = parent.parentNode.parentNode.childNodes[0].childNodes[2].childNodes[0].getAttribute('data-src') ;
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
    // 파일 업로드 끝
    
	$("#projAdd").on("click", function(){
		$(".addbox1").remove();
	});
	
	$("#projTitleSelect").on("change", function(){
		$("#projTitle").val(this.value);
	});
	
	$("#projRequireSelect").on("change", function(){
		$("#projRequire").val(this.value);
	});
	
	$(".findCheck").on("click", function(){
		$(".resultText").remove();
		var memSort = $("#member").val();
		
		if (memSort == "공급자") {
			
		}
		
		var value = this.value;
		if (value != memSort) {
			var text1 = "(귀하는 "+memSort+"입니다. "+value+"찾기만 가능합니다)"
			var text2 = value+"찾기를 원하시면 "+value+"로 가입하세요!";
			swal('알림', text1+'<br>'+text2, 'error')
			this.checked = false
			return;
		}
		console.log($("#spBtn").val());
		console.log(value);
		var tag;
		if (this.checked) {
			if ($("#spBtn").val() != value) {
				$("#spBtn").attr('disabled', true);
				$("#spBtn").attr('class','none-check text-center');
				$("#ppBtn").attr('class','check text-center');
				$(".spFind").attr('disabled', true);
				tag = '<div class="resultText">'+value+'찾기를 선택하셨습니다. (판매자입니다.)</div>';
			}
			if ($("#ppBtn").val() != value) {
				$("#ppBtn").attr('disabled', true);
				$("#ppBtn").attr('class','none-check text-center');
				$("#spBtn").attr('class','check text-center');
				$(".ppFind").attr('disabled', true);
				tag = '<div class="resultText">'+value+'찾기를 선택하셨습니다. (공급자입니다.)</div>';
			}
			$(".selectFind").append(tag);
		} else {
			$("#ppBtn").attr('disabled', false);
			$(".ppFind").attr('disabled', false);
			$("#spBtn").attr('disabled', false);
			$(".spFind").attr('disabled', false);
			$("#ppBtn").attr('class','default-check text-center');
			$("#spBtn").attr('class','default-check text-center');
		}
	});
	$("#projAdd").on("click", function(){
		$(".addbox1").remove();
	});
});
</script>
<!-- jquery file upload js -->
<script src="${pageContext.request.contextPath}/assets/pages/jquery.filer/js/jquery.filer.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/custom-filer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/jquery.fileuploads.init.js" type="text/javascript"></script>    
    </body>
</html>
