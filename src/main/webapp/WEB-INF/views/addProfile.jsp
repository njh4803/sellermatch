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
.profileBox{
	display: inline-block;
}
.profileTable{
	border: 2px solid #ccc;
	width: 700px;
}
.profileTable td{
	border: 2px solid #ccc;
    text-align: left;
    padding: 10px;
}
.profileTable td:nth-child(1){
	background-color: #F2F2F2;
	text-align: center;
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
.profileAdd{
	background-color: #E52867;
	color: white;
    border-radius: 10px;
    width: 300px;
    height: 100px;
    font-size: 20px;
}
.profileAdd:disabled{
	background-color: #e3e3e3;
	color: black;
}
.profileAdd button:enabled{
	background-color: #E52867;
	color: white;
}
</style>
<div class="partner_bnr">
    <div class="partner_wrap">
    	<c:if test="${output.profileSort == 1}">
	        <h2>프로필을 등록해보세요!</h2>
	        <h3>나를 찾는 판매자와 쉽게 연결됩니다.</h3>
        </c:if>
        <c:if test="${output.profileSort == 2}">
	        <h2>프로필을 등록해보세요!</h2>
	        <h3>나를 찾는 공급자와 쉽게 연결됩니다.</h3>
        </c:if>
    </div>
    <div class="partner_wrap addbox2">
    	<div class="text-center profileBox">
			<form action="${pageContext.request.contextPath}/profile" id="profile_form" name="profile_form" method="post" enctype="multipart/form-data">
				<input type="hidden" name="profileId" value="${output.profileId}">
				<input type="hidden" name="profileSort" value="${output.profileSort}">
				<input type="hidden" name="profileMemId" value="${output.profileMemId}">
				<input type="hidden" name="memNick" value="${output.memNick}">
	    		<table class="profileTable">
	    			<tbody>
	    				<c:if test="${output.profileSort == 1}">
	    				<tr>
	    					<td>공급자 소개</td>
	    					<td>
	    						<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="위탁공급 전문입니다">
	    					</td>
	    				</tr>
	    				</c:if>
	    				<c:if test="${output.profileSort == 2}">
	    				<tr>
	    					<td>판매자 소개</td>
	    					<td>
	    						<input type="text" class="inputForm" id="profileIntro" name="profileIntro" placeholder="오픈마켓 전문 셀러입니다">
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
	                                	<input id="chk1" type="checkbox" name="profileCh" value="1">
	                                	<label for="chk1"><span>오픈마켓</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk2" type="checkbox" name="profileCh" value="2">
	                                	<label for="chk2"><span>종합몰</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk3" type="checkbox" name="profileCh" value="3">
	                                	<label for="chk3"><span>폐쇄몰</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk4" type="checkbox" name="profileCh" value="4">
	                                	<label for="chk4"><span>커뮤니티</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk5" type="checkbox" name="profileCh" value="5">
	                                	<label for="chk5"><span>SNS</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk6" type="checkbox" name="profileCh" value="6">
	                                	<label for="chk6"><span>오프라인</span></label>
		                           	</div>
		                           	<div class="row1">
	                                	<input id="chk7" type="checkbox" name="profileCh" value="7">
	                                	<label for="chk7"><span>해외</span></label>
		                           	</div>
		                        </div>
	    					</td>
	    				</tr>
	    				</c:if>
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
		   				<c:if test="${output.profileSort == 2}">
		   				<tr>
	    					<td>해시태그</td>
	    					<td>
		    					<div class="inputForm width-100" style="border: none;">
		    						<div class="row1">
	                                	<input type="checkbox" name="profileHashtag" value="다양한 채널운영">
	                                	<span>다양한 채널운영</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="profileHashtag" value="높은 매출 셀러">
	                                	<span>높은 매출 셀러</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="profileHashtag" value="장기판매경력">
	                                	<span>장기판매경력</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="profileHashtag" value="탁월한 판매능력">
	                                	<span>탁월한 판매능력</span>
		                           	</div>
		                           	<div class="row1">
	                                	<input type="checkbox" name="profileHashtag" value="다양한 판매분야">
	                                	<span>다양한 판매분야</span>
		                           	</div>
		                        </div>
	    					</td>
	    				</tr>
	    				</c:if>
		   			</tbody>
		   		</table>
   			<div>
	    	<input class="addBtn" type="submit" value="프로필 등록">
	    </div>
   	</form>    	
  	</div>
  </div>
    <div class="partner_wrap">
    	
    </div>
</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
	$(document).on("focus", "#profile_form", function(e){
		/** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
		$('#profile_form').validate({
			/* 
				required 필수 항목으로 설정한다. (true, false)
				remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
			*/
			
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
		            required: '프로젝트 제목을 입력해주세요.',
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
});
</script>
<!-- jquery file upload js -->
<script src="${pageContext.request.contextPath}/assets/pages/jquery.filer/js/jquery.filer.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/custom-filer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/filer/jquery.fileuploads.init.js" type="text/javascript"></script>    
    </body>
</html>
