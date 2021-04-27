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
												<img id="profile-img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"	src="${pageContext.request.contextPath}/upload/${output.profilePhoto}"/>
											</div>
										</div>
										<div style="">
											<input id = "file_route" type="text" class="form-control" style="display:none; border: none;" readonly="readonly"/>
												<label class="fileLable">사진 선택
													<input id="profile-image" name="profilePhotoFile" class="jFiler-input-button" style="display: none" type="file" 
													onchange="javascript:document.getElementById('file_route').value=this.value" accept=".jpg,.jpeg,.png,.gif,.bmp"/>
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
				    					<select id="profileCareer" name="profileCareer" class="inputForm">
		                                    <option value="0" <c:if test="${output.profileCareer eq '0'}">selected</c:if>>경력없음</option>
		                                    <option value="1" <c:if test="${output.profileCareer eq '1'}">selected</c:if>>1개월 이상 ~ 3개월 미만</option>
		                                    <option value="3" <c:if test="${output.profileCareer eq '3'}">selected</c:if>>3개월 이상 ~ 6개월 미만</option>
		                                    <option value="6" <c:if test="${output.profileCareer eq '6'}">selected</c:if>>6개월 이상 ~ 1년 미만</option>
		                                    <option value="9" <c:if test="${output.profileCareer eq '9'}">selected</c:if>>1년 이상 ~ 3년 미만</option>
		                                    <option value="8" <c:if test="${output.profileCareer eq '8'}">selected</c:if>>3년 이상</option>
		                                </select>
									</div>
									<div class="inputGroup">
				    					<label>채널</label>
				    					<div class="inputForm inputGroup2">
				    						<input id="ch1" type="checkbox" name="profileCh" value="1" <c:if test="${fn:contains(output.profileCh,'1')}"> checked </c:if>/>
		                                	<label for="ch1"><span>오픈마켓</span></label>
		                                	<input id="ch2" type="checkbox" name="profileCh" value="2" <c:if test="${fn:contains(output.profileCh,'2')}"> checked </c:if>/>
		                                	<label for="ch2"><span>종합몰</span></label>
		                                	<input id="ch3" type="checkbox" name="profileCh" value="3" <c:if test="${fn:contains(output.profileCh,'3')}"> checked </c:if>/>
		                                	<label for="ch3"><span>폐쇄몰</span></label>
		                                	<input id="ch4" type="checkbox" name="profileCh" value="4" <c:if test="${fn:contains(output.profileCh,'4')}"> checked </c:if>/>
		                                	<label for="ch4"><span>커뮤니티</span></label>
		                                	<input id="ch5" type="checkbox" name="profileCh" value="5" <c:if test="${fn:contains(output.profileCh,'5')}"> checked </c:if>/>
		                                	<label for="ch5"><span>SNS</span></label>
		                                	<input id="ch6" type="checkbox" name="profileCh" value="6" <c:if test="${fn:contains(output.profileCh,'6')}"> checked </c:if>/>
		                                	<label for="ch6"><span>오프라인</span></label>
		                                	<input id="ch7" type="checkbox" name="profileCh" value="7" <c:if test="${fn:contains(output.profileCh,'7')}"> checked </c:if>/>
		                                	<label for="ch7"><span>해외</span></label>
		                                </div>
									</div>
									</c:if>
									<div class="inputGroup">
				    					<label>등록자 지역</label>
			    						<select id="profileNation" name="profileNation" class="inputForm">
		                                    <option value="">선택하세요.</option>
		                                    <option value="02" <c:if test="${output.profileNation eq '02'}">selected</c:if>>서울</option>
		                                    <option value="031" <c:if test="${output.profileNation eq '031'}">selected</c:if>>경기</option>
		                                    <option value="032" <c:if test="${output.profileNation eq '032'}">selected</c:if>>인천</option>
		                                    <option value="033" <c:if test="${output.profileNation eq '033'}">selected</c:if>>강원</option>
		                                    <option value="041" <c:if test="${output.profileNation eq '041'}">selected</c:if>>충남</option>
		                                    <option value="042" <c:if test="${output.profileNation eq '042'}">selected</c:if>>대전</option>
		                                    <option value="043" <c:if test="${output.profileNation eq '043'}">selected</c:if>>충북</option>
		                                    <option value="051" <c:if test="${output.profileNation eq '051'}">selected</c:if>>부산</option>
		                                    <option value="052" <c:if test="${output.profileNation eq '052'}">selected</c:if>>울산</option>
		                                    <option value="053" <c:if test="${output.profileNation eq '053'}">selected</c:if>>대구</option>
		                                    <option value="054" <c:if test="${output.profileNation eq '054'}">selected</c:if>>경북</option>
		                                    <option value="055" <c:if test="${output.profileNation eq '055'}">selected</c:if>>경남</option>
		                                    <option value="061" <c:if test="${output.profileNation eq '061'}">selected</c:if>>전남</option>
		                                    <option value="062" <c:if test="${output.profileNation eq '062'}">selected</c:if>>광주</option>
		                                    <option value="063" <c:if test="${output.profileNation eq '063'}">selected</c:if>>전북</option>
		                                    <option value="044" <c:if test="${output.profileNation eq '044'}">selected</c:if>>세종특별자치시</option>
		                                    <option value="064" <c:if test="${output.profileNation eq '064'}">selected</c:if>>제주특별자치도</option>
		                                    <option value="999" <c:if test="${output.profileNation eq '999'}">selected</c:if>>해외</option>
		                                </select>
									</div>
									<div class="inputGroup">
				    					<label>상품분야</label>
			    						<select id="profileIndus" name="profileIndus" class="inputForm">
		                                    <option value="">선택하세요.</option>
		                                    <option value="01" <c:if test="${output.profileIndus eq '01'}">selected</c:if>>가구/인테리어</option>
		                                    <option value="02" <c:if test="${output.profileIndus eq '02'}">selected</c:if>>도서</option> 
		                                    <option value="03" <c:if test="${output.profileIndus eq '03'}">selected</c:if>>디지털/가전</option>
		                                    <option value="04" <c:if test="${output.profileIndus eq '04'}">selected</c:if>>생활/건강</option>
		                                    <option value="05" <c:if test="${output.profileIndus eq '05'}">selected</c:if>>스포츠/레저</option>
		                                    <option value="06" <c:if test="${output.profileIndus eq '06'}">selected</c:if>>식품</option>
		                                    <option value="07" <c:if test="${output.profileIndus eq '07'}">selected</c:if>>여가/생활편의</option>
		                                    <option value="08" <c:if test="${output.profileIndus eq '08'}">selected</c:if>>출산/육아</option>
		                                    <option value="09" <c:if test="${output.profileIndus eq '09'}">selected</c:if>>패션의류</option>
		                                    <option value="10" <c:if test="${output.profileIndus eq '10'}">selected</c:if>>패션잡화</option>
		                                    <option value="11" <c:if test="${output.profileIndus eq '11'}">selected</c:if>>화장품/미용</option>
		                                    <option value="12" <c:if test="${output.profileIndus eq '12'}">selected</c:if>>기타</option>
		                                </select>
									</div>
									<div class="inputGroup">
				    					<label>사업자 번호</label>
			    						<input type="text" name="profileBizNum" id="profileBizNum" class="inputForm" value="${output.profileBizNum}"/>
									</div>
									<div class="inputGroup">
				    					<label>사업자 유형</label>
		   								<select id="profileBizSort" name="profileBizSort" class="inputForm">
		                                       <option value="">선택하세요.</option>
		                                       <option value="1" <c:if test="${output.profileBizSort eq '1'}">selected</c:if>>법인사업자</option>
		                                       <option value="2" <c:if test="${output.profileBizSort eq '2'}">selected</c:if>>개인사업자</option>
		                                       <option value="3" <c:if test="${output.profileBizSort eq '3'}">selected</c:if>>간이과세자</option>
		                                       <option value="4" <c:if test="${output.profileBizSort eq '4'}">selected</c:if>>개인</option>
		                                </select>
									</div>
									<c:if test="${member.memSort == '2'}">
									<div class="inputGroup">
				    					<label class="hashtag">해시태그</label>
				    					<div class="inputForm inputGroup2 hashtag">
		                                	<%-- <input id="ht1" type="checkbox" name="profileHashtag" value="다양한채널운영" <c:if test="${fn:contains(output.profileHashtag,'다양한채널운영')}"> checked </c:if> />
		                                	<label for="ht1"><span>다양한채널운영</span></label>
		                                	<input id="ht2" type="checkbox" name="profileHashtag" value="높은매출셀러" <c:if test="${fn:contains(output.profileHashtag,'높은매출셀러')}"> checked </c:if> />
		                                	<label for="ht2"><span>높은매출셀러</span></label>
		                                	<input id="ht3" type="checkbox" name="profileHashtag" value="장기판매경력" <c:if test="${fn:contains(output.profileHashtag,'장기판매경력')}"> checked </c:if> />
		                                	<label for="ht3"><span>장기판매경력</span></label>
		                                	<input id="ht4" type="checkbox" name="profileHashtag" value="탁월한판매능력" <c:if test="${fn:contains(output.profileHashtag,'탁월한판매능력')}"> checked </c:if> />
		                                	<label for="ht4"><span>탁월한판매능력</span></label>
		                                	<input id="ht5" type="checkbox" name="profileHashtag" value="다양한판매분야" <c:if test="${fn:contains(output.profileHashtag,'다양한판매분야')}"> checked </c:if> />
		                                	<label for="ht5"><span>다양한판매분야</span></label> --%>
			                                <div>
						                        <ul id="tag-list">
												<c:if test="${output.hashTag1 != null and output.hashTag1 != ''}">
													<li class="tag-item">
						                        		${output.hashTag1}<span class="del-btn" id="del-btn0" idx="0" data-value="${output.hashTag1}">x</span>
						                        	</li>
												</c:if>
									           	<c:if test="${output.hashTag2 != null}"> 
													<li class="tag-item">
						                        		${output.hashTag2}<span class="del-btn" id="del-btn1" idx="1" data-value="${output.hashTag2}">x</span>		                        		
						                        	</li>
												</c:if>
												<c:if test="${output.hashTag3 != null}">
													<li class="tag-item">
						                        		${output.hashTag3}<span class="del-btn" id="del-btn2" idx="2" data-value="${output.hashTag3}">x</span>
						                        	</li>
												</c:if>
												<c:if test="${output.hashTag4 != null}">
													<li class="tag-item">
						                        		${output.hashTag4}<span class="del-btn" id="del-btn3" idx="3" data-value="${output.hashTag4}">x</span>
						                        	</li>
												</c:if>
												<c:if test="${output.hashTag5 != null}">
													<li class="tag-item">
						                        		${output.hashTag5}<span class="del-btn" id="del-btn4" idx="4" data-value="${output.hashTag5}">x</span>
						                        	</li>
												</c:if>
												</ul>
					                        	<input type="text" class="inputForm" id="tag" placeholder="태그 입력하기 ( 엔터 또는 스페이스바로 입력가능 )">
					                        	<input type="hidden"
					                        	value="<c:if test="${output.hashTag1 != null and output.hashTag1 != ''}">${output.hashTag1}</c:if>
					                        	<c:if test="${output.hashTag2 != null}">, ${output.hashTag2}</c:if>
					                        	<c:if test="${output.hashTag3 != null}">, ${output.hashTag3}</c:if>
					                        	<c:if test="${output.hashTag4 != null}">, ${output.hashTag4}</c:if>
					                        	<c:if test="${output.hashTag5 != null}">, ${output.hashTag5}</c:if>"
					                        	 name="tag" id="rdTag" />
					                        </div>
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
    var tag = {};
    var tag_count = $('.del-btn').length;
    var counter = tag_count+0;
    
    for (var i = 0; i < tag_count; i++) {
    	tag[i] = $('#del-btn'+i).data('value');
	}
    var value = marginTag(); // return array
    console.log(value);
    $("#rdTag").val(value);

    // 태그를 추가한다.
    function addTag (value) {
        tag[counter] = value; // 태그를 Object 안에 추가
        counter++; // counter 증가 삭제를 위한 del-btn 의 고유 id 가 된다.
    }
	
	// 해시태그
    $("#tag").on("keypress", function (e) {
        var self = $(this);
        var checkTag_count = $('input[name=profileHashtag]:checked').length;
        var tag_count = $('.tag-item').length;
        var count = checkTag_count + tag_count + 1;

        // input 에 focus 되있을 때 엔터 및 스페이스바 입력시 구동
        if (e.key === "Enter" || e.keyCode == 32) {

            var tagValue = self.val(); // 값 가져오기

            // 값이 없으면 동작 ㄴㄴ
            if (tagValue !== "") {          	

                // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
                var result = Object.values(tag).filter(function (word) {
                    return word === tagValue;
                })
                
                // 태그 중복 검사
                if (result.length == 0) { 
                	
                	// 태그값 20글자 제한
                	if (tagValue.length > 20) {
                		swal('알림', '20글자까지 입력가능합니다.', 'info');
    				} else if(count > 5){
    					swal('알림', '5개까지 등록가능합니다.', 'info');
    				} else {
                        $("#tag-list").append("<li class='tag-item'>"+tagValue+"<span class='del-btn' idx='"+counter+"'>x</span></li>");
                        addTag(tagValue);
                        self.val("");    					
    				}
                } else {
                	swal('알림', '이미 입력한 태그입니다.', 'info');
                }
            }
            e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
        }
        var value = marginTag(); // return array
        console.log(value);
        $("#rdTag").val(value); 
    });

    // 삭제 버튼 
    // 삭제 버튼은 비동기적 생성이므로 document 최초 생성시가 아닌 검색을 통해 이벤트를 구현시킨다.
    $(document).on("click", ".del-btn", function (e) {
        var index = $(this).attr("idx");
        tag[index] = "";
        $(this).parent().remove();
        var value = marginTag(); // return array
        $("#rdTag").val(value);
    });	

    // 최종적으로 서버에 넘길때 tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
    function marginTag () {
        return Object.values(tag).filter(function (word) {
            return word !== "";
        });
    }
    
    // 해시태그 체크박스 + 직접입력 5개이상 막기
    $(document).on("click", "input[name=profileHashtag]", function(){
        var checkTag_count = $('input[name=profileHashtag]:checked').length;
        var tag_count = $('.tag-item').length;
        var count = checkTag_count + tag_count;
    	if (count > 5) {
    		$(this).prop('checked', false);
    		swal('알림', '5개까지 등록가능합니다.', 'info');
		}
    });
    
	function handleImgfileSelect1(e) {
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
		
	function handleImgfileSelect2(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				return;
			}
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#profile-img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	};
	$(document).on("change", "#profile-image" ,handleImgfileSelect2);
	$(document).on("change", "#image" ,handleImgfileSelect1);
		
	$(document).on("click", "ul.my-tabs li", function(e){
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		if (tab_id == 'my-tab-4') {
			location.href="/myPage/registDelng";
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
		            required: true, minlength: 5, maxlength: 100, 
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
		            minlength: '제목은 최소 5 글자 이상 입력하셔야 합니다.',
		            maxlength: '제목은 최대 100 글자까지 가능합니다.',
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
                window.location = ROOT_URL + '/myPage/profileManage';
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
                window.location = ROOT_URL + '/myPage/profileManage';
            });
        },
    });
});
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>