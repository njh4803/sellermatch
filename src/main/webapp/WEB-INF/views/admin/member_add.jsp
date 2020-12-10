<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/division/css/style.css">
<%@ include file="inc/navigation.jsp"%>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                <div class="page-header">
								    <div class="page-header-title">
								        <h4>회원관리</h4>
								    </div>
								    <div class="page-header-breadcrumb">
								        <ul class="breadcrumb-title">
								            <li class="breadcrumb-item">
								                <a href="index.html">
								                    <i class="icofont icofont-home"></i>
								                </a>
								            </li>
								            <li class="breadcrumb-item"><a href="#!">회원관리</a>
								            </li>
								            <li class="breadcrumb-item"><a href="#!">회원등록</a>
								            </li>
								        </ul>
								    </div>
								</div>
								    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>회원등록</h5>
                                                        <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title">Basic Inputs</h4>
                                                        <form>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 사진</label>
                                                                <div class="col-sm-10 file_input">
                                                                	<div class="input-group">
                                                                		<div class="imageBox" style="float: left; width: 150px; height: 150px; overflow: hidden; text-align: center;">
									                                    	<img id="img" style="width: 150px; height: 150px; max-width: 150px; max-height: 150px;"
									                                    	src="${pageContext.request.contextPath}/assets/images/user.png"/>
									                                    </div>
									                                    <div style="display: flow-root;">
									                                    	<input id = "file_route" type="text" class="form-control" style="margin-left: 10px; border: none;" readonly="readonly"/>
										                                	<label>
										                                		파일 선택
										                                		<input id = "image" class="jFiler-input-button" type="file" onchange="javascript:document.getElementById('file_route').value=this.value"/>
										                                	</label>
									                                    </div>
																	</div>
                                                                </div>
                                                            </div>
                                                            
                                                            
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">아이디</label>
                                                                <div class="col-sm-10">
                                                                	<div class="input-group">
	                                                                    <input type="text" class="form-control" placeholder="이메일 입력">
	                                                                    <span
																			id="guide" class="input-group-btn">
																			<button type="button" id="idCheck"
																				class="btn form-bg-primary">중복검사</button>
																		</span>
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">비밀번호</label>
                                                                <div class="col-sm-10">
                                                                    <input type="password" class="form-control" placeholder="영문,숫자,특수문자 조합 최대 30글자">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="user_pw_confirm" class="col-sm-2 control-label">비밀번호
																	확인</label>
																<div class="col-sm-10">
																	<input type="password" name="user_pw_confirm" class="form-control"
																		id="user_pw_confirm" placeholder="영문,숫자,특수문자 조합 최대 30글자" />
																</div>
															</div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">이름</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">닉네임</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">산업분류</label>
                                                                <div class="col-sm-10">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input type="checkbox">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>공산품</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input type="checkbox">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>농수산품</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">국가</label>
                                                                <div class="col-sm-10">
                                                                    <select name="select" class="form-control">
						                                                <option value="opt1">선택하세요.</option>
						                                                <option value="opt2">대한민국</option>
						                                                <option value="opt3">베트남</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="email" class="col-sm-2 col-form-label">이메일 인증</label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="email" class="form-control" id="email" />
																		<span class="input-group-btn">
																			<button type="button" id="emailCheck"
																				class="btn form-bg-primary">인증 번호 발송</button>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label for="" class="col-sm-2 col-form-label"></label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="" class="form-control" id="" />
																		<span class="input-group-btn">
																			<button type="button" id=""
																				class="btn form-bg-primary">인증 번호 확인</button>
																		</span>
																	</div>
																</div>
															</div>
                                                            <div class="form-group row">
																<label for="phone" class="col-sm-2 col-form-label">연락처</label>
																<div class="col-sm-10">
																	<input type="text" name="phone" class="form-control" id="phone"
																		placeholder="`-`없이 숫자만 입력" />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label" style="display: flow-root;">우편번호</label>
																<div class="col-sm-4">
																	<div class="input-group">
																		<input type="text" name="postcode" class="form-control"
																			id="postcode" maxlength="5" readonly> <span
																			class="input-group-btn">
																			<button type="button" class="btn form-bg-primary postcode-finder"
																				data-postcode="postcode" data-addr1="addr1"
																				data-frame="postcode-frame" onClick="exeDaumPostcode()">우편번호검색</button>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label">주소</label>
																<div class="col-sm-10 col-sm-offset-2">
																	<input type="text" name="addr1" class="form-control" id="addr1"
																		readonly />
																</div>
															</div>
															<div class="form-group row">
																<label for="address" class="col-sm-2 control-label">상세주소</label>
																<div class="col-sm-10 col-sm-offset-2">
																	<input type="text" name="addr2" class="form-control" id="addr2"
																		placeholder="나머지 주소" />
																</div>
															</div>
                                                            <!-- 회원가입 form end -->
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Basic Form Inputs card end -->                                            
                                            
									    	</div>
										</div>
									</div>
                            <!-- navigation 종료 태그 -->
                        </div>
                    </div>
                </div>
            </div>
<script>
	
$(document).ready(function() {
	$("#image").on("change", handleImgfileSelect);
	
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
	}) 
}
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/daum/exeDaumPostcode.js"></script>
<%@ include file="inc/footer.jsp"%>
