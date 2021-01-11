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
		    						<select id="projTitle" name="projTitle" class="inputForm">
		    							<option value="" selected="selected">[기본문구선택]</option>
	                               		<option value="판매자를 찾습니다.">판매자를 찾습니다.</option>
	                                	<option value="판매위임합니다.">판매위임합니다.</option>
	                                	<option value="판매위임합니다.">배송대행지를 찾습니다.</option>
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
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>판매채널</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>모집마감일</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>모집인원</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>상세설명</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>필수요건</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>해시태그</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>상세사진</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
	    				</tr>
	    				<tr>
	    					<td>첨부파일</td>
	    					<td>[다양한 건강식품 위탁판매 오픈마켓 판매자 10명 모집]     [기본문구선택]</td>
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
	$("#projAdd").on("click", function(){
		$(".addbox1").remove();
	});
	
	$(".findCheck").on("click", function(){
		$(".resultText").remove();
		var value = this.value;
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
    </body>
</html>
