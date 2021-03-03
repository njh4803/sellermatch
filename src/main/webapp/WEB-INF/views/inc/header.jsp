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
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">
        <link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
        <!-- <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"> -->
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
		<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/> -->
		
        
        <link href="${pageContext.request.contextPath}/main_assets/css/reset.css" rel="stylesheet" type="text/css">
        <link href='${pageContext.request.contextPath}/main_assets/css/custom.css' rel="stylesheet" type="text/css">
        <link href='${pageContext.request.contextPath}/plugins/ajax/ajax_helper.css' rel="stylesheet" type="text/css">
        <script src="https://kit.fontawesome.com/7ebcbe9e0a.js" crossorigin="anonymous"></script>
        
		<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
		<!-- bootstrap css -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<!-- bootstrap js -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		

		
    
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
.headerPass{
  width: 10.2px;
  height: 14.3px;
  margin-top: -3px;
}
.clearfix:after { content: '';display: block; float: none; clear: both; }
</style>
</head>
<%@ include file="../modal/loginModal.jsp"%>
<header>
	<div class="header_wrap">
       <h1><a href="${pageContext.request.contextPath}/temp"><img src="${pageContext.request.contextPath}/main_assets/image/sellermatch_logo_2.png" alt="sellermatch"></a></h1>
       <nav>
           <ul>
               <li><a href="${pageContext.request.contextPath}/project/find">거래처 찾기</a></li>
               <li><a href="${pageContext.request.contextPath}/seller/find">판매자 찾기</a></li>
               <li><a href="javascipt:void(0);">커뮤니티</a></li>
               <li class="operation">
                   <a href="${pageContext.request.contextPath}/usageFee" class="operation_guide">이용안내 </a>
               </li>
           </ul>
       </nav>
       <div class="gnb">
       		<div id="menu-container">
	            <div id="menu-wrapper">
	                <div id="hamburger-menu"><span class="cancle"></span><span></span><span class="cancle"></span></div>
	                <!-- hamburger-menu -->
	            </div>
	            <div class="menu-background"></div>
            	<div class="menu-list accordion">
	            	<div class="gnb_login show">
	            		<img class="mobile-img" alt="" src="${pageContext.request.contextPath}/local_assets/img/mobile.png">
		            	<c:choose>
		            		<c:when test="${member == null}">
		            			<a href="javascript:void(0);" id="login">로그인</a>
			                	<a href="${pageContext.request.contextPath}/member/joinMain">회원가입</a>
		            		</c:when>
		            		<c:otherwise>
			            		<a href="#">${member.memNick}님</a>
			            		<a href="${pageContext.request.contextPath}/member/myPage">마이페이지</a>
		            			<a id="logout" href="javascript:void(0);">로그아웃</a>
		            		</c:otherwise>
		            	</c:choose>
		            </div>
         	        <!-- menu-wrapper -->
		            <ul>
		                <li id="nav1" class="toggle accordion-toggle">
		                    <a class="menu-link" href="${pageContext.request.contextPath}/project/find">거래처 찾기
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/local_assets/img/sidebar.png">
		                    </a>
		                </li>
		                <ul class="menu-submenu accordion-content">
	                    </ul>           
		                <li id="nav2" class="toggle accordion-toggle">
		                    <a class="menu-link" href="${pageContext.request.contextPath}/seller/find">판매자 찾기
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/local_assets/img/sidebar.png">
		                    </a>
		                </li>
		                <ul class="menu-submenu accordion-content">
	                    </ul>		                
		                <li id="nav3" class="toggle accordion-toggle">
		                    <a class="menu-link" href="#">커뮤니티
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/local_assets/img/sidebar.png">
		                    </a>
		                </li>
		                <ul class="menu-submenu accordion-content">
	                    </ul>
		                <li id="nav4" class="toggle accordion-toggle">
		                    <a class="menu-link" href="#">이용안내
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/local_assets/img/sidebar.png">
		                    </a>
		                </li>
	                    <ul class="menu-submenu accordion-content">
							<li><a class="head" href="${pageContext.request.contextPath}/usageFee">Submenu1</a></li>
	                        <li><a class="head" href="#">Submenu2</a></li>
	                        <li><a class="head" href="#">Submenu3</a></li>
	                        <li><a class="head" href="#">Submenu4</a></li>
	                    </ul>
		            <!-- menu-list accordion-->
	            </div>
	        </div>
            <div class="gnb_login">
            	<c:choose>
            		<c:when test="${member == null}">
            			<a href="javascript:void(0);" id="login2">로그인</a>
	                	<a href="${pageContext.request.contextPath}/member/joinMain">회원가입</a>
            		</c:when>
            		<c:otherwise>
	            		<a href="#">${member.memNick}님</a>
	            		<a href="${pageContext.request.contextPath}/member/myPage">마이페이지</a>
            			<a id="logout2" href="javascript:void(0);">로그아웃</a>
            		</c:otherwise>
            	</c:choose>
            </div>
            <div class="gnb_project">
                <a id="projectInsert" href="javascript:void(0);" data-member="${member.memId}" data-memsort="${member.memSort}" data-profile="${member.existProfile}">
                	거래처 찾기 무료등록
                </a>
            </div>
       </div>
   </div>
</header>
<body>
<script type="text/javascript">
$(function(){
	
	$('#menuIcon').on('click', function(){
		
	});
	
	$('#login, #login2').on('click', function(){
		$('#loginModal .modal-dialog').remove();
		$(".modal-open").attr('style','');
		var content = {
				
    		}
		
		var template = Handlebars.compile($("#login-tmpl").html());
  		var html = template(content);
  		$("#loginModal").append(html);
		$("#loginModal").modal();
	});
	
	$("#logout, #logout2").on("click", function(){
		swal({
            title: '알림',
            text: '정말 로그아웃 하시겠습니까?',
           	type: "question",
            icon: 'success',
            showCancelButton: true,
        }).then(function(result) {
        	if (result.value) {
        		$.ajax({
        			type: "GET",
        			url: ROOT_URL+"/member/logout",
        			dataType: "json",
        			success: function(json){
        				window.location.href = ROOT_URL+"/temp";
        			}
        		});
			} else {
				return;
			}
        });

	});
	$("#projectInsert").on("click", function(){
		var login_id = $('#projectInsert').data('member');
		var profile = $('#projectInsert').data('profile');
		
		if (login_id == '') {
			swal({
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
		} else {
			if (profile == '') {
				swal({
	                title: '알림',
	                text: '프로필 등록 후 이용가능합니다.',
	               	type: 'warning',
	            });
			} else {
				window.location.href = ROOT_URL+'/project/add';
			}
		}
		
		
	});
	
	$('.operation_guide_list').addClass('skip');
    
    var $operation_guide_list = $('.operation_guide_list')
    
    $('.operation').mouseenter(function(){
        $('.operation_guide_list').stop().slideDown();
    })
    
    $('.operation').mouseleave(function(){
        $('.operation_guide_list').stop().slideUp();
    })
    
    function slideMenu() {
        var activeState = $("#menu-container .menu-list").hasClass("active");
        $("#menu-container .menu-list").animate({left: activeState ? "40%" : "-100%"}, 400);
    }
    $("#menu-wrapper").click(function(event) {
        event.stopPropagation();
        $("#hamburger-menu").toggleClass("open");
        $(".menu-background").toggleClass("show");
        $("#menu-container .menu-list").toggleClass("active");
        slideMenu();

        $("body").toggleClass("overflow-hidden");
    });

    $(".menu-list").find(".accordion-toggle").click(function() {
        $(this).next().toggleClass("open").slideToggle("fast");
        $(this).toggleClass("active-tab").find(".menu-link").toggleClass("active");

        $(".menu-list .accordion-content").not($(this).next()).slideUp("fast").removeClass("open");
        $(".menu-list .accordion-toggle").not(jQuery(this)).removeClass("active-tab").find(".menu-link").removeClass("active");
    });
    
    $(".menu-background").click(function(event) {
    	$("#hamburger-menu").toggleClass("open");
    	$(".menu-background").toggleClass("show");
        $("#menu-container .menu-list").toggleClass("active");
        slideMenu();
        $("body").toggleClass("overflow-hidden");
    });
});
</script>