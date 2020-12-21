<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>SellerMatch</title>
	<!-- tset -->
	<!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Phoenixcoded">
    <meta name="keywords" content=", Flat ui, Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="Phoenixcoded">
    <!-- Favicon icon -->
	<!-- <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" type="image/x-icon"> -->
    <link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bower_components/bootstrap/css/bootstrap.min.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/icon/icofont/css/icofont.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!-- color .css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/color/color-1.css" id="color"/>
    <style>
      #link:hover{
        text-decoration: underline;
      }
      .login {
		background-color: #292929;
	  }
	  .btn-primary, .sweet-alert button.confirm, .wizard > .actions a {
	    background-color: #c9151e;
	    border-color: #c9151e;
	    color: #fff;
	    cursor: pointer;
	    transition: all ease-in 0.3s;
	}
	.btn-primary:hover, .sweet-alert button.confirm:hover, .wizard > .actions a:hover {
	    background-color: #a31920;
	    border-color: #a31920;
	}
	.auth-box {
	    background-color: rgba( 255, 255, 255, 0.5 );
	    margin: 20px 0 0 0;
	    padding: 20px;
	    border-radius: 0px;
	}
    </style>
</head>
<body class="fix-menu">
<!-- <div><font size="5">&nbsp;IMAGE SERVER</font></div> -->
    <section class="login p-fixed d-flex text-center bg-primary common-img-bg">
        <!-- Container-fluid starts -->
        <div class="container-fluid auth-body">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->
                    <div class="login-card card-block auth-body">
                        <form class="md-float-material" action="<c:url value= 'loginAction'/>" method="post" id="loginForm">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div class="text-center">
                            	<!-- <img src="${pageContext.request.contextPath}/assets/images/LIVEVERY.png" alt="logo.png"> -->
                            </div>
                            <div class="auth-box">
                            	<div class="row m-b-20">
                                    <div class="col-md-12">
                                       <img src="${pageContext.request.contextPath}/assets/images/livv_red.png" alt="" style="width: 250px; height: 65px;">
                                    </div>
                                </div>
                                <hr/>
                                <div class="input-group m-b-10">
                                    <input name ="username" type="email" class="form-control" placeholder="ID">

                                    <span class="md-line"></span>
                                </div>
                                <div class="input-group">
                                    <input onkeyup="enter_login();" name = "password" type="password" class="form-control" placeholder="Password">
                                    <span class="md-line"></span>
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                      <button id='loginBtn' type="button" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20"
                                      onclick="login();" >로그인</button>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row" style="text-align: center;">
                                  <div class="col-md-12">
                                    <p class="text-inverse m-t-10" style="font-size: 12px;">㈜유니온콘텐츠 UnionContents Co., Ltd</p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </form>
                        <!-- end of form -->
                    </div>
                    <!-- Authentication card end -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
</body>
</html>