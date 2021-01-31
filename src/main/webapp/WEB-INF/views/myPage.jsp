<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<style>
	ul.tabs{
		list-style: none;
		text-align: left;
	}
	ul.tabs li{
		background: none;
		color: #222;
		display: inline-block;
		padding: 10px 15px;
		cursor: pointer;
		width: 256px;
		height: 40px;
		border: solid 1px #e3e3e3;
		border-bottom: solid 3px #000000;
		background-color: #ffffff;
		margin-right: -4px;
	}
	
	ul.tabs li.current{
		background: #ededed;
		color: #222;
		width: 256px;
		height: 40px;
		border: solid 1px #e3e3e3;
		border-bottom: solid 3px #000000;
		background-color: #8333ab;
		margin-right: -4px;
	}
	ul.tabs li {
		font-size: 15px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		letter-spacing: normal;
		text-align: center;
		color: #000000;
	}
	ul.tabs li.current {
		font-size: 15px;
		font-weight: bold;
		font-stretch: normal;
		font-style: normal;
		letter-spacing: normal;
		text-align: center;
		color: #ffffff;
	}
	.tab-content2{
		display: none;
		background: #ededed;
	}
	
	.tab-content2.current{
		display: inherit;
	}
.check{
	background-color: #E52867;
    color: white;
    border-radius: 10px;
    width: 300px;
    height: 100px;
    font-size: 20px;
}
a {
	text-decoration: none;
	color: black;
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
.addBtn {
	background-color: #E52867;
    color: white;
    border-radius: 10px;
    width: 150px;
    height: 50px;
    font-size: 20px;
    margin: 30px 0;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
       	<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1" id="select-tab1">MY홈</li>
			<li class="tab-link" data-tab="tab-2" id="select-tab2">가입정보관리</li>
			<li class="tab-link" data-tab="tab-3" id="select-tab3">프로필관리</li>
			<li class="tab-link" data-tab="tab-4" id="select-tab4">프로젝트관리</li>
		</ul>
		<div id="tab-1" class="tab-content2 current">
			<div>
				<div style="text-align: left; margin: 50px;">
					<div style="display: inline-block;">
						<div>${output.profileGrade}</div>
						<div>${output.memNick}님</div>
					</div>
					<c:if test="${output.memRname == '1'}">
						<div style="display: inline-block;">신원인증</div>
					</c:if>
					<c:if test="${output.profileBizCerti == '1'}">
						<div style="display: inline-block;">사업자인증</div>
					</c:if>
					<c:if test="${output.profileSaleChk == '1'}">
						<div style="display: inline-block;">매출검증</div>
					</c:if>
					<c:if test="${output.profileChChk == '1'}">
						<div style="display: inline-block;">채널검증</div>
					</c:if>
				</div>
				<div style="text-align: left; margin: 50px;">
					<div style="display: inline-block;">
						<button>바로인증하기</button>
					</div>
					<div style="display: inline-block; text-align: center;">
						<div>프로젝트관리<button id="myProject-go">바로가기</button></div>
						<div>
							<span>등록</span>
							<span>제안</span>
						</div>
						<div>
							<button id="projAddCount" value="${output.projAddCount}">${output.projAddCount}건</button>
							<button id="recommendCount" value="${output.recommendCount}">${output.recommendCount}건</button>
						</div>
					</div>
					<div style="display: inline-block;">
						<div>관심등록리스트(26)</div>
						<button>바로가기</button>
					</div>
				</div>
			</div>
		</div>
		<div id="tab-2" class="tab-content2">
		    <div class="partner_wrap addbox2">
		    	<div class="text-center profileBox">
					<form action="${pageContext.request.contextPath}/member/editOk" id="memEdit_form" name="memEdit_form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="memRname" id="memRname">
						<input type="hidden" name="memSort" id="memSort">
						<table class="profileTable">
			    			<tbody>
			    				<tr>
			    					<td>아이디</td>
			    					<td>
			    						<input id="memId" type="text" name="memId" class="inputForm" placeholder="이메일 입력" readonly="readonly">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>비밀번호</td>
			    					<td>
			    						<input type="password" id="memPw" name="memPw" class="inputForm" placeholder="영문,숫자,특수문자 조합 최소 6글자">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>비밀번호 확인</td>
			    					<td>
			    						<input type="password" name="memPw_confirm" class="inputForm" id="memPw_confirm"/>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>이름</td>
			    					<td>
			    						<input type="text" class="inputForm" name="memName" id="memName">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>닉네임</td>
			    					<td>
			    						<input type="text" class="inputForm" name="memNick" id="memNick">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>국가</td>
			    					<td>
				    					<select id="memCountry" name="memCountry" class="inputForm">
                                            <option value="">선택하세요.</option>
                                            <option value="01">대한민국</option>
                                            <option value="02">베트남</option>
                                        </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>지역</td>
			    					<td>
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
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>연락처</td>
			    					<td>
				    					<input type="text" name="memTel" class="inputForm" id="memTel" placeholder="`-`없이 숫자만 입력" />
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>우편번호</td>
			    					<td>
			    						<input type="text" name="memPost" class="inputForm" id="postcode" maxlength="5" readonly>
										<button type="button" class="btn form-bg-primary postcode-finder"
											data-postcode="postcode" data-addr1="addr1"
											data-frame="postcode-frame" onClick="exeDaumPostcode()">우편번호검색</button>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>주소</td>
			    					<td>
			    						<input type="text" name="memAddr" class="inputForm" id="memAddr" readonly />
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>상세주소</td>
			    					<td>
			    						<input type="text" name="memAddr2" class="inputForm" id="memAddr2"/>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>이메일 인증</td>
			    					<td>
			    						<input type="text" name="memEmail" class="inputForm" id="memEmail" />
										<button type="button" id="sendAuthEmail" class="btn form-bg-primary">인증 번호 발송</button>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>인증 번호 확인</td>
			    					<td>
			    						<input type="text" name="auth_confirm" class="inputForm" id="auth_confirm" />
										<button type="button" id="authConfirm" class="btn form-bg-primary">인증 번호 확인</button>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>회원가입일</td>
			    					<td>
			    						<input type="text" name="memDate" class="inputForm" id="memDate" readonly />
			    					</td>
			    				</tr>
				   			</tbody>
				   		</table>
				   		<input class="btn form-bg-primary" type="submit" value="수정">
				   	</form>
				</div>
			</div>
		</div>
		<div id="tab-3" class="tab-content2">
		    <div class="partner_wrap addbox2">
		    	<div class="text-center profileBox">
					<form action="${pageContext.request.contextPath}/profile" id="profile_form" name="profile_form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="profileId" id="profileId">
						<input type="hidden" name="profileSort" id="profileSort">
						<input type="hidden" name="profileMemId" id="profileMemId">
						<table class="profileTable">
			    			<tbody>
			    				<tr>
			    					<td>판매자 소개</td>
			    					<td>
			    						<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="오픈마켓 전문 셀러입니다">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>판매자 유형</td>
			    					<td>
			    						<input type="text" class="inputForm" id="profileSortName" name="profileSortName" readonly="readonly">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>매출 규모</td>
			    					<td>
			    						<input type="number" class="inputForm" id="profileVolume" name="profileVolume" placeholder="연 매출">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>판매경력</td>
			    					<td>
			    						<select id="profileCareer" name="profileCareer" class="form-control">
		                                    <option value="0">경력없음</option>
		                                    <option value="1">1개월 이상</option>
		                                    <option value="3">3개월 이상</option>
		                                    <option value="6">6개월 이상</option>
		                                    <option value="9">1년 이상</option>
		                                </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>채널</td>
			    					<td>
				    					<div class="inputForm width-100" style="border: none;">
				    						<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="1">
			                                	<span>오픈마켓</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="2">
			                                	<span>종합몰</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="3">
			                                	<span>폐쇄몰</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="4">
			                                	<span>커뮤니티</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="5">
			                                	<span>SNS</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="6">
			                                	<span>오프라인</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileCh" value="7">
			                                	<span>해외</span>
				                           	</div>
				                        </div>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>등록자 지역</td>
			    					<td>
			    						<select id="profileNation" name="profileNation" class="inputForm width-100">
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
			    					<td>상품분야</td>
			    					<td>
			    						<select id="profileIndus" name="profileIndus" class="inputForm width-100">
		                                    <option value="">선택하세요.</option>
		                                    <c:forEach var="indusList" items="${indusList}">
		                                    	<option value="${indusList.indusId}">${indusList.indusName}</option>
		                                    </c:forEach>
		                                </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>사업자 번호</td>
			    					<td>
			    						<input type="text" name="profileBizNum" id="profileBizNum" class="inputForm width-100"/>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>사업자 유형</td>
			    					<td>
			    						<div>
											<select id="profileBizSort" name="profileBizSort" class="form-control">
		                                        <option value="">선택하세요.</option>
		                                        <option value="1">법인사업자</option>
		                                        <option value="2">개인사업자</option>
		                                        <option value="3">간이과세자</option>
		                                        <option value="4">개인</option>
		                                        <option value="5">기타</option>
		                                    </select>
				                        </div>
				   					</td>
				   				</tr>
				   				<tr>
			    					<td>해시태그</td>
			    					<td>
				    					<div class="inputForm width-100" style="border: none;">
				    						<div class="row1">
			                                	<input type="checkbox" name="profileHashtag" value="1">
			                                	<span>해시태그1</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileHashtag" value="2">
			                                	<span>해시태그2</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileHashtag" value="3">
			                                	<span>해시태그3</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileHashtag" value="4">
			                                	<span>해시태그4</span>
				                           	</div>
				                           	<div class="row1">
			                                	<input type="checkbox" name="profileHashtag" value="5">
			                                	<span>해시태그5</span>
				                           	</div>
				                        </div>
			    					</td>
			    				</tr>
				   			</tbody>
				   		</table>
				   		<input class="addBtn" type="submit" value="프로필 등록">
				   	</form>
				</div>
			</div>
		</div>
		<div id="tab-4" class="tab-content2">
			<div id="myProject">
				<div style="display: inline-block;">프로젝트관리</div>
				<div style="display: inline-block;">
					<div>
						<div style="display: inline-block;">등록한 것</div>
						<div style="display: inline-block;">제안 받은 것</div>
					</div>
					<div>
						<div style="display: inline-block;">2건</div>
						<div style="display: inline-block;">2건</div>
					</div>
				</div>
				<table id="myProject-table">
					<thead>
						<tr>
							<th>등록일</th>
							<th>프로젝트명</th>
							<th>등록자 닉네임</th>
							<th>마감일</th>
							<th>지원자 수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2020-12-25</td>
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
	
	$(document).on("click", "ul.tabs li", function(e){
		
		var tab_id = $(this).attr('data-tab');
		var tabNum = $(this).data('num');

		$('ul.tabs li').removeClass('current');
		$('.tab-content2').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
		if (tab_id == 'tab-2') {
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
				}
			});
		}
		if (tab_id == 'tab-3') {
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
					$('#profileSortName').val(json.output.profileSortName);
					
					if (json.output.profileSort != '1' && json.output.profileSort != '2') {
						$('#profileSort').attr('disabled', false);
					}
					
					if (json.output.profileCh != null) {
						var profileCh = json.output.profileCh.split(',');
						// 초기화
						$("input[name=profileCh]").attr('checked', false);
						for (var i = 0; i < profileCh.length; i++) {
							$("input[name=profileCh]").eq(profileCh[i]-1).attr('checked', true);
						}
					}
					
					if (json.output.profileHashtag != null) {
						var profileHashtag = json.output.profileHashtag.split(',');
						// 초기화
						$("input[name=profileHashtag]").attr('checked', false);
						for (var i = 0; i < profileHashtag.length; i++) {
							$("input[name=profileHashtag]").eq(profileHashtag[i]-1).attr('checked', true);
						}
					}
				}
			});
		}
		
		if (tab_id == 'tab-4') {
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
		       		
		       		$("#tab-4").append(html);
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
	       		
	       		$("#tab-4").append(html);
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

    $(document).on("submit", "#profile_form", function(e){
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
               	swal('알림', '프로필이 등록되었습니다.', 'success').then(function(result) {
                       window.location = ROOT_URL + '/temp';
                   });
               }
        });
        
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
    $(document).on("click", "#projAddCount", function(e){
    	var projAddCount = $('#projAddCount').val();
		if (projAddCount == 0) {
			swal('알림', '등록된 프로젝트가 없습니다.', 'warning')
		} else {
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
		       		
		       		$("#tab-4").append(html);
				}
			});
		}
    })
    $(document).on("click", "#recommendCount", function(e){
    	var recommendCount = $('#recommendCount').val();
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
			
			$('ul.tabs li').removeClass('current');
			$('.tab-content2').removeClass('current');

			$('#select-tab4').addClass('current');
			$("#tab-4").addClass('current');
			
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
		       		
		       		$("#tab-4").append(html);
				}
			});
		}
    });
    $(document).on("click", ".project-title", function(e){
    	var projId = $(this).attr('data-projId');
    	window.location = ROOT_URL + "/project/detail?projId="+projId;
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
				<div style="display: inline-block;">프로젝트관리</div>
				<div style="display: inline-block;">
					<div>
						<div style="display: inline-block;">계약한 것</div>
						<div style="display: inline-block;">등록한 것</div>
						{{#ifCond memSort '==' 1}}
							<div style="display: inline-block;">제안 한 것</div>
						{{/ifCond}}
						{{#ifCond memSort '==' 2}}
							<div style="display: inline-block;">제안 받은 것</div>
						{{/ifCond}}
					</div>
					<div>
						<div style="display: inline-block;"><button id="contractCount" value="{{contractCount}}">{{contractCount}}건</button></div>
						<div style="display: inline-block;"><button id="projAddCount" value="{{projAddCount}}">{{projAddCount}}건</button></div>
						<div style="display: inline-block;"><button id="recommendCount" value="{{recommendCount}}">{{recommendCount}}건</button></div>
					</div>
				</div>
				<input type="hidden" id="myMemSort" value="{{memSort}}">
				<table id="myProject-table">
					<thead>
						<tr>
							<th>등록일</th>
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