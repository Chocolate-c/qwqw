<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>******</title>
		
		<script src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/vendor/popper.js/umd/popper.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/vendor/jquery.cookie/jquery.cookie.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/vendor/chart.js/Chart.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/vendor/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/js/front.js" type="text/javascript"></script>
		
	    <link href="${pageContext.request.contextPath}/static/vendor/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/static/vendor/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/static/css/fontastic.css" type="text/css" rel="stylesheet">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
	    <link href="${pageContext.request.contextPath}/static/css/style.default.css" type="text/css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/static/css/custom.css" type="text/css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/static/img/favicon.ico" type="text/css" rel="shortcut icon">
	</head>
	<body>
		<div class="page">
	      <!-- Main Navbar-->
	      <header class="header">
	        <nav class="navbar">
	          <!-- Search Box-->
	          <!-- <div class="search-box">
	            <button class="dismiss"><i class="icon-close"></i></button>
	            <form id="searchForm" action="#" role="search">
	              <input type="search" placeholder="What are you looking for..." class="form-control">
	            </form>
	          </div> -->
	          <div class="container-fluid">
	            <div class="navbar-holder d-flex align-items-center justify-content-between">
	              <!-- Navbar Header-->
	              <div class="navbar-header">
	                <!-- Navbar Brand --><a href="/index" class="navbar-brand d-none d-sm-inline-block">
	                  <div class="brand-text d-none d-lg-inline-block"><span>Bootstrap </span><strong>Dashboard</strong></div>
	                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
	                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
	              </div>
	              <!-- Navbar Menu -->
	              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
	                <!-- Search-->
	                <!-- <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li> -->
	                <!-- Notifications-->
	                <!-- <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
	                  <ul aria-labelledby="notifications" class="dropdown-menu">
	                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
	                        <div class="notification">
	                          <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
	                          <div class="notification-time"><small>4 minutes ago</small></div>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
	                        <div class="notification">
	                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
	                          <div class="notification-time"><small>4 minutes ago</small></div>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
	                        <div class="notification">
	                          <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
	                          <div class="notification-time"><small>4 minutes ago</small></div>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
	                        <div class="notification">
	                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
	                          <div class="notification-time"><small>10 minutes ago</small></div>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
	                  </ul>
	                </li> -->
	                <!-- Messages                        -->
	                <!-- <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
	                  <ul aria-labelledby="notifications" class="dropdown-menu">
	                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
	                        <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
	                        <div class="msg-body">
	                          <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
	                        <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
	                        <div class="msg-body">
	                          <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
	                        <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
	                        <div class="msg-body">
	                          <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
	                        </div></a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>
	                  </ul>
	                </li> -->
	                <!-- Languages dropdown    -->
	                <!-- <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>
	                  <ul aria-labelledby="languages" class="dropdown-menu">
	                    <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2">German</a></li>
	                    <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>
	                  </ul>
	                </li> -->
	                <!-- Logout    -->
	                <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>
	              </ul>
	            </div>
	          </div>
	        </nav>
	      </header>
	      <div class="page-content d-flex align-items-stretch"> 
	        <!-- Side Navbar -->
	        <nav class="side-navbar">
	          <!-- Sidebar Header-->
	          <div class="sidebar-header d-flex align-items-center">
	            <div class="avatar"><img src="/static/img/y.jpg" alt="..." class="img-fluid rounded-circle"></div>
	            <div class="title">
	              <h1 class="h4">Hyman Hu</h1>
	              <p>Web Designer</p>
	            </div>
	          </div>
	          <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
	          <ul class="list-unstyled">
                <li><a href="/index"> <i class="icon-home"></i>Home </a></li>
                <li class="active"><a href="/users"> <i class="icon-grid"></i>Users </a></li>
                <!-- <li><a href="tables.html"> <i class="icon-grid"></i>Tables </a></li>
                <li><a href="charts.html"> <i class="fa fa-bar-chart"></i>Charts </a></li>
                <li><a href="forms.html"> <i class="icon-padnote"></i>Forms </a></li>
                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Example dropdown </a>
                  <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                    <li><a href="#">Page</a></li>
                    <li><a href="#">Page</a></li>
                    <li><a href="#">Page</a></li>
                  </ul>
                </li>
                <li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li> -->
	          <!-- </ul><span class="heading">Extras</span>
	          <ul class="list-unstyled">
	            <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
	            <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
	            <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
	            <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
	          </ul> -->
	        </nav>
	        <div class="content-inner">
	          <!-- Page Header-->
	          <header class="page-header">
	            <div class="container-fluid">
	              <h2 class="no-margin-bottom">Users</h2>
	            </div>
	          </header>
	          <!-- Breadcrumb-->
	          <div class="breadcrumb-holder container-fluid">
	            <ul class="breadcrumb">
	              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	              <li class="breadcrumb-item active">UpdateUser</li>
	            </ul>
	          </div>
	          <section class="tables">   
	            <div class="container-fluid">
	              <div class="row">
	                <div class="col-lg-10">
	                  <div class="card">
	                    <div class="card-close">
	                      <div class="dropdown">
	                        <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
	                        <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
	                      </div>
	                    </div>
	                    <div class="card-header d-flex align-items-center">
	                      <h3 class="h4">Update User</h3>
	                    </div>
	                    <div class="card-body">
	                      <div class="table-responsive">
	                        <form method="post" action="/doUpdateUser">
		                      	<input type="hidden" name="userId" value="${user.userId }"/>
		                        <div class="form-group">
		                          <label class="form-control-label">UserName</label>
		                          <input name="userName" value="${user.userName }" placeholder="User Name" class="form-control" readonly>
		                        </div>
		                        <div class="form-group">       
		                          <label class="form-control-label">Password</label>
		                          <input type="password" name="password" value="${user.password }" placeholder="Password" class="form-control">
		                        </div>
		                        <div class="form-group">       
		                          <input type="submit" value="Update" class="btn btn-primary">
		                        </div>
		                      </form>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </section>
	          <!-- Page Footer-->
	          <footer class="main-footer">
	            <div class="container-fluid">
	              <div class="row">
	                <div class="col-sm-6">
	                  <p>Your company &copy; 2017-2019</p>
	                </div>
	                <div class="col-sm-6 text-right">
	                  <p>Design by HymanHu </p>
	                  <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
	                </div>
	              </div>
	            </div>
	          </footer>
          	</div>
	      </div>
	    </div>
	</body>
</html>
