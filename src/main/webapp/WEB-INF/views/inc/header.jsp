<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <title>sellermacth</title>
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
		<meta name="description" content="Phoenixcoded">
		<meta name="keywords" content=", Flat ui, Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
		<meta name="author" content="Phoenixcoded">
    
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		
        
        <link href="${pageContext.request.contextPath}/main_assets/css/reset.css" rel="stylesheet" type="text/css">
        <link href='${pageContext.request.contextPath}/main_assets/css/custom.css' rel="stylesheet" type="text/css">
        <script src="https://kit.fontawesome.com/7ebcbe9e0a.js" crossorigin="anonymous"></script>
        
		<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		

		
    
<style>
.skip {display: none;}
.modal-header {
	display: block;
}
.main-body .page-wrapper .page-header-title h6 {
    display: inline-block;
    margin-bottom: 0;
    font-weight: 600;
    color: #4a6076;
    font-size: 14px;
}
</style>
</head>
<header>
   <div class="header_wrap">
       <h1><a href="${pageContext.request.contextPath}/temp"><img src="${pageContext.request.contextPath}/main_assets/image/sellermatch_logo_2.png" alt="sellermatch"></a></h1>
       <nav>
           <ul>
               <li><a href="${pageContext.request.contextPath}/project/find">프로젝트 찾기</a></li>
               <li><a href="${pageContext.request.contextPath}/seller/find">판매차 찾기</a></li>
               <li class="operation">
                   <a href="#" class="operation_guide">셀러매치 이용안내 <i class="fas fa-chevron-down"></i></a>
                   <div class="operation_guide_list" style="display: none;">
                        <a href="#">이용방법</a>
                        <a href="#">이용요금</a>
                        <a href="${pageContext.request.contextPath}/board?boardTpye=1">공지사항</a>
                        <a href="${pageContext.request.contextPath}/board?boardTpye=2">자주하는 질문</a>
                        <a href="${pageContext.request.contextPath}/board?boardTpye=4">1:1 문의하기</a>
                   </div>
               </li>
           </ul>
       </nav>
       <div class="gnb">
            <div class="gnb_login">
                <a href="${pageContext.request.contextPath}/member/login">로그인</a>
                <a href="${pageContext.request.contextPath}/member/join">회원가입</a>
            </div>
            <div class="gnb_project">
                <a href="${pageContext.request.contextPath}/project/add"><i class="fas fa-bolt"></i> 프로젝트 등록</a>
            </div>
       </div>
   </div>
</header>
<body>