<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html>
<head>
	<title>관리자 페이지</title>
    <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
      <meta name="description" content="Phoenixcoded">
      <meta name="keywords" content=", Flat ui, Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
      <meta name="author" content="Phoenixcoded">
      <!-- Favicon icon -->
      <link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" type="image/x-icon">
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bower_components/bootstrap/css/bootstrap.min.css">
      <!-- themify icon -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/icon/themify-icons/themify-icons.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/icon/icofont/css/icofont.css">
      <!-- flag icon framework css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/flag-icon/flag-icon.min.css">
      <!-- Menu-Search css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/menu-search/css/component.css">
      <!-- Horizontal-Timeline css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/dashboard/horizontal-timeline/css/style.css">
      <!-- amchart css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/dashboard/amchart/css/amchart.css">
      <!-- flag icon framework css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/pages/flag-icon/flag-icon.min.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style.css">
      <!--color css-->


      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/linearicons.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ionicons.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/jquery.mCustomScrollbar.css">

  </head>
  <body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div></div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <!-- Menu header start -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

<!--             <nav class="navbar header-navbar pcoded-header" header-theme="theme4">
                <div class="navbar-wrapper">
                    <div class="navbar-logo">
                        <a class="mobile-menu" id="mobile-collapse" href="#!">
                            <i class="ti-menu"></i>
                        </a>
                        <a class="mobile-search morphsearch-search" href="#">
                            <i class="ti-search"></i>
                        </a>
                        <a href="index.html">
                            <img class="img-fluid" src="assets/images/logo.png" alt="Theme-Logo" />
                        </a>
                        <a class="mobile-options">
                            <i class="ti-more"></i>
                        </a>
                    </div>
                    <div class="navbar-container container-fluid">
                        <div>
                            <ul class="nav-left">
                                <li>
                                    <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                                </li>
                                <li>
                                    <a class="main-search morphsearch-search" href="#">
                                        themify icon
                                        <i class="ti-search"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#!" onclick="javascript:toggleFullScreen()">
                                        <i class="ti-fullscreen"></i>
                                    </a>
                                </li>
                                <li class="mega-menu-top">
                                    <a href="#">
                                        Mega
                                        <i class="ti-angle-down"></i>
                                    </a>
                                    <ul class="show-notification row">
                                        <li class="col-sm-3">
                                            <h6 class="mega-menu-title">Popular Links</h6>
                                            <ul class="mega-menu-links">
                                                <li><a href="form-elements-component.html">Form Elements</a></li>
                                                <li><a href="button.html">Buttons</a></li>
                                                <li><a href="map-google.html">Maps</a></li>
                                                <li><a href="user-card.html">Contact Cards</a></li>
                                                <li><a href="user-profile.html">User Information</a></li>
                                                <li><a href="auth-lock-screen.html">Lock Screen</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-sm-3">
                                            <h6 class="mega-menu-title">Mailbox</h6>
                                            <ul class="mega-mailbox">
                                                <li>
                                                    <a href="#" class="media">
                                                        <div class="media-left">
                                                            <i class="ti-folder"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5>Data Backup</h5>
                                                            <small class="text-muted">Store your data</small>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="media">
                                                        <div class="media-left">
                                                            <i class="ti-headphone-alt"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5>Support</h5>
                                                            <small class="text-muted">24-hour support</small>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="media">
                                                        <div class="media-left">
                                                            <i class="ti-dropbox"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5>Drop-box</h5>
                                                            <small class="text-muted">Store large amount of data in one-box only
                                                            </small>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="media">
                                                        <div class="media-left">
                                                            <i class="ti-location-pin"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5>Location</h5>
                                                            <small class="text-muted">Find Your Location with ease of use</small>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="col-sm-3">
                                            <h6 class="mega-menu-title">Gallery</h6>
                                            <div class="row m-b-20">
                                                <div class="col-sm-4"><img class="img-fluid img-thumbnail" src="assets/images/mega-menu/01.jpg" alt="Gallery-1">
                                                </div>
                                                <div class="col-sm-4"><img class="img-fluid img-thumbnail" src="assets/images/mega-menu/02.jpg" alt="Gallery-2">
                                                </div>
                                                <div class="col-sm-4"><img class="img-fluid img-thumbnail" src="assets/images/mega-menu/03.jpg" alt="Gallery-3">
                                                </div>
                                            </div>
                                            <div class="row m-b-20">
                                                <div class="col-sm-4"><img class="img-fluid img-thumbnail" src="assets/images/mega-menu/04.jpg" alt="Gallery-4">
                                                </div>
                                                <div class="col-sm-4"><img class="img-fluid img-thumbnail" src="assets/images/mega-menu/05.jpg" alt="Gallery-5">
                                                </div>
                                                <div class="col-sm-4"><img class="img-fluid img-thumbnail" src="assets/images/mega-menu/06.jpg" alt="Gallery-6">
                                                </div>
                                            </div>
                                            <button class="btn btn-primary btn-sm btn-block">Browse Gallery</button>
                                        </li>
                                        <li class="col-sm-3">
                                            <h6 class="mega-menu-title">Contact Us</h6>
                                            <div class="mega-menu-contact">
                                                <div class="form-group row">
                                                    <label for="example-text-input" class="col-3 col-form-label">Name</label>
                                                    <div class="col-9">
                                                        <input class="form-control" type="text" placeholder="Artisanal kale" id="example-text-input">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="example-search-input" class="col-3 col-form-label">Email</label>
                                                    <div class="col-9">
                                                        <input class="form-control" type="email" placeholder="Enter your E-mail Id" id="example-search-input">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="example-search-input" class="col-3 col-form-label">Contact</label>
                                                    <div class="col-9">
                                                        <input class="form-control" type="number" placeholder="+91-9898989898" id="example-search-input">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="exampleTextarea" class="col-3 col-form-label">Message</label>
                                                    <div class="col-9">
                                                        <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="nav-right">
                                <li class="header-notification lng-dropdown">
                                    <a href="#" id="dropdown-active-item">
                                        <i class="flag-icon flag-icon-gb m-r-5"></i> English
                                    </a>
                                    <ul class="show-notification">
                                        <li>
                                            <a href="#" data-lng="en">
                                                <i class="flag-icon flag-icon-gb m-r-5"></i> English
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-lng="es">
                                                <i class="flag-icon flag-icon-es m-r-5"></i> Spanish
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-lng="pt">
                                                <i class="flag-icon flag-icon-pt m-r-5"></i> Portuguese
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-lng="fr">
                                                <i class="flag-icon flag-icon-fr m-r-5"></i> French
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="header-notification">
                                    <a href="#!">
                                        <i class="ti-bell"></i>
                                        <span class="badge">5</span>
                                    </a>
                                    <ul class="show-notification">
                                        <li>
                                            <h6>Notifications</h6>
                                            <label class="label label-danger">New</label>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="d-flex align-self-center" src="assets/images/user.png" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="notification-user">John Doe</h5>
                                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                    <span class="notification-time">30 minutes ago</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="d-flex align-self-center" src="assets/images/user.png" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="notification-user">Joseph William</h5>
                                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                    <span class="notification-time">30 minutes ago</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="d-flex align-self-center" src="assets/images/user.png" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="notification-user">Sara Soudein</h5>
                                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                    <span class="notification-time">30 minutes ago</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="header-notification">
                                    <a href="#!" class="displayChatbox">
                                        <i class="ti-comments"></i>
                                        <span class="badge">9</span>
                                    </a>
                                </li>
                                <li class="user-profile header-notification">
                                    <a href="#!">
                                        <img src="assets/images/user.png" alt="User-Profile-Image">
                                        <span>John Doe</span>
                                        <i class="ti-angle-down"></i>
                                    </a>
                                    <ul class="show-notification profile-notification">
                                        <li>
                                            <a href="#!">
                                                <i class="ti-settings"></i> Settings
                                            </a>
                                        </li>
                                        <li>
                                            <a href="user-profile.html">
                                                <i class="ti-user"></i> Profile
                                            </a>
                                        </li>
                                        <li>
                                            <a href="email-inbox.html">
                                                <i class="ti-email"></i> My Messages
                                            </a>
                                        </li>
                                        <li>
                                            <a href="auth-lock-screen.html">
                                                <i class="ti-lock"></i> Lock Screen
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#!">
                                                <i class="ti-layout-sidebar-left"></i> Logout
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            search
                            <div id="morphsearch" class="morphsearch">
                                <form class="morphsearch-form">
                                    <input class="morphsearch-input" type="search" placeholder="Search..." />
                                    <button class="morphsearch-submit" type="submit">Search</button>
                                </form>
                                <div class="morphsearch-content">
                                    <div class="dummy-column">
                                        <h2>People</h2>
                                        <a class="dummy-media-object" href="#!">
                                            <img class="round" src="http://0.gravatar.com/avatar/81b58502541f9445253f30497e53c280?s=50&d=identicon&r=G" alt="Sara Soueidan" />
                                            <h3>Sara Soueidan</h3>
                                        </a>
                                        <a class="dummy-media-object" href="#!">
                                            <img class="round" src="http://1.gravatar.com/avatar/9bc7250110c667cd35c0826059b81b75?s=50&d=identicon&r=G" alt="Shaun Dona" />
                                            <h3>Shaun Dona</h3>
                                        </a>
                                    </div>
                                    <div class="dummy-column">
                                        <h2>Popular</h2>
                                        <a class="dummy-media-object" href="#!">
                                            <img src="assets/images/avatar-1.png" alt="PagePreloadingEffect" />
                                            <h3>Page Preloading Effect</h3>
                                        </a>
                                        <a class="dummy-media-object" href="#!">
                                            <img src="assets/images/avatar-1.png" alt="DraggableDualViewSlideshow" />
                                            <h3>Draggable Dual-View Slideshow</h3>
                                        </a>
                                    </div>
                                    <div class="dummy-column">
                                        <h2>Recent</h2>
                                        <a class="dummy-media-object" href="#!">
                                            <img src="assets/images/avatar-1.png" alt="TooltipStylesInspiration" />
                                            <h3>Tooltip Styles Inspiration</h3>
                                        </a>
                                        <a class="dummy-media-object" href="#!">
                                            <img src="assets/images/avatar-1.png" alt="NotificationStyles" />
                                            <h3>Notification Styles Inspiration</h3>
                                        </a>
                                    </div>
                                </div>
                                /morphsearch-content
                                <span class="morphsearch-close"><i class="icofont icofont-search-alt-1"></i></span>
                            </div>
                            search end
                        </div>
                    </div>
                </div>
            </nav> -->

            <!-- Sidebar chat start -->
            <div id="sidebar" class="users p-chat-user showChat">
                <div class="had-container">
                    <div class="card card_main p-fixed users-main">
                        <div class="user-box">
                            <div class="card-block">
                                <div class="right-icon-control">
                                    <input type="text" class="form-control  search-text" placeholder="Search Friend" id="search-friends">
                                    <div class="form-icon">
                                        <i class="icofont icofont-search"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="main-friend-list">
                                <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe" data-toggle="tooltip" data-placement="left" title="Josephin Doe">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-1.png" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Josephin Doe</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe" data-toggle="tooltip" data-placement="left" title="Lary Doe">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/task/task-u1.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Lary Doe</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice" data-toggle="tooltip" data-placement="left" title="Alice">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-2.png" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Alice</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="4" data-status="online" data-username="Alia" data-toggle="tooltip" data-placement="left" title="Alia">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/task/task-u2.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Alia</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="5" data-status="online" data-username="Suzen" data-toggle="tooltip" data-placement="left" title="Suzen">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/task/task-u3.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Suzen</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="6" data-status="offline" data-username="Michael Scofield" data-toggle="tooltip" data-placement="left" title="Michael Scofield">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-3.png" alt="Generic placeholder image">
                                        <div class="live-status bg-danger"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Michael Scofield</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="7" data-status="online" data-username="Irina Shayk" data-toggle="tooltip" data-placement="left" title="Irina Shayk">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-4.png" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Irina Shayk</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="8" data-status="offline" data-username="Sara Tancredi" data-toggle="tooltip" data-placement="left" title="Sara Tancredi">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-5.png" alt="Generic placeholder image">
                                        <div class="live-status bg-danger"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Sara Tancredi</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="9" data-status="online" data-username="Samon" data-toggle="tooltip" data-placement="left" title="Samon">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-1.png" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Samon</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="10" data-status="online" data-username="Daizy Mendize" data-toggle="tooltip" data-placement="left" title="Daizy Mendize">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/task/task-u3.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Daizy Mendize</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="11" data-status="offline" data-username="Loren Scofield" data-toggle="tooltip" data-placement="left" title="Loren Scofield">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-3.png" alt="Generic placeholder image">
                                        <div class="live-status bg-danger"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Loren Scofield</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="12" data-status="online" data-username="Shayk" data-toggle="tooltip" data-placement="left" title="Shayk">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-4.png" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Shayk</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="13" data-status="offline" data-username="Sara" data-toggle="tooltip" data-placement="left" title="Sara">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/task/task-u3.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-danger"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Sara</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="14" data-status="online" data-username="Doe" data-toggle="tooltip" data-placement="left" title="Doe">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/avatar-1.png" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Doe</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="15" data-status="online" data-username="Lary" data-toggle="tooltip" data-placement="left" title="Lary">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-circle" src="assets/images/task/task-u1.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Lary</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sidebar inner chat start-->
            <div class="showChat_inner">
                <div class="media chat-inner-header">
                    <a class="back_chatBox">
                        <i class="icofont icofont-rounded-left"></i> Josephin Doe
                    </a>
                </div>
                <div class="media chat-messages">
                    <a class="media-left photo-table" href="#!">
                        <img class="media-object img-circle m-t-5" src="assets/images/avatar-1.png" alt="Generic placeholder image">
                    </a>
                    <div class="media-body chat-menu-content">
                        <div class="">
                            <p class="chat-cont">I'm just looking around. Will you tell me something about yourself?</p>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                </div>
                <div class="media chat-messages">
                    <div class="media-body chat-menu-reply">
                        <div class="">
                            <p class="chat-cont">I'm just looking around. Will you tell me something about yourself?</p>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                    <div class="media-right photo-table">
                        <a href="#!">
                            <img class="media-object img-circle m-t-5" src="assets/images/avatar-2.png" alt="Generic placeholder image">
                        </a>
                    </div>
                </div>
                <div class="chat-reply-box p-b-20">
                    <div class="right-icon-control">
                        <input type="text" class="form-control search-text" placeholder="Share Your Thoughts">
                        <div class="form-icon">
                            <i class="icofont icofont-paper-plane"></i>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sidebar inner chat end-->
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar" pcoded-header-position="relative">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="">
                                <div class="main-menu-header">
                                    <img class="img-40" src="assets/images/user.png" alt="User-Profile-Image">
                                    <!-- <div class="user-details">
                                        <span>John Doe</span>
                                        <span id="more-details">UX Designer<i class="ti-angle-down"></i></span>
                                    </div> -->
                                </div>

                                <!-- <div class="main-menu-content">
                                    <ul>
                                        <li class="more-details">
                                            <a href="user-profile.html"><i class="ti-user"></i>View Profile</a>
                                            <a href="#!"><i class="ti-settings"></i>Settings</a>
                                            <a href="#!"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                        </li>
                                    </ul>
                                </div> -->
                            </div>
                            <div class="pcoded-navigatio-lavel" data-i18n="nav.category.navigation" menu-title-theme="theme5">Navigation</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu active pcoded-trigger">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="ti-home"></i></span>
                                        <span class="pcoded-mtext" data-i18n="nav.dash.main">대시보드</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <!-- <ul class="pcoded-submenu">
                                        <li class="active">
                                            <a href="index.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.dash.default">Default</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dashboard-ecommerce.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.dash.ecommerce">Ecommerce</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dashboard-crm.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.dash.crm">CRM</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dashboard-analytics.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.dash.analytics">Analytics</span>
                                                <span class="pcoded-badge label label-info ">NEW</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dashboard-project.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.dash.project">Project</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                    </ul> -->
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="ti-layout"></i></span>
                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.main">회원관리</span>
                                        <span class="pcoded-badge label label-warning">NEW</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">

                                        <li class=" pcoded-hasmenu">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-micon"><i class="icon-pie-chart"></i></span>
                                                <span class="pcoded-mtext">회원등록</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                            <!-- <ul class="pcoded-submenu">
                                                <li class=" ">
                                                    <a href="menu-static.html" >
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.vertical.static-layout">Static Layout</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-header-fixed.html">
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext"  data-i18n="nav.page_layout.vertical.header-fixed">Header Fixed</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-compact.html">
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.vertical.compact">Compact</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-sidebar.html">
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.vertical.sidebar-fixed">Sidebar Fixed</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>

                                            </ul> -->
                                        </li>
                                        <li class=" pcoded-hasmenu">
                                            <a href="javascript:void(0)" >
                                                <span class="pcoded-micon"><i class="icon-pie-chart"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.page_layout.horizontal.main">회원조회</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                            <!-- <ul class="pcoded-submenu">
                                                <li class=" ">
                                                    <a href="menu-horizontal-static.html" target="_blank" >
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.horizontal.static-layout">Static Layout</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-horizontal-fixed.html" target="_blank" >
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.horizontal.fixed-layout">Fixed layout</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-horizontal-icon.html" target="_blank" >
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.horizontal.static-with-icon">Static With Icon</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-horizontal-icon-fixed.html" target="_blank">
                                                        <span class="pcoded-micon"><i class="icon-chart"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.page_layout.horizontal.fixed-with-icon">Fixed With Icon</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                            </ul> -->
                                        </li>
                                        <!-- <li class=" ">
                                            <a href="menu-bottom.html">
                                                <span class="pcoded-micon"><i class="icon-pie-chart"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.page_layout.bottom-menu">Bottom Menu</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="box-layout.html" target="_blank" >
                                                <span class="pcoded-micon"><i class="icon-pie-chart"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.page_layout.box-layout">Box Layout</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="menu-rtl.html" target="_blank" >
                                                <span class="pcoded-micon"><i class="icon-pie-chart"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.page_layout.rtl">RTL</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li> -->

                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" >
                                        <span class="pcoded-micon"><i class="ti-layout-cta-right"></i></span>
                                        <span class="pcoded-mtext" data-i18n="nav.navigate.main">상품관리(프로젝트)</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="navbar-light.html" >
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.navigate.navbar">Navbar</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="navbar-dark.html" >
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.navigate.navbar-inverse">Navbar Inverse</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="navbar-elements.html" >
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.navigate.navbar-with-elements">Navbar With Elements</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class=" ">
                                    <a href="widget.html">
                                        <span class="pcoded-micon"><i class="ti-view-grid"></i></span>
                                        <span class="pcoded-mtext" data-i18n="nav.widget.main">결제관리</span>
                                        <span class="pcoded-badge label label-danger">100+</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            
                            
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-header">
                                        <div class="page-header-title">
                                            <h4>Dashboard</h4>
                                        </div>
                                        <div class="page-header-breadcrumb">
                                            <ul class="breadcrumb-title">
                                                <li class="breadcrumb-item">
                                                    <a href="index.html">
                                                        <i class="icofont icofont-home"></i>
                                                    </a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Pages</a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-md-12 col-xl-4">
                                                <!-- table card start -->
                                                <div class="card table-card">
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-eye-alt text-success"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>10k</h5>
                                                                        <span>Visitors</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-ui-music text-danger"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>100%</h5>
                                                                        <span>Volume</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-files text-info"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>2000 +</h5>
                                                                        <span>Files</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-envelope-open text-warning"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>120</h5>
                                                                        <span>Mails</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- table card end -->
                                            </div>
                                            <div class="col-md-12 col-xl-4">
                                                <!-- table card start -->
                                                <div class="card table-card">
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <div id="barchart" style="height:40px;width:40px;"></div>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>1000</h5>
                                                                        <span>Shares</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row ">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-network text-primary"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>600</h5>
                                                                        <span>Network</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="row ">
                                                                    <div class="col-sm-4">
                                                                        <div id="barchart2" style="height:40px;width:40px;"></div>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>350</h5>
                                                                        <span>Returns</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row ">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-network-tower text-primary"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>100%</h5>
                                                                        <span>Connections</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- table card end -->
                                            </div>
                                            <div class="col-md-12 col-xl-4">
                                                <!-- widget primary card start -->
                                                <div class="card table-card widget-primary-card">
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-3 card-block-big">
                                                                <i class="icofont icofont-star"></i>
                                                            </div>
                                                            <div class="col-sm-9">
                                                                <h4>4000 +</h4>
                                                                <h6>Ratings Received</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- widget primary card end -->
                                                <!-- widget-success-card start -->
                                                <div class="card table-card widget-success-card">
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-3 card-block-big">
                                                                <i class="icofont icofont-trophy-alt"></i>
                                                            </div>
                                                            <div class="col-sm-9">
                                                                <h4>17</h4>
                                                                <h6>Achievements</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- widget-success-card end -->
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="card">
                                                    <div class="card-block">
                                                        <div id="chartdiv"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="card">
                                                    <div class="card-block">
                                                        <div class="cd-horizontal-timeline">
                                                            <div class="timeline">
                                                                <div class="events-wrapper">
                                                                    <div class="events">
                                                                        <ol>
                                                                            <li><a href="#0" data-date="16/01/2014" class="selected">16 Jan</a></li>
                                                                            <li><a href="#0" data-date="28/02/2014">28 Feb</a></li>
                                                                            <li><a href="#0" data-date="20/04/2014">20 Mar</a></li>
                                                                            <li><a href="#0" data-date="20/05/2014">20 May</a></li>
                                                                            <li><a href="#0" data-date="09/07/2014">09 Jul</a></li>
                                                                            <li><a href="#0" data-date="30/08/2014">30 Aug</a></li>
                                                                            <li><a href="#0" data-date="15/09/2014">15 Sep</a></li>
                                                                            <li><a href="#0" data-date="01/11/2014">01 Nov</a></li>
                                                                            <li><a href="#0" data-date="10/12/2014">10 Dec</a></li>
                                                                            <li><a href="#0" data-date="19/01/2015">29 Jan</a></li>
                                                                            <li><a href="#0" data-date="03/03/2015">3 Mar</a></li>
                                                                        </ol>
                                                                        <span class="filling-line" aria-hidden="true"></span>
                                                                    </div>
                                                                    <!-- .events -->
                                                                </div>
                                                                <!-- .events-wrapper -->
                                                                <ul class="cd-timeline-navigation">
                                                                    <li><a href="#0" class="prev inactive">Prev</a></li>
                                                                    <li><a href="#0" class="next">Next</a></li>
                                                                </ul>
                                                                <!-- .cd-timeline-navigation -->
                                                            </div>
                                                            <!-- .timeline -->
                                                            <div class="events-content">
                                                                <ol>
                                                                    <li class="selected" data-date="16/01/2014">
                                                                        <h2>Horizontal Timeline</h2>
                                                                        <em>January 16th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="28/02/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>February 28th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="20/04/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>March 20th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="20/05/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>May 20th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="09/07/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>July 9th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="30/08/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>August 30th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="15/09/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>September 15th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="01/11/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>November 1st, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="10/12/2014">
                                                                        <h2>Event title here</h2>
                                                                        <em>December 10th, 2014</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="19/01/2015">
                                                                        <h2>Event title here</h2>
                                                                        <em>January 19th, 2015</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                    <li data-date="03/03/2015">
                                                                        <h2>Event title here</h2>
                                                                        <em>March 3rd, 2015</em>
                                                                        <p class="m-b-0">
                                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi
                                                                            reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.Illum praesentium officia, fugit recusandae ipsa, quia
                                                                            velit nulla adipisci? Consequuntur aspernatur at,
                                                                        </p>
                                                                        <div class="m-t-20 d-timeline-btn">
                                                                            <button class="btn btn-danger">Read More</button>
                                                                            <button class="btn btn-primary f-right"><i class="icofont icofont-plus m-r-0"></i></button>
                                                                        </div>
                                                                    </li>
                                                                </ol>
                                                            </div>
                                                            <!-- .events-content -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="card card-border-primary">
                                                            <div class="card-header">
                                                                <h5>John Doe </h5>
                                                                <!-- <span class="label label-default f-right"> 28 January, 2015 </span> -->
                                                                <div class="dropdown-secondary dropdown f-right">
                                                                    <button class="btn btn-primary btn-mini dropdown-toggle waves-effect waves-light" type="button" id="dropdown6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Overdue</button>
                                                                    <div class="dropdown-menu" aria-labelledby="dropdown6" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-danger"></span>Pending</a>
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-warning"></span>Paid</a>
                                                                        <div class="dropdown-divider"></div>
                                                                        <a class="dropdown-item waves-light waves-effect active" href="#!"><span class="point-marker bg-success"></span>On Hold</a>
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-info"></span>Canceled</a>
                                                                    </div>
                                                                    <!-- end of dropdown menu -->
                                                                    <span class="f-left m-r-5 text-inverse">Status : </span>
                                                                </div>
                                                            </div>
                                                            <div class="card-block">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <ul class="list list-unstyled">
                                                                            <li>Invoice #: &nbsp;0028</li>
                                                                            <li>Issued on: <span class="text-semibold">2015/01/25</span></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <ul class="list list-unstyled text-right">
                                                                            <li>$8,750</li>
                                                                            <li>Method: <span class="text-semibold">Paypal</span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-footer">
                                                                <div class="task-list-table">
                                                                    <p class="task-due"><strong> Due : </strong><strong class="label label-success">23 hours</strong></p>
                                                                </div>
                                                                <div class="task-board m-0">
                                                                    <a href="invoice.html" class="btn btn-info btn-mini b-none"><i class="icofont icofont-eye-alt m-0"></i></a>
                                                                    <!-- end of dropdown-secondary -->
                                                                    <div class="dropdown-secondary dropdown">
                                                                        <button class="btn btn-info btn-mini dropdown-toggle waves-light b-none txt-muted" type="button" id="dropdown3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icofont icofont-navigation-menu"></i></button>
                                                                        <div class="dropdown-menu" aria-labelledby="dropdown3" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-ui-alarm"></i> Print Invoice</a>
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-attachment"></i> Download invoice</a>
                                                                            <div class="dropdown-divider"></div>
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-spinner-alt-5"></i> Edit Invoice</a>
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-ui-edit"></i> Remove Invoice</a>
                                                                        </div>
                                                                        <!-- end of dropdown menu -->
                                                                    </div>
                                                                    <!-- end of seconadary -->
                                                                </div>
                                                                <!-- end of pull-right class -->
                                                            </div>
                                                            <!-- end of card-footer -->
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <!-- Invoice list card start -->
                                                        <div class="card card-border-primary">
                                                            <div class="card-header">
                                                                <h5>John Doe </h5>
                                                                <!-- <span class="label label-default f-right"> 28 January, 2015 </span> -->
                                                                <div class="dropdown-secondary dropdown f-right">
                                                                    <button class="btn btn-primary btn-mini dropdown-toggle waves-effect waves-light" type="button" id="dropdown12" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Overdue</button>
                                                                    <div class="dropdown-menu" aria-labelledby="dropdown12" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-danger"></span>Pending</a>
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-warning"></span>Paid</a>
                                                                        <div class="dropdown-divider"></div>
                                                                        <a class="dropdown-item waves-light waves-effect active" href="#!"><span class="point-marker bg-success"></span>On Hold</a>
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-info"></span>Canceled</a>
                                                                    </div>
                                                                    <!-- end of dropdown menu -->
                                                                    <span class="f-left m-r-5 text-inverse">Status : </span>
                                                                </div>
                                                            </div>
                                                            <div class="card-block">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <ul class="list list-unstyled">
                                                                            <li>Invoice #: &nbsp;0028</li>
                                                                            <li>Issued on: <span class="text-semibold">2015/01/25</span></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <ul class="list list-unstyled text-right">
                                                                            <li>$8,750</li>
                                                                            <li>Method: <span class="text-semibold">Paypal</span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-footer">
                                                                <div class="task-list-table">
                                                                    <p class="task-due"><strong> Due : </strong><strong class="label label-warning">23 hours</strong></p>
                                                                </div>
                                                                <div class="task-board m-0">
                                                                    <a href="invoice.html" class="btn btn-info btn-mini b-none"><i class="icofont icofont-eye-alt m-0"></i></a>
                                                                    <!-- end of dropdown-secondary -->
                                                                    <div class="dropdown-secondary dropdown">
                                                                        <button class="btn btn-info btn-mini dropdown-toggle waves-light b-none txt-muted" type="button" id="dropdown8" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icofont icofont-navigation-menu"></i></button>
                                                                        <div class="dropdown-menu" aria-labelledby="dropdown8" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-ui-alarm"></i> Print Invoice</a>
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-attachment"></i> Download invoice</a>
                                                                            <div class="dropdown-divider"></div>
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-spinner-alt-5"></i> Edit Invoice</a>
                                                                            <a class="dropdown-item waves-light waves-effect" href="#!"><i class="icofont icofont-ui-edit"></i> Remove Invoice</a>
                                                                        </div>
                                                                        <!-- end of dropdown menu -->
                                                                    </div>
                                                                    <!-- end of seconadary -->
                                                                </div>
                                                                <!-- end of pull-right class -->
                                                            </div>
                                                            <!-- end of card-footer -->
                                                        </div>
                                                        <!-- Invoice list card end -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <button class="btn btn-primary btn-sm">Week</button>
                                                        <button class="btn btn-primary btn-sm">Month</button>
                                                        <button class="btn btn-primary btn-sm">Year</button>
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="morris-extra-area"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="card table-1-card">
                                                            <div class="card-block">
                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <thead>
                                                                            <tr class="text-capitalize">
                                                                                <th>Type</th>
                                                                                <th>Lead Name</th>
                                                                                <th>Views</th>
                                                                                <th>Favourites</th>
                                                                                <th>Last Visit</th>
                                                                                <th>Last Action</th>
                                                                                <th>Last Date</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td><a href="#!">Buyer</a>
                                                                                </td>
                                                                                <td>Denish Ann</td>
                                                                                <td>153</td>
                                                                                <td>100</td>
                                                                                <td>20</td>
                                                                                <td>9.23 A.M.</td>
                                                                                <td>9/27/2015</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a class="text-danger" href="#!">Lanload</a>
                                                                                </td>
                                                                                <td>John Doe</td>
                                                                                <td>121</td>
                                                                                <td>100</td>
                                                                                <td>20</td>
                                                                                <td>6.23 A.M.</td>
                                                                                <td>8/27/2015</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="#!">Buyer</a>
                                                                                </td>
                                                                                <td>Henry Joe</td>
                                                                                <td>154</td>
                                                                                <td>140</td>
                                                                                <td>30</td>
                                                                                <td>7.54 P.M.</td>
                                                                                <td>4/30/2015</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a class="text-danger" href="#!">Lanload</a>
                                                                                </td>
                                                                                <td>Sara Soudein</td>
                                                                                <td>153</td>
                                                                                <td>100</td>
                                                                                <td>20</td>
                                                                                <td>9.23 A.M.</td>
                                                                                <td>5/20/2016</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="#!">Buyer</a>
                                                                                </td>
                                                                                <td>Denish Ann</td>
                                                                                <td>153</td>
                                                                                <td>100</td>
                                                                                <td>20</td>
                                                                                <td>9.23 A.M.</td>
                                                                                <td>3/26/2015</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a class="text-info" href="#!">Lanload</a>
                                                                                </td>
                                                                                <td>Stefen Joe</td>
                                                                                <td>153</td>
                                                                                <td>100</td>
                                                                                <td>20</td>
                                                                                <td>11.45 A.M.</td>
                                                                                <td>5/20/2017</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="#!">Buyer</a>
                                                                                </td>
                                                                                <td>Mark Backlus</td>
                                                                                <td>153</td>
                                                                                <td>100</td>
                                                                                <td>20</td>
                                                                                <td>12.40 A.M.</td>
                                                                                <td>3/27/2017</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="card table-card group-widget">
                                                            <div class="">
                                                                <div class="row-table">
                                                                    <div class="col-sm-4 bg-primary card-block-big">
                                                                        <i class="icofont icofont-music"></i>
                                                                        <p>1,586</p>
                                                                    </div>
                                                                    <div class="col-sm-4 bg-dark-primary card-block-big">
                                                                        <i class="icofont icofont-video-clapper"></i>
                                                                        <p>1,743</p>
                                                                    </div>
                                                                    <div class="col-sm-4 bg-darkest-primary card-block-big">
                                                                        <i class="icofont icofont-email"></i>
                                                                        <p>1,096</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="card widget-chat-box">
                                                    <div class="card-header">
                                                        <div class="row">
                                                            <div class="col-sm-2">
                                                                <i class="icofont icofont-navigation-menu pop-up"></i>
                                                            </div>
                                                            <div class="col-sm-8 text-center">
                                                                <h5>
                                                                 John Henry
                                                             </h5>
                                                         </div>
                                                         <div class="col-sm-2 text-right">
                                                            <i class="icofont icofont-ui-edit"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-block">
                                                    <p class="text-center">12:05 A.M.</p>
                                                    <div class="media">
                                                        <img class="d-flex mr-3 img-circle img-40 img-thumbnail" src="assets/images/user-card/img-round1.jpg" alt="Generic placeholder image">
                                                        <div class="media-body send-chat">
                                                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at
                                                            <span class="time">3 min ago</span>
                                                        </div>
                                                    </div>
                                                    <div class="media col-sm-8 ml-auto">
                                                        <div class="media-body  receive-chat">
                                                            Cras sit amet nibh libero, in gravida nulla.vel metus scelerisque ante
                                                            <span class="time">
                                                                <i class="icofont icofont-check m-r-5"></i>Seen 2 sec ago
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <img class="d-flex mr-3 img-circle img-40 img-thumbnail" src="assets/images/user-card/img-round1.jpg" alt="Generic placeholder image">
                                                        <div class="media-body send-chat">
                                                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at
                                                            <span class="time">3 min ago</span>
                                                        </div>
                                                    </div>
                                                    <div class="media col-sm-8 ml-auto">
                                                        <div class="media-body  receive-chat">
                                                            Cras sit amet nibh libero, in gravida nulla.Vel metus scelerisque ante
                                                            <span class="time">
                                                                <i class="icofont icofont-check m-r-5"></i>Seen 2 sec ago
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-footer">
                                                    <input type="text" class="form-control" placeholder="Your Message">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-facebook">
                                                    <h3>1165 +</h3>
                                                    <span class="m-t-10">Facebook Users</span>
                                                    <i class="icofont icofont-social-facebook"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-twitter">
                                                    <h3>780 +</h3>
                                                    <span class="m-t-10">Twitter Users</span>
                                                    <i class="icofont icofont-social-twitter"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-linkein">
                                                    <h3>998 +</h3>
                                                    <span class="m-t-10">Linked In Users</span>
                                                    <i class="icofont icofont-brand-linkedin"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-google-plus">
                                                    <h3>650 +</h3>
                                                    <span class="m-t-10">Google Plus Users</span>
                                                    <i class="icofont icofont-social-google-plus"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- <div id="styleSelector"></div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Older IE warning message -->
    <!--[if lt IE 9]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->
<!-- Required Jqurey -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/jquery/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/popper.js/js/popper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/bootstrap/js/bootstrap.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/jquery-slimscroll/js/jquery.slimscroll.js"></script>
<!-- modernizr js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/modernizr/js/modernizr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/modernizr/js/css-scrollbars.js"></script>
<!-- classie js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/classie/js/classie.js"></script>
<!-- Rickshow Chart js -->
<script src="${pageContext.request.contextPath}/bower_components/d3/js/d3.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/rickshaw/js/rickshaw.js"></script>
<!-- Morris Chart js -->
<script src="${pageContext.request.contextPath}/bower_components/raphael/js/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/morris.js/js/morris.js"></script>
<!-- Horizontal-Timeline js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/dashboard/horizontal-timeline/js/main.js"></script>
<!-- amchart js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/dashboard/amchart/js/amcharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/dashboard/amchart/js/serial.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/dashboard/amchart/js/light.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/dashboard/amchart/js/custom-amchart.js"></script>
<!-- i18next.min.js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/i18next/js/i18next.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/jquery-i18next/js/jquery-i18next.min.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/dashboard/custom-dashboard.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/script.js"></script>

<!-- pcmenu js -->
<script src="${pageContext.request.contextPath}/assets/js/pcoded.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/demo-12.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.mousewheel.min.js"></script>
</body>

</html>
