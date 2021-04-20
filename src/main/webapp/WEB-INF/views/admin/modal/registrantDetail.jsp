<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- Modal -->
  <div class="modal fade" id="registrantModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">등록자정보</h4>
        </div>
        <div class="modal-body">
        													<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 사진
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <img id="profilePhoto" style="width: 150px; border-radius: 50%;" alt="" src="">
                                                                </div>
                                                            </div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">프로필 유형
                                                                </label>
                                                                <input type="hidden" name="profileSort">
                                                                <div class="col-sm-10">
                                                                    <select id="profileSort" class="form-control" disabled="disabled">
						                                                <option value="1">공급자</option>
						                                                <option value="2">판매자</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="profileMemId" class="col-sm-2 col-form-label">아이디
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileMemId" type="text" name="profileMemId" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label for="profileMemId" class="col-sm-2 col-form-label">닉네임
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileMemNick" type="text" name="profileMemNick" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>                                                            
                                                            <div class="form-group row">
                                                                <label for="profileRegDate" class="col-sm-2 col-form-label">프로필 등록일
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileRegDate" type="date" name="profileRegDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label class="col-sm-2 col-form-label">판매 경력
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileCareer" name="profileCareer" class="form-control" disabled="disabled">
						                                                <option value="0">경력없음</option>
						                                                <option value="1">1개월 이상 ~ 3개월 미만</option>
						                                                <option value="3">3개월 이상 ~ 6개월 미만</option>
						                                                <option value="6">6개월 이상 ~ 1년 미만</option>
						                                                <option value="9">1년 이상 ~ 3년 미만</option>
						                                                <option value="8">3년 이상</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">등록자 지역
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileNation" name="profileNation" class="form-control" disabled="disabled">
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
									                                    <option value="064">제주특별자치도</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">상품분류</label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileIndus" name="profileIndus" class="form-control" disabled="disabled">
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
                                                            </div>
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">채널</label>
                                                                <div class="col-sm-10">
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="1"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오픈마켓</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="2"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>종합몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="3"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>폐쇄몰</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="4"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>커뮤니티</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="5"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>SNS</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="6"disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>오프라인</span>
	                                                                    </label>
                                                                	</div>
                                                                	<div class="checkbox-fade fade-in-primary">
	                                                                    <label>
	                                                                    	<input id="profileCh" type="checkbox" name="profileCh" value="7" disabled="disabled">
	                                                                    	<span class="cr">
	                                                                    		<i class="cr-icon icofont icofont-ui-check txt-primary"></i>
	                                                                    	</span>
	                                                                    	<span>해외</span>
	                                                                    </label>
                                                                	</div>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">해시태그</label>
                                                                <div class="col-sm-10">
                                                                   	<span id="hashTag1"></span>
                                                                   	<span id="hashTag2"></span>
                                                                   	<span id="hashTag3"></span>
                                                                   	<span id="hashTag4"></span>
                                                                   	<span id="hashTag5"></span>
                                                         		</div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label class="col-sm-2 col-form-label">채널 검증
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileChChk" name="profileChChk" class="form-control" disabled="disabled">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label for="profileChChkDate" class="col-sm-2 col-form-label">채널 검증일
                                                                </label>
                                                                <div class="col-sm-10">
                                                                	<div class="form-group">
	                                                                    <input id="profileChChkDate" type="date" name="profileChChkDate" class="form-control" readonly="readonly">
																	</div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
																<label for="profileBizNum" class="col-sm-2 col-form-label">사업자 번호
																	<span class="identify">*</span>
																</label>
																<div class="col-sm-10">
																	<input type="text" name="profileBizNum" class="form-control" id="profileBizNum" readonly="readonly"/>
																</div>
															</div>
															<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">사업자 유형
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileBizSort" name="profileBizSort" class="form-control" disabled="disabled">
						                                                <option value="">선택하세요.</option>
						                                                <option value="1">법인사업자</option>
						                                                <option value="2">개인사업자</option>
						                                                <option value="3">간이과세자</option>
						                                                <option value="4">개인</option>
						                                                <option value="5">기타</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">사업자 인증
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileBizCerti" name="profileBizCerti" class="form-control" disabled="disabled">
						                                                <option value="0">미인증</option>
						                                                <option value="1">인증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row seller">
                                                                <label class="col-sm-2 col-form-label">매출 검증
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileSaleChk" name="profileSaleChk" class="form-control" disabled="disabled">
						                                                <option value="0">미검증</option>
						                                                <option value="1">검증</option>
						                                            </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">신원 인증
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <select id="profileRname" name="profileRname" class="form-control" disabled="disabled">
						                                                <option value="0">미인증</option>
						                                                <option value="1">인증</option>
						                                            </select>
                                                                </div>
                                                            </div>
											                <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">자기 소개
                                                                	<span class="identify">*</span>
                                                                </label>
                                                                <div class="col-sm-10">
                                                                    <textarea id="profileIntro" name="profileIntro" style="width: 100%; height: 150px;" class="form-control" readonly="readonly"></textarea>
                                                                </div>
                                                            </div>									
        </div>
      </div>
    </div>
  </div>