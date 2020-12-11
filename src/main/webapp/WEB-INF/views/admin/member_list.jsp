<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%>
<%@ include file="inc/navigation.jsp"%>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div></div>
        </div>
    </div>
    <!-- Pre-loader end -->

    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-header start -->
                                    <div class="page-header">
                                        <div class="page-header-title">
                                            <h4>Basic DataTables</h4>
                                            <span>Basic initialisation of DataTables</span>
                                        </div>
                                        <div class="page-header-breadcrumb">
                                            <ul class="breadcrumb-title">
                                                <li class="breadcrumb-item">
                                                    <a href="index.html">
                                                        <i class="icofont icofont-home"></i>
                                                    </a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Data Table</a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Basic Initialization</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Page-header end -->
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Zero config.table start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th>아이디</th>
                                                                        <th>비밀번호</th>
                                                                        <th>회원상태</th>
                                                                        <th>유료회원상태</th>
                                                                        <th>유료시작일</th>
                                                                        <th>유료종료일</th>
                                                                        <th>회원분류</th>
                                                                        <th>산업분류</th>
                                                                        <th>국가</th>
                                                                        <th>지역</th>
                                                                        <th>주소</th>
                                                                        <th>연락처</th>
                                                                        <th>이름</th>
                                                                        <th>실명인증</th>
                                                                        <th>닉네임</th>
                                                                        <th>대표사진</th>
                                                                    	<th>가입 IP</th>
                                                                    	<th>최근로그인</th>
                                                                    	<th>회원탈퇴일</th>
                                                                    	<th>회원등록일</th>
                                                                    	<th>회원정보수정일</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach var="output" items="${output}" varStatus="status">
                                                                    <tr>
                                                                        <td>${output.memId}</td>
                                                                        <td>${output.memPw}</td>
                                                                        <td>${output.memState}</td>
                                                                        <td>${output.memClass}</td>
                                                                        <td>${output.memClassSdate}</td>
                                                                        <td>${output.memClassEdate}</td>
                                                                        <td>${output.memSort}</td>
                                                                        <td>${output.memIndus}</td>
                                                                        <td>${output.memCountry}</td>
                                                                        <td>${output.memNation}</td>
                                                                        <td>${output.memPost} ${output.memAddr} ${output.memAddr2}</td>
                                                                        <td>${output.memTel}</td>
                                                                        <td>${output.memName}</td>
                                                                        <td>${output.memRname}</td>
                                                                        <td>${output.memNick}</td>
                                                                        <td>${output.memPhoto}</td>
                                                                        <td>${output.memIp}</td>
                                                                        <td>${output.memLoginDate}</td>
                                                                        <td>${output.memOutDate}</td>
                                                                        <td>${output.memDate}</td>
                                                                        <td>${output.memEditDate}</td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                                <tfoot><tr class="footable-paging"><td colspan="5"><ul class="pagination"><li class="footable-page-nav disabled" data-page="first"><a class="footable-page-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">«</font></font></a></li><li class="footable-page-nav disabled" data-page="prev"><a class="footable-page-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">‹</font></font></a></li><li class="footable-page visible active" data-page="1"><a class="footable-page-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1</font></font></a></li><li class="footable-page visible" data-page="2"><a class="footable-page-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2</font></font></a></li><li class="footable-page-nav" data-page="next"><a class="footable-page-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">›</font></font></a></li><li class="footable-page-nav" data-page="last"><a class="footable-page-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">»</font></font></a></li></ul><div class="divider"></div><span class="label label-default"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1/2</font></font></span></td></tr></tfoot>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Zero config.table end -->
                                                <!-- Language - Comma Decimal Place table end -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                </div>
            </div>
        </div>
    </div>
<%@ include file="inc/footer.jsp"%>