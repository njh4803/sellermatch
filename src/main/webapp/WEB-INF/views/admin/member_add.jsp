<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
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
                                                                <label  for="profile_img"  class="col-sm-2 col-form-label">프로필 사진</label>
                                                                <div class="col-sm-10">
                                                                	<div class="input-group">
	                                                                    <div class="image-upload">
																			<img id="profile_img" style="width: 150px; height: 150px;"
																				src="${pageContext.request.contextPath}/assets/images/user.png">
												
												
																		</div>
																		<input id="photo" type="file" name="photo"
																			accept="image/jpg, image/gif, image/png" />
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">아아디</label>
                                                                <div class="col-sm-10">
                                                                	<div class="input-group">
	                                                                    <input type="text" class="form-control">
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
                                                                    <input type="password" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">이름</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">산업분류</label>
                                                                <div class="col-sm-10">
                                                                    <label><input type="checkbox">공산품</label>
                                                                    <label><input type="checkbox">농수산품</label>
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
																<label for="email" class="col-sm-2 col-form-label">이메일</label>
																<div class="col-sm-10">
																	<div class="input-group">
																		<input type="text" name="email" class="form-control" id="email" />
																		<span class="input-group-btn">
																			<button type="button" id="emailCheck"
																				class="btn form-bg-primary">중복검사</button>
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
	$(function() {
		$("#photo").on('change', function() {
			readURL(this);
		});
	});
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#profile_img').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<%@ include file="inc/footer.jsp"%>
