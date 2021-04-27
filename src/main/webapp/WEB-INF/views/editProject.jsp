<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<!-- jquery file upload Frame work -->
<link href="${pageContext.request.contextPath}/template/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/tamplate/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/css/file.css">
 <!-- ckeditor js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/addProject.css" rel="stylesheet" type="text/css">
<div class="partner_bnr">
    <div class="partner_wrap">
	    <div class="img-container">
	     	<img class="p-img" alt="" src="${pageContext.request.contextPath}/assets/img/addProjImg.png">
	        <h2>거래 상대를 찾는 간편하고 확실한 방법</h2>
	        <h3>찾고 있는 거래 상대의 조건을 입력해보세요.</h3>
	    </div>
		<div class="addbox2 projectAdd">
		    	<div class="text-center projectBox">
					<form action="${pageContext.request.contextPath}/project/edit" id="proj_form" name="proj_form" method="post" enctype="multipart/form-data">
						<input type="hidden" name="projSort" value="${member.memSort}">
						<input type="hidden" name="projMemId" value="${member.memId}">
						<input type="hidden" id="projId" name="projId" value="${output.projId}">
						<input type="hidden" name="projState" value="1">
			    		<table class="projTable">
			    			<tbody>
			    				<tr>
			    					<td>대표 이미지
			    						<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">'거래처 찾기' 리스트에 보여질 썸네일용 이미지입니다.</div>
			    					</td>
		   							<td>
		    							<div>
											<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
												<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
											    	src="/upload/${output.projThumbnailImg}"/>
											</div>	
		    								<div>
		                   		            	<input id = "file_route" type="text" name="file_route" class="formControl" readonly="readonly"/>
		                  		           		<label class="fileLable">
		                   		          			파일 선택
		                  		           		<input id = "image" name="projThumbnailImg" value="" class="jFiler-input-button" type="file" style="display: none;" onchange="javascript:document.getElementById('file_route').value=this.value"/>
		                     		        	</label>
		                    		        </div>
		               		            </div>
		   							</td>
			    				</tr>
			    				<tr>
			    					<td>찾기 제목
			    						<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">찾고자 하는 공급자 또는 판매자와 관련한 제목을 넣는 곳입니다.</div>			    					
			    					</td>
									<c:if test="${member.memSort == 1}">
			    					<td>
			    						<div class="width-70">
			    							<input type="text" class="inputForm" id="projTitle" name="projTitle" placeholder="직접 입력가능" value="${output.projTitle}">
			    						</div>
			    						<div class="width-30">
				    						<select id="projTitleSelect" name="projTitleSelect" class="inputForm">
				    							<option value="" selected="selected">[기본문구선택]</option>
			                               		<option value="고매출 판매자를 찾습니다">고매출 판매자를 찾습니다</option>
			                                	<option value="위탁전문 공급업체입니다">위탁전문 공급업체입니다</option>
			                                	<option value="위탁판매자 찾습니다">위탁판매자 찾습니다</option>
			                              	</select>
			    						</div>
			    					</td>
			    					</c:if>
									<c:if test="${member.memSort == 2}">
			    					<td>
			    						<div class="width-70">
			    							<input type="text" class="inputForm" id="projTitle" name="projTitle" placeholder="직접 입력가능" value="${output.projTitle}">
			    						</div>
			    						<div class="width-30">
				    						<select id="projTitleSelect" name="projTitleSelect" class="inputForm">
				    							<option value="" selected="selected">[기본문구선택]</option>
			                               		<option value="고마진 공급자를 찾습니다">고마진 공급자를 찾습니다</option>
			                                	<option value="위탁판매 전문셀러입니다">위탁판매 전문셀러입니다</option>
			                                	<option value="위탁업체 찾습니다">위탁업체 찾습니다 </option>
			                              	</select>
			    						</div>
			    					</td>
									</c:if>
			    				</tr>
			    				<tr>
			    					<td>상품 분류</td>
			    					<td>
			    						<select id="projIndus" name="projIndus" class="inputForm width-100">
		                                    <option value="">선택하세요.</option>
											<c:forEach var="indusList" items="${indusList}">
												<c:choose>
													<c:when test="${indusList.indusId == output.projIndus}">
														<option value="${indusList.indusId}" selected>${indusList.indusName}</option>
													</c:when>
													<c:otherwise>
														<option value="${indusList.indusId}">${indusList.indusName}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
		                                </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>상품 단가
			    						<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">제품의 최종 판매가격(소비자가격)을 말합니다.</div>				    					
			    					</td>
			    					<td>
			    						<select id="projPrice" name="projPrice" class="inputForm width-100">
		                                    <option value="">선택하세요.</option>
		                                    <option value="01"<c:if test="${output.projPrice == 01}"> selected </c:if>>1만원 미만</option>
		                                    <option value="02"<c:if test="${output.projPrice == 02}"> selected </c:if>>1만원 ~ 3만원</option>
		                                    <option value="03"<c:if test="${output.projPrice == 03}"> selected </c:if>>3만원 ~ 10만원</option>
		                                    <option value="04"<c:if test="${output.projPrice == 04}"> selected </c:if>>10만원 ~ 50만원</option>
		                                    <option value="05"<c:if test="${output.projPrice == 05}"> selected </c:if>>50만원 ~ 100만원</option>
		                                    <option value="06"<c:if test="${output.projPrice == 06}"> selected </c:if>>100만원 초과</option>
		                                </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>판매 마진
			    						<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">판매를 했을 때 남는 수익금액을 말합니다.</div>				    					
			    					</td>
			    					<td>
			    						<select id="projMargin" name="projMargin" class="inputForm width-100">
		                                    <option value="">선택하세요.</option>
		                                    <option value="10"<c:if test="${output.projMargin == 10}"> selected </c:if>>10%이하</option>
		                                    <option value="20"<c:if test="${output.projMargin == 20}"> selected </c:if>>11%~20%</option>
		                                    <option value="30"<c:if test="${output.projMargin == 30}"> selected </c:if>>21%~30%</option>
		                                    <option value="31"<c:if test="${output.projMargin == 31}"> selected </c:if>>30%초과</option>
		                                </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>등록 지역
			    						<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">이 글을 쓰고 있는 분(판매자 또는 공급자)이 거주하는 곳의 지역을 말합니다.</div>					    					
			    					</td>
			    					<td>
			    						<select id="projNation" name="projNation" class="inputForm width-100">
		                                    <option value="">선택하세요.</option>
		                                    <option value="02"<c:if test="${output.projNation == 02}"> selected </c:if>>서울</option>
		                                    <option value="031"<c:if test="${output.projNation == 031}"> selected </c:if>>경기</option>
		                                    <option value="032"<c:if test="${output.projNation == 032}"> selected </c:if>>인천</option>
		                                    <option value="033"<c:if test="${output.projNation == 033}"> selected </c:if>>강원</option>
		                                    <option value="041"<c:if test="${output.projNation == 041}"> selected </c:if>>충남</option>
		                                    <option value="042"<c:if test="${output.projNation == 042}"> selected </c:if>>대전</option>
		                                    <option value="043"<c:if test="${output.projNation == 043}"> selected </c:if>>충북</option>
		                                    <option value="051"<c:if test="${output.projNation == 051}"> selected </c:if>>부산</option>
		                                    <option value="052"<c:if test="${output.projNation == 052}"> selected </c:if>>울산</option>
		                                    <option value="053"<c:if test="${output.projNation == 053}"> selected </c:if>>대구</option>
		                                    <option value="054"<c:if test="${output.projNation == 054}"> selected </c:if>>경북</option>
		                                    <option value="055"<c:if test="${output.projNation == 055}"> selected </c:if>>경남</option>
		                                    <option value="061"<c:if test="${output.projNation == 061}"> selected </c:if>>전남</option>
		                                    <option value="062"<c:if test="${output.projNation == 062}"> selected </c:if>>광주</option>
		                                    <option value="063"<c:if test="${output.projNation == 063}"> selected </c:if>>전북</option>
		                                    <option value="044"<c:if test="${output.projNation == 044}"> selected </c:if>>세종특별자치시</option>
		                                    <option value="064"<c:if test="${output.projNation == 064}"> selected </c:if>>제주특별자치도</option>
		                                    <option value="999"<c:if test="${output.projNation == 999}"> selected </c:if>>해외</option>
		                                </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>공급 방법
			    						<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">공급업체에서 공급하는 방식에 대한 것입니다.</div>				    					
			    					</td>
			    					<td>
				    					<select id="projSupplyType" name="projSupplyType" class="inputForm width-100">
			                                <option value="">선택하세요.</option>
			                                <option value="1"<c:if test="${output.projSupplyType == 1}"> selected </c:if>>OEM</option>
			                                <option value="2"<c:if test="${output.projSupplyType == 2}"> selected </c:if>>위탁판매</option>
			                                <option value="3"<c:if test="${output.projSupplyType == 3}"> selected </c:if>>도매공급</option>
			                                <option value="4"<c:if test="${output.projSupplyType == 4}"> selected </c:if>>운영대행</option>
			                                <option value="5"<c:if test="${output.projSupplyType == 5}"> selected </c:if>>경매공급</option>
			                            </select>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>
										<c:if test="${member.memSort == 1}">
											채널
										</c:if>
										<c:if test="${member.memSort == 2}">
											판매 채널
										</c:if>
										<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">판매자가 판매하는 채널(방식)에 대한 것입니다.</div>										
									</td>	
			    					<td>
				    					<div class="inputForm width-100">
				    						<div class="row1">
			                                	<input id="chk1" type="checkbox" name="projChannel" value="1" required="required"<c:if test="${fn:contains(output.projChannel,'1')}"> checked </c:if>>
			                                	<label for="chk1"><span>오픈마켓</span></label>
				                           	</div>
				                           	<div class="row1">
			                                	<input id="chk2" type="checkbox" name="projChannel" value="2" required="required"<c:if test="${fn:contains(output.projChannel,'2')}"> checked </c:if>>
			                                	<label for="chk2"><span>종합몰</span></label>
				                           	</div>
				                           	<div class="row1">
			                                	<input id="chk3" type="checkbox" name="projChannel" value="3" required="required"<c:if test="${fn:contains(output.projChannel,'3')}"> checked </c:if>>
			                                	<label for="chk3"><span>폐쇄몰</span></label>
				                           	</div>
				                           	<div class="row1">
			                                	<input id="chk4" type="checkbox" name="projChannel" value="4" required="required"<c:if test="${fn:contains(output.projChannel,'4')}"> checked </c:if>>
			                                	<label for="chk4"><span>커뮤니티</span></label>
				                           	</div>
				                           	<div class="row1">
			                                	<input id="chk5" type="checkbox" name="projChannel" value="5" required="required"<c:if test="${fn:contains(output.projChannel,'5')}"> checked </c:if>>
			                                	<label for="chk5"><span>SNS</span></label>
				                           	</div>
				                           	<div class="row1">
			                                	<input id="chk6" type="checkbox" name="projChannel" value="6" required="required"<c:if test="${fn:contains(output.projChannel,'6')}"> checked </c:if>>
			                                	<label for="chk6"><span>오프라인</span></label>
				                           	</div>
				                           	<div class="row1">
			                                	<input id="chk7" type="checkbox" name="projChannel" value="7" required="required"<c:if test="${fn:contains(output.projChannel,'7')}"> checked </c:if>>
			                                	<label for="chk7"><span>해외</span></label>
				                           	</div>
				                        </div>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>모집 마감일</td>
			    					<td>
			    						<input type="date" name="projEndDate" id="projEndDate" class="inputForm width-100" value="${output.projEndDate}">
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>모집 인원</td>
			    					<td>
			    						<input type="number" name="projRecruitNum" id="projRecruitNum" class="inputForm width-100" min="1" max="100" value="${output.projRecruitNum}"/>
			    					</td>
			    				</tr>
			    				<tr>
			    					<td>상세 설명
										<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
			    						<div class="questionBox">거래 상대방에게 전달할 내용을 입력하는 곳입니다. 회사명이나 연락처 정보를 남기시면 이용에 제재를 받을 수 있습니다.</div>				    					
			    					</td>
			    					<td class="editor">
		    						<div>
		    							<c:if test="${member.memSort == 1}">
		    								<textarea id="projDetail" name="projDetail" class="inputForm width-100" style="height: 150px;"
		    								placeholder="공급자 작성팁! 내용을 상세히 작성해주세요.
더 많은 거래지원을 받을 수 있습니다.

예시) 주방용품, 그릇류 위탁공급하고 있습니다.
SNS채널, 라이브방송 동시 운영하는 판매자 선호합니다.
함께 오래갈 판매 사장님 연락기다리고 있습니다.">${output.projDetail}</textarea>
		    							</c:if>
		    							<c:if test="${member.memSort == 2}">
		    								<textarea id="projDetail" name="projDetail" class="inputForm width-100" style="height: 150px;"
		    								placeholder="판매자 작성팁! 내용을 상세히 작성해주세요.
더 많은 거래지원을 받을 수 있습니다.

예시) 주방용품 그릇 공급처 찾고있습니다. 
라이브쇼핑, SNS채널 동시 운영중이며 판매센스가 있다고 자신합니다
함께 오래갈 공급처 사장님 연락기다리고 있습니다.">${output.projDetail}</textarea>
		    							</c:if>
										<script type="text/javascript">
											CKEDITOR.replace('projDetail', {
												height : 200,
												enterMode:'2',
											    shiftEnterMode:'3'
											});
										</script>		    							
			                        </div>
				   					</td>
				   				</tr>
				   				<tr>
				   					<td>필수 조건
										<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
					    				<div class="questionBox">거래 상대방이 필수로 지켜야 하는 내용을 입력하는 곳입니다.</div>		   					
				   					</td>
				   					<td>
				   						<div class="width-70">
				   							<input type="text" class="inputForm" id="projRequire" name="projRequire" placeholder="직접 입력가능" value="${output.projRequire}">
				   						</div>
										<c:if test="${member.memSort == 1}">
				   						<div class="width-30">
				    						<select id="projRequireSelect" name="projRequireSelect" class="inputForm">
				    							<option value="" selected="selected">[기본문구선택]</option>
				                              	<option value="경력자 필수입니다">경력자 필수입니다</option>
				                               	<option value="메일, 문자만 가능">메일, 문자만 가능</option>
				                               	<option value="마진협상가능">마진협상가능</option>
				                            </select>
				   						</div>
										</c:if>
										<c:if test="${member.memSort == 2}">
				   						<div class="width-30">
				    						<select id="projRequireSelect" name="projRequireSelect" class="inputForm">
				    							<option value="" selected="selected">[기본문구선택]</option>
				                              	<option value="경력자 필수입니다">경력자 필수입니다</option>
				                               	<option value="메일, 문자만 가능">메일, 문자만 가능</option>
				                               	<option value="마진협상가능">마진협상가능</option>
				                            </select>
				   						</div>
										</c:if>
				   					</td>
				   				</tr>
				   				<tr>
				   					<td>태그
										<img class="question" alt="" src="${pageContext.request.contextPath}/assets/img/question.png">
					    				<div class="questionBox">태그는 거래처 찾기를 등록하는 이가 강조하고 싶은 것을 자유롭게 작성하는 곳입니다. 판매자/공급자가 선호하는 태그를 선택해서 입력할수도 있습니다.</div>				   					
				   					</td>
				   					<td>
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
				   					</td>
				   				</tr>
					   				<!-- <tr>
					   					<td>상세사진</td>
					   					<td>
											<div class="row1">
												<div class="card-block">
													<input type="hidden" id=detailImgList name="detailImgList">
													<div id="fileUpload" class="dragAndDropDiv">Drag & Drop Files Here or Browse Files</div>
													<input type="file" name="projDetailImg" id="fileUpload" style="display:none;" multiple/>
					  									<div id="imgBox" class="jFiler-items jFiler-row">
																				
													</div>
							                    </div>
							                </div>                                                       
					   					</td>
					   				</tr> -->
				   				<tr>
				   					<td>첨부파일</td>
				   					<td>
				    					<div>
			    							<div style="display: flex;">
			                              	 	<input id = "file_route2" type="text" class="formControl" readonly="readonly" value="${output.projFile}"/>
			                             		<label class="fileLable">
			                             			파일 선택
			                             			<input id = "projFile" name="projFile" value="" class="jFiler-input-button" type="file" style="display: none;" onchange="javascript:document.getElementById('file_route2').value=this.value"/>
			                            	 	</label>
			                               </div>
			                           </div>
				   					</td>
				   				</tr>
			   				</tbody>
			   			</table>
				   		<div>
					    	<button class="addBtn" type="submit">
								수정하기
							</button>
					    </div>
		   			</form>    	
			  	</div>
			</div>	    
	    </div>
<%-- 	<div class="partner_wrap addbox2 selectFind">
		<input type="hidden" id="member" name="member" value="${member.memSortName}">
		<div style="display: inline-block;">
			<button id="spBtn" class="default-check text-center" value="공급자"><input type="checkbox" class="findCheck spFind" id="spFind" value="공급자">
				<label for="spFind"><span>&nbsp;&nbsp;판매자 찾기</label></span></button>
		</div>
		<div style="display: inline-block;">
		    <button id="ppBtn" class="default-check text-center" value="공급자"><input type="checkbox" class="findCheck ppFind" id="ppFind" value="판매자">
				<label for="ppFind"><span>&nbsp;&nbsp;공급자 찾기</label></span></button>
		</div>
	</div> --%>

</div>
<%@ include file="inc/footer.jsp"%>
<script>
$(document).ready(function() {
	
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
        var checkTag_count = $('input[name=projKeyword]:checked').length;
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
    $(document).on("click", ".projKeyword", function(){
        var checkTag_count = $('input[name=projKeyword]:checked').length;
        var tag_count = $('.tag-item').length;
        var count = checkTag_count + tag_count;
    	if (count > 5) {
    		$(this).prop('checked', false);
    		swal('알림', '5개까지 등록가능합니다.', 'info');
		}
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
    $(document).on('click', '.dragAndDropDiv',function (e){
        $('input[name=projDetailImg]').trigger('click');
    });

    $(document).on('change', 'input[name=projDetailImg]',function(e) {
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

    	var tag1 = $('<ul class="jFiler-items-list jFiler-items-grid"></ul>').appendTo($("#imgBox"));
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
    	
    	$("#imgBox").append($("#imgBox").tag1);
    	
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
	        projRecruitNum: {
	            required: true, min: 1, max: 100,
	        },
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
	        projRecruitNum: {
	            required: '모집인원을 입력해주세요.',
	            min: '모집인원은 최소 {1} 명 이상 입력하셔야 합니다.',
	            max: '모집인원은 최소 {100} 명까지 가능합니다.',
	        },
	        projChannel: '채널을 선택해주세요.',
	        projNation: '등록지역을 선택해주세요.',
	    }
	});

	// CKEDITOR 값 저장
	CKEDITOR.instances.projDetail.on('blur', function(e) {
		var projDetail = CKEDITOR.instances.projDetail.getData();
		$('#projDetail').text(projDetail);
		console.log(projDetail);
		console.log($('#projDetail').text(projDetail));
	});

    $('#proj_form').ajaxForm({
        // submit 전에 호출된다.
        beforeSubmit: function(arr, form, options) {
        	CKupdate();
        	
            // validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
            // 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            return $(form).valid();
        },
        success: function(json) {
        	swal('알림', '거래처 정보가 수정되었습니다.', 'success').then(function(result) {
        		var projId = $('#projId').val();
                window.location = ROOT_URL + '/project/detail?projId='+projId;
            });
        },
    });	


/*     $(document).on("submit", "#proj_form", function(e){
		e.preventDefault();
		
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
                       window.location = ROOT_URL + '/';
                   });
               }
        });
        
    }); */
    
    /* 썸네일 이미지 업로드 */
    $(document).ready(function() {
    	$(document).on("change", "#image", handleImgfileSelect);
    	
    }); // end ready...

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
/* CKEDITOR */
//AJAX 로 폼의 데이터를 전송할 때 CKEDITOR로 변환 된 textarea값을 다시 변경해줘야 데이터가 전달된다.
function CKupdate(){
    for ( instance in CKEDITOR.instances )
        CKEDITOR.instances[instance].updateElement();
}

// 리사이징 제한
CKEDITOR.config.resize_enabled = false;
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
	    					<td>썸네일 사진</td>
   							<td>
    							<div>
									<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
										<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									</div>	
    								<div style="display: flex;">
                   		            	<input id = "file_route" type="text" class="formControl" readonly="readonly"/>
                  		           		<label class="fileLable">
                   		          			파일 선택
                  		           		<input id = "image" name="projThumbnailImg" value="" class="jFiler-input-button" type="file" style="display: none;" onchange="javascript:document.getElementById('file_route').value=this.value"/>
                     		        	</label>
                    		        </div>
               		            </div>
   							</td>
	    				</tr>
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
	                               		<option value="고매출 판매자를 찾습니다">고매출 판매자를 찾습니다</option>
	                                	<option value="위탁전문 공급업체입니다">위탁전문 공급업체입니다</option>
	                                	<option value="위탁판매자 찾습니다">위탁판매자 찾습니다</option>
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
	                               		<option value="고마진 공급자를 찾습니다">고마진 공급자를 찾습니다</option>
	                                	<option value="위탁판매 전문셀러입니다">위탁판매 전문셀러입니다</option>
	                                	<option value="위탁업체 찾습니다">위탁업체 찾습니다 </option>
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
	    						<input type="number" class="inputForm width-100" id="projPrice" name="projPrice" min="0" max="100000000" value="0">
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
                                   	<input type="checkbox" name="projKeyword" id="hash3" value="수익보장공급자">
                                   	<label for="hash3"><span>수익보장공급자</span></label></span>
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
    					<div>
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
