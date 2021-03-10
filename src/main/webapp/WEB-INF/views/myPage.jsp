<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<%-- <link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/file.css"> --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/myPage.css">

<div class="partner_bnr">
    <div class="partner_wrap">
    	<div class="mypage-title">회원정보 / 프로필관리</div>
       	<ul class="my-tabs">
			<li class="tab-link current" data-tab="my-tab-1" id="select-my-tab1">MY홈</li>
			<li class="tab-link" data-tab="my-tab-2" id="select-my-tab2">가입정보관리</li>
			<li class="tab-link" data-tab="my-tab-3" id="select-my-tab3">프로필관리</li>
			<li class="tab-link" data-tab="my-tab-4" id="select-my-tab4">프로젝트관리</li>
		</ul>
		<div id="my-tab-1" class="tab-content2 current">
			<div class="my_home clearfix">
				<div class="myBox">
					<div style="float: left;">
						<c:if test="${output.memRname == '1'}">
							<div class="authBox">신원<br>인증</div>
						</c:if>
						<c:if test="${output.memRname == '0'}">
							<div class="not-authBox">신원<br>미인증</div>
						</c:if>
						<c:if test="${output.profileBizCerti == '1'}">
							<div class="authBox">사업자<br>인증</div>
						</c:if>
						<c:if test="${output.profileBizCerti == '0'}">
							<div class="not-authBox">사업자<br>미인증</div>
						</c:if>
						<c:if test="${output.profileSaleChk == '1'}">
							<div class="authBox">매출<br>검증</div>
						</c:if>
						<c:if test="${output.profileSaleChk == '0'}">
							<div class="not-authBox">매출<br>미검증</div>
						</c:if>
						<c:if test="${output.profileChChk == '1'}">
							<div class="authBox">채널<br>검증</div>
						</c:if>
						<c:if test="${output.profileChChk == '0'}">
							<div class="not-authBox">채널<br>미검증</div>
						</c:if>
					</div>
					<div class="textBox1">${output.profileGrade}</div>
					<div class="textBox2">${output.memNick}님</div>
				</div>
				<div class="myBox2">
					<div class="myBox2-1">
						<div class="textBox1">프로젝트 등록</div>
						<div class="textBox2 projAddCount" id="projAddCount" data-value="${output.projAddCount}">${output.projAddCount}건</div>
					</div>
					<div class="myBox2-2">
						<div class="textBox1">평가건수</div>
						<div class="textBox2">0건</div>
					</div>
					<div class="myBox2-3">
						<div class="textBox1">공급자 평가점수</div>	
						<div class="textBox2">0점</div>
					</div>
				</div>
			</div>
			<div>
				<div class="myBox3">
					<div class="textBox1">
						<div class="myBox-row">
							<img class="authImg" alt="" src="${pageContext.request.contextPath}/assets/img/auth01.png">
							간단한 인증 한번으로<br>
							경쟁력을 높여보세요!
						</div>
						<div class="myBox-row3">
							<button>바로 인증하기</button>
						</div>
					</div>
					<div class="textBox2" style="margin: 0 14.5px;">
						<div class="myBox-row2">프로젝트 관리</div>
						<div class="myBox-row3">
							<button class="projAddCount">바로가기</button>
						</div>
					</div>
					<div class="textBox2">
						<div class="myBox-row2">관심등록리스트(26)</div>
						<div class="myBox-row3">
							<button>바로가기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="my-tab-2" class="tab-content2">
		    <div class="partner_wrap addbox2">
		    	<div class="text-center profileBox">
					<form action="${pageContext.request.contextPath}/member/editOk" id="memEdit_form" name="memEdit_form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="memRname" id="memRname">
						<input type="hidden" name="memSort" id="memSort">
						<div class="infoContainer">
							<div>
								<div>
									<div style="margin-top: 20px;">
										<div class="imageBox" style="display:inline-block; width: 150px; height: 150px; overflow: hidden; text-align: center; border-radius: 50%;">
											<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"	src="${pageContext.request.contextPath}/assets/images/user.png"/>
										</div>
									</div>
									<div style="">
										<input id = "file_route" type="text" class="form-control" style="display:none; border: none;" readonly="readonly"/>
											<label class="fileLable">사진 선택
												<input id="image" name="memPhoto" class="jFiler-input-button" style="display: none" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
											</label>
									</div>
								</div>
							</div>
							<div class="infoBox">
								<div class="inputGroup">
			    					<label>아이디</label>
			    					<input id="memId" type="text" name="memId" class="inputForm" placeholder="이메일 입력" readonly="readonly">
								</div>
								<div class="inputGroup">
									<label>비밀번호</label>
									<input type="password" id="memPw" name="memPw" class="inputForm" placeholder="영문,숫자,특수문자 조합 최소 6글자">
								</div>
								<div class="inputGroup">
									<label>비밀번호 확인</label>
			    					<input type="password" name="memPw_confirm" class="inputForm" id="memPw_confirm"/>
								</div>
								<div class="inputGroup">
									<label>이름</label>
			    					<input type="text" class="inputForm" name="memName" id="memName">
								</div>
								<div class="inputGroup">
									<label>닉네임</label>
			    					<input type="text" class="inputForm" name="memNick" id="memNick">
								</div>
								<div class="inputGroup">
									<label>국가</label>
			    					<select id="memCountry" name="memCountry" class="inputForm">
                                           <option value="">선택하세요.</option>
                                           <option value="01">대한민국</option>
                                           <option value="02">베트남</option>
                                    </select>
								</div>
								<div class="inputGroup">
									<label>지역</label>
		    						<select id="memNation" name="memNation" class="inputForm">
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
									<label>연락처</label>
				    				<input type="text" name="memTel" class="inputForm" id="memTel" placeholder="`-`없이 숫자만 입력" />
								</div>
								<div class="inputGroup">
									<label>우편번호</label>
		    						<input type="text" name="memPost" class="inputForm" id="postcode" maxlength="5" readonly>
									<button type="button" class="btn form-bg-primary postcode-finder"
										data-postcode="postcode" data-addr1="addr1"
										data-frame="postcode-frame" onClick="exeDaumPostcode()">우편번호검색</button>
								</div>
								<div class="inputGroup">
									<label>주소</label>
			    					<input type="text" name="memAddr" class="inputForm" id="memAddr" readonly />
								</div>
								<div class="inputGroup">
									<label>상세주소</label>
									<input type="text" name="memAddr2" class="inputForm" id="memAddr2"/>
								</div>
								<div class="inputGroup">
									<label>이메일 인증</label>
		    						<input type="text" name="memEmail" class="inputForm" id="memEmail" />
									<button type="button" id="sendAuthEmail" class="btn form-bg-primary">인증번호 발송</button>
								</div>
			    				<div class="inputGroup">
			    					<label>이메일 인증번호</label>
		    						<input type="text" name="auth_confirm" class="inputForm" id="auth_confirm" />
									<button type="button" id="authConfirm" class="btn form-bg-primary">인증번호 확인</button>			    				
			    				</div>
			    				<div class="inputGroup">
			    					<label>회원가입일</label>
			    					<input type="text" name="memDate" class="inputForm" id="memDate" readonly />
			    				</div>
			    			</div>
		    				<div>
		    					<button type="submit" class="editBtn">
			    					<img class="editPass" alt="" src="${pageContext.request.contextPath}/assets/img/pass13.png">
			    					수정완료
		    					</button>
		    				</div>	
				   		</div>
				   	</form>
				</div>
			</div>
		</div>
		<div id="my-tab-3" class="tab-content2">
		    <div class="partner_wrap addbox2">
		    	<div class="text-center profileBox">
					<form action="${pageContext.request.contextPath}/profile" id="profile_form" name="profile_form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="profileId" id="profileId">
						<input type="hidden" name="profileSort" id="profileSort">
						<input type="hidden" name="profileMemId" id="profileMemId">
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
								<c:if test="${output.memSort == '1'}">
									<label>공급자 소개</label>
									<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="위탁공급 전문입니다">
								</c:if>
			    				<c:if test="${output.memSort == '2'}">
									<label>판매자 소개</label>
									<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="오픈마켓 전문 셀러입니다">
								</c:if>	
			    					
								</div>
								<c:if test="${output.memSort == '2'}">
								<div class="inputGroup">
			    					<label>매출 규모</label>
			    					<input type="number" class="inputForm" id="profileVolume" name="profileVolume" placeholder="연 매출">
								</div>
								<div class="inputGroup">
			    					<label>판매경력</label>
			    					<select id="profileCareer" name="profileCareer" class="inputForm">
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
			    					<div class="inputForm inputGroup2" style="border: none; width: 581px;">
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
		    						<select id="profileNation" name="profileNation" class="inputForm">
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
		    						<select id="profileIndus" name="profileIndus" class="inputForm">
	                                    <option value="">선택하세요.</option>
	                                    <c:forEach var="indusList" items="${indusList}">
	                                    	<option value="${indusList.indusId}">${indusList.indusName}</option>
	                                    </c:forEach>
	                                </select>
								</div>
								<div class="inputGroup">
			    					<label>사업자 번호</label>
		    						<input type="text" name="profileBizNum" id="profileBizNum" class="inputForm"/>
								</div>
								<div class="inputGroup">
			    					<label>사업자 유형</label>
	   								<select id="profileBizSort" name="profileBizSort" class="inputForm">
	                                       <option value="">선택하세요.</option>
	                                       <option value="1">법인사업자</option>
	                                       <option value="2">개인사업자</option>
	                                       <option value="3">간이과세자</option>
	                                       <option value="4">개인</option>
	                                       <option value="5">기타</option>
	                                </select>
								</div>
								<c:if test="${output.memSort == '2'}">
								<div class="inputGroup">
			    					<label>해시태그</label>
			    					<div class="inputForm inputGroup2" style="border: none; width: 581px;">
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
	    						<img class="editPass" alt="" src="${pageContext.request.contextPath}/assets/img/pass13.png">
	    						수정완료
	    					</button>
	    				</div>	
				   	</form>
				</div>
			</div>
		</div>
		<div id="my-tab-4" class="tab-content2">
			<div id="myProject">
				<div style="display: inline-block;">
					<div>
						<div>등록한 것</div>
						<div>2건</div>
					</div>
					<div>
						<div>제안 받은 것</div>
						<div>2건</div>
					</div>
				</div>
				<table id="myProject-table">
					<thead>
						<tr>
							<th>등록일</th>
							<th>종류</th>
							<th>프로젝트명</th>
							<th>등록자 닉네임</th>
							<th>마감일</th>
							<th>지원자 수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2020-12-25</td>
							<td>종류</td>
							<td>다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집</td>
							<td>위셀글로벌</td>
							<td>2021-03-01</td>
							<td>10명</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
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

		$('ul.my-tabs li').removeClass('current');
		$('.tab-content2').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
		if (tab_id == 'my-tab-2') {
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/joinInfo',
				success : function(json) {
					$('#memId').val(json.output.memId);
					$('#memSort').val(json.output.memSort);
					$('#memRname').val(json.output.memRname);
					$('#memName').val(json.output.memName);
					$('#memNick').val(json.output.memNick);
					$('#memCountry').val(json.output.memCountry);
					$('#memNation').val(json.output.memNation);
					$('#memTel').val(json.output.memTel);
					$('#postcode').val(json.output.memPost);
					$('#memAddr').val(json.output.memAddr);
					$('#memAddr2').val(json.output.memAddr2);
					$('#memEmail').val(json.output.memId);
					$('#memDate').val(json.output.memDate);
					var src = ROOT_URL+"/upload/"+json.output.memPhoto
					$('#img').attr("src", src);
				}
			});
		}
		if (tab_id == 'my-tab-3') {
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/profile',
				success : function(json) {
					if (json.output.profileIndus == undefined) {
						var text = '';
						if (json.output.profileSort == 1) {
							text = '프로필 등록 후 여러분이 원하는 공급자와 더 가까워집니다.'
						}
						if (json.output.profileSort == 2) {
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
		    	        		window.location = ROOT_URL+ "/profile?profileMemId="+json.output.profileMemId+"&profileSort="+json.output.profileSort;
		    	            } else {
		    	            	window.location = ROOT_URL+ '/member/myPage';
		    	            }
		    	        });
					}
					$('#profileId').val(json.output.profileId);
					$('#profileMemId').val(json.output.profileMemId);
					$('#profileSort').val(json.output.profileSort);
					$('#profileIntro').val(json.output.profileIntro);
					$('#profileVolume').val(json.output.profileVolume);
					$('#profileCareer').val(json.output.profileCareer);
					$('#profileNation').val(json.output.profileNation);
					$('#profileBizNum').val(json.output.profileBizNum);
					$('#profileBizSort').val(json.output.profileBizSort);
					$('#profileIntro').val(json.output.profileIntro);
					$('#profileIndus').val(json.output.profileIndus);
					var src = ROOT_URL+"/upload/"+json.output.profilePhoto;
					$('#profile-img').attr("src", src);
					
					if (json.output.profileSort != '1' && json.output.profileSort != '2') {
						$('#profileSort').attr('disabled', false);
					}
					
					if (json.output.profileCh != null) {
						var profileCh = json.output.profileCh.split(',');
						// 초기화
						$("input[name=profileCh]").attr('checked', false);
						for (var i = 0; i < profileCh.length; i++) {
							$("input[name=profileCh]").eq(profileCh[i]-1).attr('checked', true);
						}ㅑ
					}
					
					if (json.output.profileHashtag != null) {
						var profileHashtag = json.output.profileHashtag.split(',');
						// 초기화
						$("input[name=profileHashtag]").attr('checked', false);
						for (var i = 0; i < profileHashtag.length; i++) {
							for (var j = 0; j < $("input[name=profileHashtag]").length; j++) {
								if ($("input[name=profileHashtag]").eq(j).val() == profileHashtag[i]) {
									$("input[name=profileHashtag]").eq(j).attr('checked', true);
								}
							}
						}
					}
				}
			});
		}
		
		if (tab_id == 'my-tab-4') {
			$("#myProject").remove();
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/project',
				success : function(json) {
					console.log(json.output)
					
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#my-tab-4").append(html);
				}
			});
		}
	});
	
	//프로젝트관리 바로가기
	$(document).on("click", "#myProject-go", function(e){		
		$("#myProject").remove();
		
		$('ul.tabs li').removeClass('current');
		$('.tab-content2').removeClass('current');

		$('#select-tab4').addClass('current');
		$("#tab-4").addClass('current');
		
		
		$.ajax({
			type: "GET",
	        url: ROOT_URL + '/member/mypage/project',
			success : function(json) {
				console.log(json.output)
				
				var content = {
					output : json.output,
					contractCount : json.output[0].contractCount,
					projAddCount : json.output[0].projAddCount,
					recommendCount : json.output[0].recommendCount,
					memSort : json.memSort
				} 
	       		var template = Handlebars.compile($("#myProject-tmpl").html());
	       		var html = template(content);
	       		
	       		$("#my-tab-4").append(html);
			}
		});
	});
	
	$(document).on("focus", "#profile_form", function(e){
		
		$('#profile_form').validate({
			
		    rules: {
		        // [프로젝트 제목] 필수
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

/*     $(document).on("submit", "#profile_form", function(e){
		e.preventDefault();
		
		var form = $(this);
		var url = form.attr('action');
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#profile_form').valid();
               },
               success: function() {
               	swal('알림', '프로필이 수정되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/temp';
                   });
               }
        });
        
    }); */
    
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
    
    $(document).on("click", "#contractCount", function(e){
    	var contractCount = $('#contractCount').val();
		if (contractCount == 0) {
			swal('알림', '계약된 프로젝트가 없습니다.', 'warning')
		} else {
			$("#myProject").remove();
			
			$('ul.tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-tab4').addClass('current');
			$("#tab-4").addClass('current');
			
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/project2',
		        data:{
		        	applyProjState:5
		        },
				success : function(json) {
					console.log(json.output)
					
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#tab-4").append(html);
				}
			});
		}
    })
    $(document).on("click", ".projAddCount", function(e){
    	var projAddCount = $('#projAddCount').attr('data-value');
		if (projAddCount == 0) {
			swal('알림', '등록된 프로젝트가 없습니다.', 'warning')
		} else {
			$("#myProject").remove();
			
			$('ul.my-tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-my-tab4').addClass('current');
			$("#my-tab-4").addClass('current');
			
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/project',
				success : function(json) {
					console.log(json.output)
					
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#my-tab-4").append(html);
				}
			});
		}
    })
    $(document).on("click", "#recommendCount", function(e){
    	var recommendCount = $('#recommendCount').attr('data-value');
    	var mem_sort = $('#myMemSort').val();
		if (recommendCount == 0) {
			var text = '';
			if (mem_sort == 1) {
				text = '제안한 프로젝트가 없습니다.';
			}
			if (mem_sort == 2) {
				text = '제안 받은 프로젝트가 없습니다.';
			}
			swal('알림', text, 'warning')
		} else {
			$("#myProject").remove();
			
			$('ul.my-tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-my-tab4').addClass('current');
			$("#my-tab-4").addClass('current');
			
			$.ajax({
				type: "GET",
		        url: ROOT_URL + '/member/mypage/project2',
		        data:{
		        	applyType:2
		        },
				success : function(json) {
					var content = {
						output : json.output,
						contractCount : json.output[0].contractCount,
						projAddCount : json.output[0].projAddCount,
						recommendCount : json.output[0].recommendCount,
						memSort : json.memSort
					} 
		       		var template = Handlebars.compile($("#myProject-tmpl").html());
		       		var html = template(content);
		       		
		       		$("#my-tab-4").append(html);
				}
			});
		}
    });
    $(document).on("click", ".project-title", function(e){
    	var projId = $(this).attr('data-projId');
    	window.location = ROOT_URL + "/project/detail?projId="+projId;
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
<script type="text/javascript">
$(document).ready(function() {
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
<script type="text/x-handlebars-template" id="myProject-tmpl">
			<div id="myProject">
				<div class="myProjBox">
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type">등록한 프로젝트</div>
							<div class="textBox1"><button class="projAddCount" data-value="{{projAddCount}}">{{projAddCount}}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type">계약한 프로젝트</div>
							<div class="textBox1"><button id="contractCount" value="{{contractCount}}">{{contractCount}}건</button></div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">
							<div class="p-type">찜한 프로젝트</div>
							<div class="textBox1">0건</div>
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2">						
						{{#ifCond memSort '==' 1}}
							<div class="p-type">제안한 프로젝트</div>
						    <div class="textBox1"><button id="recommendCount" value="{{recommendCount}}">{{recommendCount}}건</button></div>
						{{/ifCond}}
						{{#ifCond memSort '==' 2}}
							<div class="p-type">제안받은 프로젝트</div>
							<div class="textBox1"><button id="recommendCount" value="{{recommendCount}}">{{recommendCount}}건</button></div>
						{{/ifCond}}
						</div>
					</div>
					<div class="proj-type">
						<div class="myProjBox2" style="border-right:0;">
							<div class="p-type">마감한 프로젝트</div>
							<div class="textBox1">0건</div>
						</div>
					</div>
				</div>
				<input type="hidden" id="myMemSort" value="{{memSort}}">
				<table id="myProject-table" class="myProject-table">
					<thead>
						<tr>
							<th>등록일</th>
							<th></th>						
							<th>프로젝트명</th>
							<th>등록자 닉네임</th>
							<th>마감일</th>
							<th>지원자 수</th>
						</tr>
					</thead>
					<tbody>
					{{#output}}
						<tr>
							<td>{{projRegDate}}</td>
							<td></td>
							<td class="project-title" data-projId="{{projId}}">{{projTitle}}</td>
							<td>{{memNick}}</td>
							<td>{{projEndDate}}</td>
							<td>{{applyCount}}명</td>
						</tr>
					{{/output}}
					</tbody>
				</table>
			</div>
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/daum/exeDaumPostcode.js"></script>
<!-- jquery file upload js -->
<%-- <script src="${pageContext.request.contextPath}/assets/pages/jquery.filer/js/jquery.filer.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/custom-filer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/jquery.fileuploads.init.js" type="text/javascript"></script> --%>