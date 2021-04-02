<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<%-- <link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/file.css"> --%>
<link href="${pageContext.request.contextPath}/assets/css/profileManage.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="partner_bnr3">
    		<div class="clearfix">
	    		<div class="mypage-top-left">
	    			<div class="mypage-title">회원정보 / 프로필관리</div>
		    		<div class="mypage-text">나의 활동 정보를 한 눈에 볼 수 있습니다.</div>
	    		</div>
		    	<div class="mypage-top-right">
		    		<img class="mypage-img" alt="" src="${pageContext.request.contextPath}/assets/img/mypage-img.png">
		    	</div>    		
    		</div>
	    	<hr class="mypage-hr">
	       	<ul class="my-tabs">
				<li class="tab-link" data-tab="my-tab-1" id="select-my-tab1">MY홈</li>
				<li class="tab-link" data-tab="my-tab-2" id="select-my-tab2">가입정보관리</li>
				<li class="tab-link current" data-tab="my-tab-3" id="select-my-tab3">프로필관리</li>
				<li class="tab-link2" data-tab="my-tab-4" id="select-my-tab4">거래관리</li>
			</ul>
			<div id="my-tab-3" class="tab-content2">
			    <div class="partner_wrap addbox2">
			    	<div class="text-center profileBox">
						<form action="${pageContext.request.contextPath}/profile" id="profile_form" name="profile_form" method="post" enctype="multipart/form-data">
							<input type="hidden" name="profileId" id="profileId" value="${output.profileId}">
							<input type="hidden" name="profileSort" id="profileSort" value="${output.profileSort}">
							<input type="hidden" name="profileMemId" id="profileMemId" value="${output.profileMemId}">
							<div class="infoContainer">
								<div>
									<div>
										<div style="margin-top: 20px;">
											<div class="imageBox" style="display:inline-block; width: 150px; height: 150px; overflow: hidden; text-align: center; border-radius: 50%;">
												<img id="profile-img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"	src="${pageContext.request.contextPath}/assets/images/user.png"/>
											</div>
										</div>
										<div style="">
											<input id = "file_route" type="text" class="form-control" style="display:none; border: none;" readonly="readonly"/>
												<label class="fileLable">사진 선택
													<input id="profile-image" name="profilePhotoFile" class="jFiler-input-button" style="display: none" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
												</label>
										</div>
									</div>
								</div>
								<div class="infoBox">
									<div class="inputGroup">
									<c:if test="${member.memSort == '1'}">
										<label>공급자 소개</label>
										<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="위탁공급 전문입니다" value="${output.profileIntro}">
									</c:if>
				    				<c:if test="${member.memSort == '2'}">
										<label>판매자 소개</label>
										<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="오픈마켓 전문 셀러입니다" value="${output.profileIntro}">
									</c:if>	
				    					
									</div>
									<c:if test="${member.memSort == '2'}">
									<div class="inputGroup">
				    					<label>매출 규모</label>
				    					<input type="number" class="inputForm" id="profileVolume" name="profileVolume" placeholder="연 매출" step="1000000" min="0" value="${output.profileVolume}">
									</div>
									<div class="inputGroup">
				    					<label>판매경력</label>
				    					<select id="profileCareer" name="profileCareer" class="inputForm" value="${output.profileCareer}">
		                                    <option value="0">경력없음</option>
		                                    <option value="1">1개월 이상 ~ 3개월 미만</option>
		                                    <option value="3">3개월 이상 ~ 6개월 미만</option>
		                                    <option value="6">6개월 이상 ~ 1년 미만</option>
		                                    <option value="9">1년 이상 ~ 3년 미만</option>
		                                    <option value="8">3년 이상</option>
		                                </select>
									</div>
									<div class="inputGroup">
				    					<label>채널</label>
				    					<div class="inputForm inputGroup2">
				    						<input id="ch1" type="checkbox" name="profileCh" value="1">
		                                	<label for="ch1"><span>오픈마켓</span></label>
		                                	<input id="ch2" type="checkbox" name="profileCh" value="2">
		                                	<label for="ch2"><span>종합몰</span></label>
		                                	<input id="ch3" type="checkbox" name="profileCh" value="3">
		                                	<label for="ch3"><span>폐쇄몰</span></label>
		                                	<input id="ch4" type="checkbox" name="profileCh" value="4">
		                                	<label for="ch4"><span>커뮤니티</span></label>
		                                	<input id="ch5" type="checkbox" name="profileCh" value="5">
		                                	<label for="ch5"><span>SNS</span></label>
		                                	<input id="ch6" type="checkbox" name="profileCh" value="6">
		                                	<label for="ch6"><span>오프라인</span></label>
		                                	<input id="ch7" type="checkbox" name="profileCh" value="7">
		                                	<label for="ch7"><span>해외</span></label>
		                                </div>
									</div>
									</c:if>
									<div class="inputGroup">
				    					<label>등록자 지역</label>
			    						<select id="profileNation" name="profileNation" class="inputForm" value="${output.profileNation}">
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
									</div>
									<div class="inputGroup">
				    					<label>상품분야</label>
			    						<select id="profileIndus" name="profileIndus" class="inputForm" value="${output.profileIndus}">
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
									<div class="inputGroup">
				    					<label>사업자 번호</label>
			    						<input type="text" name="profileBizNum" id="profileBizNum" class="inputForm" value="${output.profileBizNum}"/>
									</div>
									<div class="inputGroup">
				    					<label>사업자 유형</label>
		   								<select id="profileBizSort" name="profileBizSort" class="inputForm" value="${output.profileBizSort}">
		                                       <option value="">선택하세요.</option>
		                                       <option value="1">법인사업자</option>
		                                       <option value="2">개인사업자</option>
		                                       <option value="3">간이과세자</option>
		                                       <option value="4">개인</option>
		                                       <option value="5">기타</option>
		                                </select>
									</div>
									<c:if test="${member.memSort == '2'}">
									<div class="inputGroup">
				    					<label>해시태그</label>
				    					<div class="inputForm inputGroup2">
		                                	<input id="ht1" type="checkbox" name="profileHashtag" value="다양한 채널운영">
		                                	<label for="ht1"><span>다양한 채널운영</span></label>
		                                	<input id="ht2" type="checkbox" name="profileHashtag" value="높은 매출 셀러">
		                                	<label for="ht2"><span>높은 매출 셀러</span></label>
		                                	<input id="ht3" type="checkbox" name="profileHashtag" value="장기판매경력">
		                                	<label for="ht3"><span>장기판매경력</span></label>
		                                	<input id="ht4" type="checkbox" name="profileHashtag" value="탁월한 판매능력">
		                                	<label for="ht4"><span>탁월한 판매능력</span></label>
		                                	<input id="ht5" type="checkbox" name="profileHashtag" value="다양한 판매분야">
		                                	<label for="ht5"><span>다양한 판매분야</span></label>
				                        </div>
									</div>
									</c:if>
								</div>							
							</div>
					   		<div>
		    					<button type="submit" class="editBtn">
		    						수정하기
		    					</button>
		    				</div>	
					   	</form>
					</div>
				</div>
			</div> 	
    	</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", "ul.my-tabs li", function(e){
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		if (tab_id == 'my-tab-4') {
			location.href="/myPage/delngManage/registDelng";
		}
		if (tab_id == 'my-tab-1') {
			location.href="/myPage/myHome";
		}
		if (tab_id == 'my-tab-2') {
			location.href="/myPage/joinManage";
		}
		if (tab_id == 'my-tab-3') {
			location.href="/myPage/profileManage";
		}
	});
	
	//프로필 수정
	$(document).on("focus", "#profile_form", function(e){
		
		$('#profile_form').validate({
			
		    rules: {
		        // [자기소개] 필수
		        profileIntro: {
		            required: true, minlength: 5, maxlength: 20, 
		        },
		        // [상품분류] 필수
		        profileIndus: 'required',
		     	// [채널] 필수
		        profileCh: 'required',
		     	// [등록자 지역] 필수
		        profileNation: 'required',
		    },
		    messages: {
		        profileIntro: {
		            required: '소개를 입력해주세요.',
		            minlength: '제목은 최소 {5}글자 이상 입력하셔야 합니다.',
		            maxlength: '제목은 최대 {20}글자까지 가능합니다.',
		        },
		        profileIndus: '상품분류를 선택해주세요.',
		        profileCh: '채널을 선택해주세요.',
		        profileNation: '등록자 지역을 선택해주세요.',
		    }
		});
	});

    $('#profile_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        success: function(json) {
            swal('알림', '프로필이 수정되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/member/myPage';
            });
        },
    });
    
    $(document).on("click", "#sendAuthEmail", function(e){
	    const memEmail = $("#memEmail").val();
	
	    if (!memEmail) {
	    	swal('알림', '이메일을 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/admin/member/sendAuthEmail', {
	    	memEmail: memEmail
	    }, function(json) {
	    	swal('확인', '인증번호가 발송되었습니다.', 'success');
	    });
	});
    $(document).on("click", "#authConfirm", function(e){
	    const auth_confirm = $("#auth_confirm").val();
	
	    if (!auth_confirm) {
	    	swal('알림', '인증번호를 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/admin/member/authConfirm', {
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
    
	$.validator.addMethod("phone", function(value, element) {
		return this.optional(element)
				|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
				|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
	});
	
	$.validator.addMethod("passwordCk",  function( value, element ) {

		return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);

	}); 
	
    $('#memEdit_form').validate({
		
        rules: {
            // [비밀번호] 필수 + 글자수 길이 제한
            memPw: { passwordCk:true, minlength: 6, maxlength: 30 },
            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
            memPw_confirm: { equalTo: '#memPw' },
            // [연락처]
            memTel: { phone: true, minlength: 9, maxlength: 11 },
         	// [닉네임] 필수
            memNick: 'required',
            
        },
        messages: {
        	memPw: {
                passwordCk: '비밀번호는 문자 + 숫자 + 특수문자를 포함하셔야 합니다.',
                minlength: '비밀번호는 최소 {6}글자 이상 입력하셔야 합니다.',
                maxlength: '비밀번호는 최대 {30}글자까지 가능합니다.',
            },
            memPw_confirm: {
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
            memNick: '닉네임을 입력해주세요.',
        }
    });
    
    $('#memEdit_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        success: function(json) {
            swal('알림', '회원정보가 수정되었습니다.', 'success').then(function(result) {
                window.location = ROOT_URL + '/member/myPage';
            });
        },
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
});
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>