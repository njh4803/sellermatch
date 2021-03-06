<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
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
.modal-header {
	display: block;
}
.content{
    outline: 2px dashed #92b0b3 ;
    outline-offset:-10px;  
    text-align: center;
    transition: all .15s ease-in-out;
    height: 100%;
    width: 19%;
    background-color: gray;
    margin-left: 6px;
    float: left;
}

</style>
  <!-- Modal -->
  <div class="modal fade" id="editModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세정보</h4>
        </div>
        <div class="modal-body">
													<div class="card-block">
                                                        <form action="${pageContext.request.contextPath}/admin/project/edit" method="post" id="proj_edit_form" name="proj_edit_form" enctype="multipart/form-data">
                                                            <input type="hidden" id="projId" name="projId">
                                                            <div class="form-group row">
                                                                <label for="projSort" class="col-sm-3 col-form-label">프로젝트 분류
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<select id="projSort" name="projSort" class="form-control" disabled="disabled">
						                                                <option value="1">공급자</option>
						                                                <option value="2">판매자</option>
						                                        	</select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projTitle" class="col-sm-3 col-form-label">프로젝트 제목
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projTitle" type="text" name="projTitle" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projState" class="col-sm-3 col-form-label">프로젝트 상태
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <select id="projState" name="projState" class="form-control" disabled="disabled">
							                                                <option value="0">중지</option>
							                                                <option value="1">정상</option>
							                                            </select>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projRegDate" class="col-sm-3 col-form-label">프로젝트 등록일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projRegDate" type="datetime" name="projRegDate" class="form-control" readonly>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projEditDate" class="col-sm-3 col-form-label">프로젝트 수정일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projEditDate" type="datetime" name="projEditDate" class="form-control" readonly>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projMemId" class="col-sm-3 col-form-label">등록자 아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projMemId" type="text" name="projMemId" class="form-control" readonly>
																	</div>
                                                                </div>
                                                            </div>
                                                            <!-- File upload card start -->
                                                            <!-- <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품 상세 사진</label>
                                                                <div class="col-sm-9">
	                                                                <div class="form-group">
													                    <div class="card-block">
													                    	<input type="hidden" id=detailImgList name="detailImgList">
													                    	<div id="fileUpload" class="dragAndDropDiv">Drag & Drop Files Here or Browse Files</div>
        																	<input type="file" name="projDetailImg" id="fileUpload" style="display:none;" multiple/>
       																	    <div id="imgBox" class="jFiler-items jFiler-row">
																				
																			</div>
													                    </div>
												                    </div>
											                    </div>
											                </div> -->
											                <!-- File upload card end -->
                                                            <div class="form-group row">
                                                                <label for="projPrice" class="col-sm-3 col-form-label">상품가격
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <input type="number" id="projPrice" name="projPrice" class="form-control" min="0" value="0" readonly="readonly">
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label for="projMargin" class="col-sm-3 col-form-label">판매마진
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projMargin" name="projMargin" class="form-control" disabled="disabled">
						                                                <option value="">선택하세요.</option>
						                                                <option value="10">10%이하</option>
						                                                <option value="20">11%~20%</option>
						                                                <option value="30">21%~30%</option>
						                                                <option value="31">30%초과</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projNation" class="col-sm-3 col-form-label">등록지역
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projNation" name="projNation" class="form-control" disabled="disabled">
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
									                                    <option value="064">제주특별자치도</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projSupplyType" class="col-sm-3 col-form-label">공급방법
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projSupplyType" name="projSupplyType" class="form-control" disabled="disabled">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">OEM</option>
						                                                <option value="2">위탁판매</option>
						                                                <option value="3">도매공급</option>
						                                                <option value="4">운영대행</option>
						                                                <option value="5">경매공급</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projEndDate" class="col-sm-3 col-form-label">모집마감일</label>
                                                                <div class="col-sm-9">
                                                                    <input type="date" class="form-control" name="projEndDate" id="projEndDate" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품분류</label>
                                                                <div class="col-sm-9">
                                                                    <select id="projIndus" name="projIndus" class="form-control" disabled="disabled">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">가구/인테리어</option>
						                                                <option value="02">도서</option>
						                                                <option value="03">디지털/가전</option>
						                                                <option value="04">생활/건강</option>
						                                                <option value="05">스포츠/레저</option>
						                                                <option value="06">식품</option>
						                                                <option value="07">여가/생활편의</option>
						                                                <option value="08">출산/육아</option>
						                                                <option value="09">패션의류</option>
						                                                <option value="10">패션잡화</option>
						                                                <option value="11">화장품/미용</option>
						                                                <option value="12">기타</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="projRecruitNum" class="col-sm-3 control-label">모집인원
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<input type="number" name="projRecruitNum" class="form-control"
																		id="projRecruitNum" min="1" readonly="readonly"/>
																</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">채널</label>
                                                                <div class="col-sm-9">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="1"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오픈마켓</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="2"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>종합몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="3"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>폐쇄몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="4"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>커뮤니티</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="5"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>SNS</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="6"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오프라인</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projChannel" type="checkbox" name="projChannel" value="7" disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>해외</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="projKeyword" class="col-sm-3 col-form-label">상품 키워드
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
                                                                	<span id="hashTag1"></span>
                                                                   	<span id="hashTag2"></span>
                                                                   	<span id="hashTag3"></span>
                                                                   	<span id="hashTag4"></span>
                                                                   	<span id="hashTag5"></span>
                                                         		</div>
															</div>
															<!-- <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">첨부파일</label>
                                                                <div class="col-sm-9 file_input">
                                                                	<div class="input-group"> -->
                                                                		<%-- <div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div> --%>
									                                    <!-- <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" name="projFile" value="" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div> -->
                                                            <div class="form-group row">
																<label for="projProdCerti" class="col-sm-3 col-form-label">상품 검증</label>
																<div class="col-sm-9">
																	<select id="projProdCerti" name="projProdCerti" class="form-control" disabled="disabled">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
																</div>
															</div>
															<div class="form-group row">
                                                                <label for="projRequire" class="col-sm-3 col-form-label">필수조건
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projRequire" type="text" name="projRequire" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div> 
															<div class="form-group row">
																<label for="projDetail" class="col-sm-3 col-form-label">상품 상세내용
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<textarea class="form-control" style="width: 100%; height: 300px" name="projDetail" id="projDetail" readonly="readonly"></textarea>
																</div>
															</div>
															<!-- <div class="modal-footer">
																<div style="text-align-last: center;">
																	<input class="btn form-bg-primary" type="submit" value="수정">
																	<input class="btn form-bg-submit" type="button" value="취소" data-dismiss="modal">
																</div>
															</div> -->
                                                                </form>
                                                                <!-- 회원가입 form end -->
          </div>
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">

	
$(document).ready(function() {
	$("#image").on("change", handleImgfileSelect);
	
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
    	var tag8 = $('<div class="jFiler-item-info"></div>').appendTo(tag5);
    	var tag9 = $('<div class="jFiler-item-thumb-image"></div>').appendTo(tag5);
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
		/* $.ajax({
			type: "DELETE",
			url: ROOT_URL + "/admin/project/fileUpload",
			data: form.serialize(),
			beforeSend: function() {
			 
			},
			success: function() {
				
			}
		}); */
    });
});
////////////////////////////////////////////
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

$(function(){

	$.validator.addMethod("kor", function(value, element) {
		return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
	});

	$.validator.addMethod("phone", function(value, element) {
		return this.optional(element)
				|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
				|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
	});
	
    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
    $('#proj_edit_form').validate({
    	/* 
			required 필수 항목으로 설정한다. (true, false)
			remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
		*/
		
		rules: {
            // [프로젝트 제목] 필수 + 알파벳,숫자 조합만 허용
            projTitle: {
                required: true, minlength: 5, maxlength: 100, 
            },
            // [상품가격] 필수
            projState: 'required',
            // [상품마진] 필수
            projPrice: {
                required: true, min: 1, 
            },
            // [등록지역] 필수
            projMargin: 'required',
            // [공급방법] 필수
           	projSupplyType: 'required',
            // [등록지역] 필수
            projIndus: 'required',
         	// [상품 상세내용] 필수
            projDetail: 'required',
            projEndDate: 'required',
        },
        messages: {
        	projTitle: {
                required: '프로젝트 제목을 입력해주세요.',
                minlength: '제목은 최소 {5}글자 이상 입력하셔야 합니다.',
                maxlength: '제목은 최대 {100}글자까지 가능합니다.',
            },
            projState: {
                required: '프로젝트 상태를 선택해주세요.',
            },
            projPrice: {
                required: '상품가격을 입력해주세요.',
                min: "0이상 입력해주세요.",
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
        }
    });
    
    $('#proj_edit_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        success: function(json) {
            swal('알림', '프로젝트가 수정되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/admin/projectList';
            });
        },
    });
});
</script>