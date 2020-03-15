<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/images/favicon.png">
<title>AdminWrap - Easy to Customize Bootstrap 4 Admin Template</title>
<!-- Bootstrap Core CSS -->
<link href="assets/node_modules/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="assets/node_modules/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet">
<!-- This page CSS -->
<!-- chartist CSS -->
<link href="assets/node_modules/morrisjs/morris.css" rel="stylesheet">
<!--c3 CSS -->
<link href="assets/node_modules/c3-master/c3.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Dashboard 1 Page CSS -->
<link href="css/pages/dashboard1.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="css/colors/default.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar card-no-border">
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="loader">
			<div class="loader__figure"></div>
			<p class="loader__label">Admin Wrap</p>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">
				<!-- ============================================================== -->
				<!-- Logo -->
				<!-- ============================================================== -->
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b>
							<!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img src="assets/images/logo-icon.png"
							alt="homepage" class="dark-logo" /> <!-- Light Logo icon --> <img
							src="assets/images/logo-light-icon.png" alt="homepage"
							class="light-logo" />
					</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
							<img src="assets/images/logo-text.png" alt="homepage"
							class="dark-logo" /> <!-- Light Logo text --> <img
							src="assets/images/logo-light-text.png" class="light-logo"
							alt="homepage" /></span>
					</a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-bars"></i></a></li>
						<!-- ============================================================== -->
						<!-- Search -->
						<!-- ============================================================== -->
						<li class="nav-item hidden-xs-down search-box"><a
							class="nav-link hidden-sm-down waves-effect waves-dark"
							href="javascript:void(0)"><i class="fa fa-search"></i></a>
							<form class="app-search">
								<input type="text" class="form-control"
									placeholder="Search & enter"> <a class="srh-btn"><i
									class="fa fa-times"></i></a>
							</form></li>
					</ul>
					<!-- ============================================================== -->
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<!-- ============================================================== -->
						<!-- Profile -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown u-pro"><a
							class="nav-link dropdown-toggle waves-effect waves-dark profile-pic"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img src="assets/images/users/1.jpg"
								alt="user" class="" /> <span class="hidden-md-down">Mark
									Sanders &nbsp;</span> </a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li><a class="waves-effect waves-dark" href="/WordCount/main"
							aria-expanded="false"><i class="fa fa-table"></i><span
								class="hide-menu">Tables</span></a></li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-5 align-self-center">
						<h3 class="text-themecolor">文件信息</h3>
						<ol class="breadcrumb">
						</ol>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- Notification And Feeds -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- Start Feeds -->
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">${fileCount.fileName }</h5>
								<ul class="feeds">
									<li>
										<div class="bg-light-info">
											<i class="fa fa fa-etsy"></i>
										</div> 字符数 <span class="text-muted">${fileCount.charNum } 个</span>
									</li>
									<li>
										<div class="bg-light-warning">
											<i class="fa fa fa-quora"></i>
										</div> 单词数 <span class="text-muted">${fileCount.wordNum } 个</span>
									</li>
									<li>
										<div class="bg-light-success">
											<i class="fa fa-server"></i>
										</div> 行数 <span class="text-muted">${fileCount.lineNum } 行</span>
									</li>
									<li>
										<div class="bg-light-danger">
											<i class="fa fa-code"></i>
										</div> 代码行 <span class="text-muted">${fileCount.codeLineNum } 行</span>
									</li>
									<li>
										<div class="bg-light-inverse">
											<i class="fa fa-comment-o"></i>
										</div> 空行 <span class="text-muted">${fileCount.emptyLineNum } 行</span>
									</li>
									<li>
										<div class="bg-light-info">
											<i class="fa fa-pencil-square-o"></i>
										</div> 注释行 <span class="text-muted">${fileCount.remarkLineNUm } 行</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Feeds -->
				</div>
				<!-- ============================================================== -->
				<!-- End Notification And Feeds -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- End Page Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="assets/node_modules/jquery/jquery.min.js"></script>
	<!-- Bootstrap popper Core JavaScript -->
	<script src="assets/node_modules/bootstrap/js/popper.min.js"></script>
	<script src="assets/node_modules/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="js/perfect-scrollbar.jquery.min.js"></script>
	<!--Wave Effects -->
	<script src="js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="js/custom.min.js"></script>
	<!-- ============================================================== -->
	<!-- This page plugins -->
	<!-- ============================================================== -->
	<!--morris JavaScript -->
	<script src="assets/node_modules/raphael/raphael-min.js"></script>
	<script src="assets/node_modules/morrisjs/morris.min.js"></script>
	<!--c3 JavaScript -->
	<script src="assets/node_modules/d3/d3.min.js"></script>
	<script src="assets/node_modules/c3-master/c3.min.js"></script>
	<!-- Chart JS -->
	<script src="js/dashboard1.js"></script>
</body>

</html>