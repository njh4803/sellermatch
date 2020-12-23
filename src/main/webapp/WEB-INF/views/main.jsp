<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <title>sellermacth</title>
        <meta charset="UTF-8">
    
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
        
        <!--<link rel="stylesheet" type="text/css" href="/plugin/slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="/plugin/slick/slick-theme.css"/>-->
        
        <link href="${pageContext.request.contextPath}/main_assets/css/reset.css" rel="stylesheet" type="text/css">
        <link href='${pageContext.request.contextPath}/main_assets/css/custom.css' rel="stylesheet" type="text/css">
        <script src="https://kit.fontawesome.com/7ebcbe9e0a.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/main_assets/script/jquery-3.5.1.min.js"></script>
        
        <!--<script type="text/javascript" src="/js/jquery.js"></script>
        <script type="text/javascript" src="/plugin/slick/slick.js"></script>-->    
    
	<style>
       .skip {display: none;}
       /*.fixed {position:fixed;}*/
	</style>
</head>
    <body>
        <header>
           <div class="header_wrap">
               <h1><a href="#"><img src="${pageContext.request.contextPath}/main_assets/image/sellermatch_logo_2.png" alt="sellermatch"></a></h1>
               <nav>
                   <ul>
                       <li><a href="#">프로젝트 찾기</a></li>
                       <li><a href="#">판매차 찾기</a></li>
                       <li class="operation">
                           <a href="#" class="operation_guide">셀러매치 이용안내 <i class="fas fa-chevron-down"></i></a>
                           <div class="operation_guide_list">
                                <a href="#">이용방법</a>
                                <a href="#">이용요금</a>
                                <a href="#">공지사항</a>
                                <a href="#">자주하는 질문</a>
                                <a href="#">1:1 문의하기</a>
                           </div>
                       </li>
                   </ul>
               </nav>
               <div class="gnb">
                    <div class="gnb_login">
                        <a href="#">로그인</a>
                        <a href="#">회원가입</a>
                    </div>
                    <div class="gnb_project">
                        <a href="#"><i class="fas fa-bolt"></i> 프로젝트 등록</a>
                    </div>
               </div>
           </div>
        </header>
        <div class="bnr">
            <div class="bnr_wrap">
                <h2>검증된 판매자와<br>
                다양한 공급자의<br>
                확실한 한 판 거래!
                </h2>
                <p>셀러매치에서 검증된 고매출, 고마진 공급자를<br>
                손쉽게 찾아 사업을 실현시켜 드립니다.
                </p>
                <a href="#"><i class="fas fa-bolt"></i> 매치 시작하기</a>
            </div>
        </div>
        <div class="search_bnr">
            <div class="search_wrap">
                <form id="search_frm" name="searchform" method="get" action="">
                <div class="input_group">
                    <input type="text" name="" user="" placeholder="매치 할 프로젝트를 입력하세요.">
                    <button type="button" class="btn_search">
                        <i class="fas fa-bolt"> 검색</i>   
                    </button>    
                </div>    
            </form>
            </div>    
        </div>
        <div class="bnr2">
            <div class="bnr2_wrap">
                <h2>왜 셀러매치일까요?</h2>
                <p class="bnr2_p">셀러매치에서 검증된 고매출, 고마진 공급자를<br>
                    손쉽게 찾아 사업을 실현시켜드립니다.
                </p>
                <div class="advantage_list">
                    <div class="advantage advantage1">
                        <h3>조건에 맞는 거래처 찾기</h3>
                        <p>판매자 &amp; 공급자를<br>
                        지역/상품/채널/수준 등으로<br>
                        분류하여 찾을 수 있습니다.
                        </p>
                    </div>
                    <div class="advantage advantage2">
                        <h3>지속적으로 상품제안 받기</h3>
                        <p>한번 판매자 등록을하면<br>
                        지속적으로 공급자 상품을<br>
                        제안 받을 수 있습니다.
                        </p>
                    </div>
                    <div class="advantage advantage3">
                        <h3>실력이 검증된 판매자 찾기</h3>
                        <p>상품을 잘 판매할 수 있는<br>
                        검증된 판매자를<br>
                        쉽고 빠르게 찾을 수 있습니다.
                        </p>
                    </div>
                    <div class="advantage advantage4">
                        <h3>성공 거래 지원 서비스 받기</h3>
                        <p>성공적인 거래가 될 수 있도록<br>
                        계약/디자인/교육/마케팅 등을<br>
                        셀러매치가 지원합니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="bnr3">
            <div class="bnr3_wrap">
                <div class="supplier">
                    <h3>판매자!</h3>
                    <p>고매진, 독점, 위탁배송, OEM, 도매 등<br>
                    필요한 상품을 빠르게 찾아보세요.
                    </p>
                    <a href="#"><i class="fas fa-bolt"></i> GO!</a>
                </div>
                <div class="seller">
                    <h3>공급자!</h3>
                    <p>오픈마켓, 종합물, SNS, 공동구매,<br>
                    폐쇄물 등 검증된 판매자를 찾아보세요.
                    </p>
                    <a href="#"><i class="fas fa-bolt"></i> GO!</a>
                </div>
            </div>    
        </div>
        <div class="bnr4">
            <div class="bnr4_wrap">
                <h2>거래까지 단 5분!!</h2>
                <p>상품을 선택하셨다면 거래까지 이제 5분안에 뚝딱!!</p>
                <div class="step_list">
                    <div class="step1 step"></div>
                    <div class="step2 step"></div>
                    <div class="step3 step"></div>
                    <div class="next">
                        <p class="next_1"></p>
                        <p class="next_2"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="match_bnr">
            <div class="match_bnr_wrap">
                <h2>기술기반의<br>
                스마트하고 정확한 매치!
                </h2>
                <div class="match_img match_img1"></div>   
                <div class="match_img match_img2"></div>   
            </div>
        </div>
        <div class="partner_bnr">
            <div class="partner_wrap">
                <h2>셀러매치의 파트너</h2>
                <div class="partner_list">
                    <a href="#">partner1</a>
                    <a href="#">partner2</a>
                    <a href="#">partner3</a>
                    <a href="#">partner4</a>
                    <a href="#">partner5</a>
                </div>
            </div>
        </div>
        <footer>
            <div class="footer_wrap">
                <div class="f_top">
                    <ul>
                        <li><a href="#">개인정보처리방침</a></li>
                        <li><a href="#">이메일주소무단수집거부</a></li>
                        <li><a href="#">사이트맵</a></li>
                        <li><p>고객센터: 1234-5678</p>
                    </ul>
                </div>
                <div class="f_btm">
                    <!--<p><em>회사명</em>위셀글로벌 주식회사</p>-->
                    <address><em>소재지</em> 인천광역시 연수구 송도미래로30,D동 909호 </address>
                    <!--<p><em>대표이사</em>송진일</p>-->
                    <!--<p><em>개인정보책임관리자</em>서민승</p>-->
                    <p><em>사업자등록번호</em> 181-87-01992</p>
                    <p><em>통신판매업신고</em> 2020-연수구-1558</p>
                    <p><em>TEL</em> 031-777-7777</p>
                    <p><em>E-mail</em> help@sellermatch.co.kr</p>
                </div>
            </div>
        </footer>
        <script>
            
            $('.operation_guide_list').addClass('skip');
            
            var $operation_guide_list = $('.operation_guide_list')
            
            $('.operation').mouseenter(function(){
                $('.operation_guide_list').stop().slideDown();
            })
            
            $('.operation').mouseleave(function(){
                $('.operation_guide_list').stop().slideUp();
            })
            
        
            
            
                 
            
            
        </script>    
    </body>
</html>
