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
                                                        <h4 class="sub-title">Basic Inputs</h4>
                                                        <form action="${pageContext.request.contextPath}/admin/project/edit" method="post" id="proj_edit_form" name="proj_edit_form" enctype="multipart/form-data">
                                                            <%-- <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품 대표 사진</label>
                                                                <div class="col-sm-9 file_input">
                                                                	<div class="input-group">
                                                                		<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" name="prodPhoto" value="" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div> --%>
                                                            <input type="hidden" id="projId" name="projId">
                                                            <div class="form-group row">
                                                                <label for="projTitle" class="col-sm-3 col-form-label">프로젝트 제목
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <input id="projTitle" type="text" name="projTitle" class="form-control">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projState" class="col-sm-3 col-form-label">프로젝트 상태
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<div class="form-group">
	                                                                    <select id="projState" name="projState" class="form-control">
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
                                                            <div class="form-group row">
                                                                <label for="projSort" class="col-sm-3 col-form-label">회원분류
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                	<select id="projSort" name="projSort" class="form-control">
						                                                <option value="0">일반</option>
						                                                <option value="1">공급자</option>
						                                                <option value="2">판매자</option>
						                                        	</select>
                                                                </div>
                                                            </div>
                                                            <!-- File upload card start -->
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품 상세 사진</label>
                                                                <div class="col-sm-9">
	                                                                <div class="form-group">
													                    <div class="card-block">
													                    	<div id="fileUpload" class="dragAndDropDiv">Drag & Drop Files Here or Browse Files</div>
        																	<input type="file" name="fileUpload" id="fileUpload" style="display:none;" multiple/>
													                    </div>
												                    </div>
											                    </div>
											                </div>
											                <!-- File upload card end -->
                                                            <div class="form-group row">
                                                                <label for="projPrice" class="col-sm-3 col-form-label">상품가격
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <input type="number" id="projPrice" name="projPrice" class="form-control" min="0" value="0">
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label for="projMargin" class="col-sm-3 col-form-label">판매마진
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projMargin" name="projMargin" class="form-control">
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
                                                                    <select id="projNation" name="projNation" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="02">서울</option>
						                                                <option value="031">경기</option>
						                                                <option value="032">인천</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="projSupplyType" class="col-sm-3 col-form-label">공급방법
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-9">
                                                                    <select id="projSupplyType" name="projSupplyType" class="form-control">
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
                                                                    <input type="date" class="form-control" name="projEndDate" id="projEndDate">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">상품분류</label>
                                                                <div class="col-sm-9">
                                                                    <select id="projIndus" name="projIndus" class="form-control">
						                                                <option value="">선택하세요.</option>
						                                                <option value="01">도서</option>
						                                                <option value="02">의류</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="projRecruitNum" class="col-sm-3 control-label">모집인원
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<input type="number" name="projRecruitNum" class="form-control"
																		id="projRecruitNum" min="1"/>
																</div>
															</div>
                                                            <div class="form-group row">
																<label for="projKeyword" class="col-sm-3 col-form-label">상품 키워드
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="고경력선호">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>고경력선호</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="고마진상품">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>고마진상품</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="매출보장판매자">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>매출보장 판매자</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="수출가능상품">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>수출가능상품</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="projKeyword" type="checkbox" name="projKeyword" value="요즘뜨는제품">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>요즘 뜨는 제품</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">첨부파일</label>
                                                                <div class="col-sm-9 file_input">
                                                                	<div class="input-group">
                                                                		<%-- <div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div> --%>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" name="projFile" value="" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="projProdCerti" class="col-sm-3 col-form-label">상품 검증</label>
																<div class="col-sm-9">
																	<select id="projProdCerti" name="projProdCerti" class="form-control">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
																</div>
															</div>
															<div class="form-group row">
																<label for="projDetail" class="col-sm-3 col-form-label">상품 상세내용
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-9">
																	<textarea class="form-control" style="width: 100%; height: 300px" name="projDetail" id="projDetail"></textarea>
																</div>
															</div>
															<div class="modal-footer">
																<div style="text-align-last: center;">
																	<input class="btn form-bg-primary" type="submit" value="수정">
																	<input class="btn form-bg-submit" type="button" value="취소" data-dismiss="modal">
																</div>
															</div>
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
    /* var objDragAndDrop = $(".dragAndDropDiv");
    
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
    
        handleFileUpload(files,objDragAndDrop);
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
        $('input[type=file]').trigger('click');
    });

    $('input[type=file]').on('change', function(e) {
        var files = e.originalEvent.target.files;
        handleFileUpload(files,objDragAndDrop);
    });
    
    function handleFileUpload(files,obj)
    {
       for (var i = 0; i < files.length; i++) 
       {
            var fd = ('#proj_edit_form');
            fd.append('projDetailImg', files[i]);
     
            var status = new createStatusbar(obj); //Using this we can set progress.
            status.setFileNameSize(files[i].name,files[i].size);
            //sendFileToServer(fd,status);
     
       }
    }
    
    var rowCount=0;
    function createStatusbar(obj){
            
        rowCount++;
        var row="odd";
        if(rowCount %2 ==0) row ="even";
        this.statusbar = $("<div class='statusbar "+row+"'></div>");
        this.filename = $("<div class='filename'></div>").appendTo(this.statusbar);
        this.size = $("<div class='filesize'></div>").appendTo(this.statusbar);
        this.progressBar = $("<div class='progressBar'><div></div></div>").appendTo(this.statusbar);
        this.abort = $("<div class='abort'>중지</div>").appendTo(this.statusbar);
        
        obj.after(this.statusbar);
     
        this.setFileNameSize = function(name,size){
            var sizeStr="";
            var sizeKB = size/1024;
            if(parseInt(sizeKB) > 1024){
                var sizeMB = sizeKB/1024;
                sizeStr = sizeMB.toFixed(2)+" MB";
            }else{
                sizeStr = sizeKB.toFixed(2)+" KB";
            }
     
            this.filename.html(name);
            this.size.html(sizeStr);
        }
        
        this.setProgress = function(progress){       
            var progressBarWidth =progress*this.progressBar.width()/ 100;  
            this.progressBar.find('div').animate({ width: progressBarWidth }, 10).html(progress + "% ");
            if(parseInt(progress) >= 100)
            {
                this.abort.hide();
            }
        }
        
        this.setAbort = function(jqxhr){
            var sb = this.statusbar;
            this.abort.click(function()
            {
                jqxhr.abort();
                sb.hide();
            });
        }
    }
    
    function sendFileToServer(formData,status)
    {
        var uploadURL = "/fileUpload/post"; //Upload URL
        var extraData ={}; //Extra Data.
        var jqXHR=$.ajax({
                xhr: function() {
                var xhrobj = $.ajaxSettings.xhr();
                if (xhrobj.upload) {
                        xhrobj.upload.addEventListener('progress', function(event) {
                            var percent = 0;
                            var position = event.loaded || event.position;
                            var total = event.total;
                            if (event.lengthComputable) {
                                percent = Math.ceil(position / total * 100);
                            }
                            //Set progress
                            status.setProgress(percent);
                        }, false);
                    }
                return xhrobj;
            },
            url: uploadURL,
            type: "POST",
            contentType:false,
            processData: false,
            cache: false,
            data: formData,
            success: function(data){
                status.setProgress(100);
     
                //$("#status1").append("File upload Done<br>");           
            }
        }); 
     
        status.setAbort(jqXHR);
    } */
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
	var projDetailImg = [];
	
	$('.content')
	  .on("dragover", dragOver)
	  .on("dragleave", dragOver)
	  .on("drop", uploadFiles);

	function dragOver(e){
	  e.stopPropagation();
	  e.preventDefault();
	  if (e.type == "dragover") {
	    $(e.target).css({
	      "background-color": "black",
	      "outline-offset": "-20px"
	    });
	  } else {
	      $(e.target).css({
	      "background-color": "gray",
	      "outline-offset": "-10px"
	    });
	    }
	}

	function uploadFiles(e) {
	    e.stopPropagation();
	    e.preventDefault();
	    dragOver(e);
	  
	    e.dataTransfer = e.originalEvent.dataTransfer;
	    console.log(e.dataTransfer.files);
	    var files = e.target.files || e.dataTransfer.files;
	    if (files.length > 1) {
	        alert('하나씩 첨부하세요.');
	        return;
	    }
	    if (files[0].type.match(/image.*/)) {
	                $(e.target).css({
	            "background-image": "url(" + window.URL.createObjectURL(files[0]) + ")",
	            "outline": "none",
	            "background-size": "100% 100%"
	        });
	    }else{
	      alert('이미지가 아닙니다.');
	      return;
	    }
	    projDetailImg.push(e.dataTransfer.files);
	    console.log(projDetailImg);
	}

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