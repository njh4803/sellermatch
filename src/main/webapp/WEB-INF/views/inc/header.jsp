<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <title>전세계 검증된 판매자를 만나는 곳, 셀러매치</title>
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
		
        
        <link href="${pageContext.request.contextPath}/assets/css/reset.css" rel="stylesheet" type="text/css">
        <link href='${pageContext.request.contextPath}/assets/css/custom.css' rel="stylesheet" type="text/css">
        <link href='${pageContext.request.contextPath}/plugins/ajax/ajax_helper.css' rel="stylesheet" type="text/css">
        <script src="https://kit.fontawesome.com/7ebcbe9e0a.js" crossorigin="anonymous"></script>
        
		<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
		<!-- bootstrap css -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<!-- bootstrap js -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<!--카카오API-->
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

		<!-- Google Tag Manager -->
		<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-K84MZ4N');</script>
		<!-- End Google Tag Manager -->
    
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
.bar{
	display: inline-block;
    color: #343434;
    vertical-align: text-bottom;
    font-size: 13px;
    padding: 0 10px;	
}
.clearfix:after { content: '';display: block; float: none; clear: both; }
header #m-search_frm{
	display: none;
}
.m-search-btn{
    position: relative;
    top: 0.8vh;
    width: 4vw;
    left: -8vw;
    background-size: 100%;
    height: 3vh;
    background-repeat: no-repeat;
    background-color: transparent;
    vertical-align: super;
}
.swalcustom {
	width: 350px !important;
}
</style>
</head>
<%@ include file="../modal/loginModal.jsp"%>
<header>
	<div class="header_wrap">
       <h1><a href="${pageContext.request.contextPath}/temp"><img src="${pageContext.request.contextPath}/assets/img/sellermatch_logo.png" alt="sellermatch"></a></h1>
       <nav>
           <ul>
               <li><a href="${pageContext.request.contextPath}/project/find">공급자 · 판매자 찾기</a></li>
               <li><a href="${pageContext.request.contextPath}/seller/find">판매자 리스트</a></li>
               <!-- <li><a href="javascipt:void(0);">커뮤니티</a></li> -->
               <li class="operation">
                   <a href="${pageContext.request.contextPath}/board?boardType=1" class="operation_guide">이용안내</a>
<%-- 	               <div class="operation_guide_list" style="display: none;">
	                    <a href="javascript:void(0);">이용방법</a>
	                    <a href="${pageContext.request.contextPath}/usageFee">이용요금</a>
	                    <a href="${pageContext.request.contextPath}/board?boardType=1">공지사항</a>
	                    <a href="${pageContext.request.contextPath}/board?boardType=2">자주하는 질문</a>
	                    <a href="${pageContext.request.contextPath}/board?boardType=4">1:1 문의하기</a>
	               </div> --%>
               </li>
           </ul>
       </nav>
		<form id="m-search_frm" name="searchform" method="get" action="${pageContext.request.contextPath}/project/find">
	        <div class="input_group">
	            <input class="input-text" type="text" name="m-keyword" placeholder="원하는 키워드로 검색해보세요">
	        </div>
	        <button type="submit" class="m-search-btn" style="background-image: url('${pageContext.request.contextPath}/assets/img/search.png');">
	        </button>
	        <input type="hidden" value="regSort" id="sort" name="sort">
	    </form>
       <!---------------------------- 모바일 ------------------------------->
       <div class="gnb">
       		<div id="menu-container">
	            <div id="menu-wrapper">
	                <div id="hamburger-menu"><span class="cancle"></span><span></span><span class="cancle"></span></div>
	                <!-- hamburger-menu -->
	            </div>
	            <div class="menu-background"></div>
            	<div class="menu-list accordion">
	            	<div class="gnb_login show">
	            		<img class="mobile-img" alt="" src="${pageContext.request.contextPath}/assets/img/mobile.png">
		            	<c:choose>
		            		<c:when test="${member == null}">
		            			<a href="javascript:void(0);" id="login">로그인</a>
		            			<span class="bar">|</span>
			                	<a href="${pageContext.request.contextPath}/member/joinMain">회원가입</a>
		            		</c:when>
		            		<c:otherwise>
			            		<a href="${pageContext.request.contextPath}/myPage/myHome">${member.memNick}님</a>
			            		<span class="bar">|</span>
		            			<a id="logout" href="javascript:void(0);">로그아웃</a>
		            		</c:otherwise>
		            	</c:choose>
		            </div>
         	        <!-- menu-wrapper -->
		            <ul>
		                <li id="nav1" class="toggle accordion-toggle">
		                    <a class="menu-link" href="${pageContext.request.contextPath}/project/find">거래처 찾기
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/assets/img/sidebar.png">
		                    </a>
		                </li>
		                <ul class="menu-submenu accordion-content">
	                    </ul>           
		                <li id="nav2" class="toggle accordion-toggle">
		                    <a class="menu-link" href="${pageContext.request.contextPath}/seller/find">판매자 찾기
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/assets/img/sidebar.png">
		                    </a>
		                </li>
		                <ul class="menu-submenu accordion-content">
	                    </ul>		                
		                <li id="nav3" class="toggle accordion-toggle">
		                    <a class="menu-link" href="#">커뮤니티
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/assets/img/sidebar.png">
		                    </a>
		                </li>
		                <ul class="menu-submenu accordion-content">
	                    </ul>
		                <li id="nav4" class="toggle accordion-toggle">
		                    <a class="menu-link" href="#">이용안내
		                    	<img class="sidebar-img" alt="" src="${pageContext.request.contextPath}/assets/img/sidebar.png">
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
	        <!---------------------------- 모바일  끝------------------------------->
            <div class="gnb_login">
            	<c:choose>
            		<c:when test="${member == null}">
            			<a href="javascript:void(0);" id="login2">로그인</a>
            			<span class="bar">|</span>
	                	<a href="${pageContext.request.contextPath}/member/joinMain">회원가입</a>
            		</c:when>
            		<c:otherwise>
	           			<c:if test="${member.memSort == 1}">
	           				<span class="memSort producer">공급자</span>
	           			</c:if>
	           			<c:if test="${member.memSort == 2}">
	           				<span class="memSort">판매자</span>
	           			</c:if>            		
	            		<a href="${pageContext.request.contextPath}/myPage/myHome">${member.memNick}님</a>
	            		<span class="bar">|</span>
            			<a id="logout2" href="javascript:void(0);">로그아웃</a>
            		</c:otherwise>
            	</c:choose>
            </div>
            <div class="gnb_project">
         		<c:if test="${member.memSort == 1}">
         		<a class="projectInsert producer" id="projectInsert" href="javascript:void(0);" data-member="${member.memId}" data-memsort="${member.memSort}" data-profile="${member.existProfile}" data-memIdx="${member.memIdx}">
         			 판매자 찾기 무료등록
         		</a>
         		</c:if>
         		<c:if test="${member.memSort == 2}">
         		<a class="projectInsert" id="projectInsert" href="javascript:void(0);" data-member="${member.memId}" data-memsort="${member.memSort}" data-profile="${member.existProfile}" data-memIdx="${member.memIdx}">
         			공급자 찾기 무료등록
         		</a>
         		</c:if>
         		<c:if test="${member.memSort == null}">
         		<a class="projectInsert" id="projectInsert" href="javascript:void(0);" data-member="${member.memId}" data-memsort="${member.memSort}" data-profile="${member.existProfile}" data-memIdx="${member.memIdx}">
         			공급자 · 판매자 찾기 무료등록
         		</a>
         		</c:if>            
            </div>
       </div>
   </div>
</header>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K84MZ4N"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<script type="text/javascript">
$(function(){
	
	$('#menuIcon').on('click', function(){
		
	});
	
	$('#login, #login2, #login3').on('click', function(){
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
        			},
        			error: function(json){
        				window.location.href = ROOT_URL+"/temp";
        			}
        		});
			} else {
				return;
			}
        });

	});
	$(".projectInsert").on("click", function(){
		var login_id = $('.projectInsert').data('member');
		var profile = $('.projectInsert').data('profile');
		
		if (login_id == '') {
			swal({
				customClass: 'swalcustom',
                title: '알림',
                text: '로그인 후 이용가능합니다.',
               	type: 'warning',
            });
		} else {
/* 			if (profile == '') {
				swal({
					customClass: 'swalcustom',
	                title: '알림',
	                text: '프로필 등록 후 이용가능합니다.',
	               	type: 'warning',
	            });
			} else { */
				window.location.href = ROOT_URL+'/project/add';
/* 			} */
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
<script>
    <c:if test= "${failLogin != null}">
    alert('${failLogin}');
    </c:if>
</script>
<script type="text/x-handlebars-template" id="sns-link-tmpl">
	<div class="SNSouterbox">
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="window.open(url_combine_naver, '', 'scrollbars=no, width=600, height=600'); return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-naver.png" title="네이버로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">네이버</span>
			</div>
		</div>
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="window.open(url_combine_line, '', 'scrollbars=no, width=600, height=600'); return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-line.png" title="라인으로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">라인</span>
			</div>
		</div>
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="javascript:sendLinkKakao();">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-kakao.png" title="카카톡으로 공유하기" id="kakao-link-btn" class="sharebtn_custom kakao-link-btn" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">카카오톡</span>
			</div>
		</div>
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="javascript:sendLinkKakaoStory();" return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-kakaostory.png" title="카카오스토리로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">카카오스토리</span>
			</div>
		</div>
	</div>
	<div class="SNSouterbox">
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="window.open(url_combine_band, '', 'scrollbars=no, width=600, height=600'); return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-line.png" title="밴드로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">Band</span>
			</div>
		</div>
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="window.open(url_combine_fb, '', 'scrollbars=no, width=600, height=600'); return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-facebook.png" title="페이스북으로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">Facebook</span>
			</div>
		</div>
		<div class="SNSinnerbox">
			<div>
			<a href="" onclick="window.open(url_combine_tw, '', 'scrollbars=no, width=600, height=600'); return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-twitter.png" title="트위터로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">Twitter</span>
			</div>
		</div>
		<div class="SNSinnerbox">
<!--			<div>
			<a href="" onclick="" return false;">
			<img src="${pageContext.request.contextPath}/assets/img/sns-share-instagram.png" title="인스타그램으로 공유하기" class="sharebtn_custom" style="width: 48px;"></a>
			</div>
			<div class="SNSinnerTextbox">
			<span style="display: inline-block">Instagram</span>
			</div>-->
		</div>
		<input id="swal-input1" class="swal2-input" read-only>
		<input type="submit" value="복사" class="SNScopyBtn btn btn-default">
	</div>
</script>    