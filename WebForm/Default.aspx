<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForm.Default" %>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Modern admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard.">
    <meta name="keywords" content="admin template, modern admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard sales - Modern Admin - Clean Bootstrap 4 Dashboard HTML Template + Bitcoin Dashboard</title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="app-assets/images/ico/favicon.ico">


    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/components.min.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/horizontal-menu.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/colors/palette-gradient.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/charts/jquery-jvectormap-2.0.3.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/charts/morris.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/colors/palette-gradient.min.css">
	
    <!-- END: font CSS-->
	 <link rel="stylesheet" type="text/css" href="app-assets/fonts/feather/style.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/line-awesome/css/line-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="../app-assets/fonts/simple-line-icons/style.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->
     
    <script src="app-assets/js/jquery-1.7.2.min.js" type="text/javascript"></script>
      
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
<body class="horizontal-layout horizontal-menu 2-columns  " data-open="hover" data-menu="horizontal-menu" data-col="2-columns">
    <!-- BEGIN: Header-->
    <nav class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow navbar-static-top navbar-light navbar-brand-center">
        <div class="navbar-wrapper">
            <div class="navbar-header">
                <ul class="nav navbar-nav flex-row">
                    <li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu font-large-1"></i></a></li>
                    <li class="nav-item">
                        <a class="navbar-brand" href="index.html">
                            <img class="brand-logo" alt="modern admin logo" src="app-assets/images/logo/logo.png">
                            <h3 class="brand-text">Modern</h3>
                        </a>
                    </li>
                    <li class="nav-item d-md-none"><a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="la la-ellipsis-v"></i></a></li>
                </ul>
            </div>
            <div class="navbar-container content">
                <div class="collapse navbar-collapse" id="navbar-mobile">
                    <ul class="nav navbar-nav mr-auto float-left">
                        <li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu"></i></a></li>
                        <li class="nav-item d-none d-lg-block"><a class="nav-link nav-link-expand" href="#"><i class="ficon ft-maximize"></i></a></li>
                    </ul>
                    <ul class="nav navbar-nav float-right">
                        <li class="dropdown dropdown-language nav-item">
                            <a class="dropdown-toggle nav-link" id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flag-icon flag-icon-gb"></i><span class="selected-language"></span></a>
                            <div class="dropdown-menu" aria-labelledby="dropdown-flag"><a class="dropdown-item" href="#" data-language="en"><i class="flag-icon flag-icon-us"></i> English</a><a class="dropdown-item" href="#" data-language="fr"><i class="flag-icon flag-icon-fr"></i> French</a><a class="dropdown-item" href="#" data-language="pt"><i class="flag-icon flag-icon-pt"></i> Portuguese</a><a class="dropdown-item" href="#" data-language="de"><i class="flag-icon flag-icon-de"></i> German</a></div>
                        </li>
                        <li class="dropdown dropdown-notification nav-item">
                            <a class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i class="ficon ft-bell"></i><span class="badge badge-pill badge-danger badge-up badge-glow">5</span></a>
                            <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                                <li class="dropdown-menu-header">
                                    <h6 class="dropdown-header m-0"><span class="grey darken-2">Notifications</span></h6><span class="notification-tag badge badge-danger float-right m-0">5 New</span>
                                </li>
                                <li class="scrollable-container media-list w-100">
                                    <a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left align-self-center"><i class="ft-plus-square icon-bg-circle bg-cyan mr-0"></i></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">You have new order!</h6>
                                                <p class="notification-text font-small-3 text-muted">Lorem ipsum dolor sit amet, consectetuer elit.</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">30 minutes ago</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left align-self-center"><i class="ft-download-cloud icon-bg-circle bg-red bg-darken-1 mr-0"></i></div>
                                            <div class="media-body">
                                                <h6 class="media-heading red darken-1">99% Server load</h6>
                                                <p class="notification-text font-small-3 text-muted">Aliquam tincidunt mauris eu risus.</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Five hour ago</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left align-self-center"><i class="ft-alert-triangle icon-bg-circle bg-yellow bg-darken-3 mr-0"></i></div>
                                            <div class="media-body">
                                                <h6 class="media-heading yellow darken-3">Warning notifixation</h6>
                                                <p class="notification-text font-small-3 text-muted">Vestibulum auctor dapibus neque.</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Today</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left align-self-center"><i class="ft-check-circle icon-bg-circle bg-cyan mr-0"></i></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Complete the task</h6><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Last week</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left align-self-center"><i class="ft-file icon-bg-circle bg-teal mr-0"></i></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Generate monthly report</h6><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Last month</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown-menu-footer"><a class="dropdown-item text-muted text-center" href="javascript:void(0)">Read all notifications</a></li>
                            </ul>
                        </li>
                        <li class="dropdown dropdown-notification nav-item">
                            <a class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i class="ficon ft-mail"></i></a>
                            <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                                <li class="dropdown-menu-header">
                                    <h6 class="dropdown-header m-0"><span class="grey darken-2">Messages</span></h6><span class="notification-tag badge badge-warning float-right m-0">4 New</span>
                                </li>
                                <li class="scrollable-container media-list w-100">
                                    <a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="app-assets/images/portrait/small/avatar-s-19.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Margaret Govan</h6>
                                                <p class="notification-text font-small-3 text-muted">I like your portfolio, let's start.</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Today</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-busy rounded-circle"><img src="app-assets/images/portrait/small/avatar-s-2.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Bret Lezama</h6>
                                                <p class="notification-text font-small-3 text-muted">I have seen your work, there is</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Tuesday</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="app-assets/images/portrait/small/avatar-s-3.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Carie Berra</h6>
                                                <p class="notification-text font-small-3 text-muted">Can we have call in this week ?</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Friday</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-away rounded-circle"><img src="app-assets/images/portrait/small/avatar-s-6.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Eric Alsobrook</h6>
                                                <p class="notification-text font-small-3 text-muted">We have project party this saturday.</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">last month</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown-menu-footer"><a class="dropdown-item text-muted text-center" href="javascript:void(0)">Read all messages</a></li>
                            </ul>
                        </li>
                        <li class="dropdown dropdown-user nav-item">
                            <a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown"><span class="mr-1 user-name text-bold-700">您好,<span style="display:none"><asp:Literal ID="CurrentTime" runat="server"></asp:Literal></span><asp:Literal ID="UserName" runat="server"></asp:Literal></span><span class="avatar avatar-online"><img src="app-assets/images/portrait/small/avatar-s-19.png" alt="avatar"><i></i></span></a>
                             <span style="display:none"> <select id="roleselect" onchange="roleChange(this.value)" class="roleselect"><asp:Literal ID="RoleOptions" runat="server"></asp:Literal></select></span>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="user-profile.html"><i class="ft-user"></i> Edit Profile</a><a class="dropdown-item" href="app-kanban.html"><i class="ft-clipboard"></i> Todo</a><a class="dropdown-item" href="user-cards.html"><i class="ft-check-square"></i> Task</a>
                                <div class="dropdown-divider"></div><a class="dropdown-item" id="confirm-color"><i class="ft-power"></i>退出登录</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <!-- END: Header-->
    <!-- BEGIN: Main Menu-->

    <div class="header-navbar navbar-expand-sm navbar navbar-horizontal navbar-fixed navbar-dark navbar-without-dd-arrow navbar-shadow" role="navigation" data-menu="menu-wrapper">
        <div class="navbar-container main-menu-content" data-menu="menu-container">
            <span id="menuDiv"></span>
        </div>
    </div>

    <!-- END: Main Menu-->
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <!-- Revenue, Hit Rate & Deals -->
                <div class="row">
                    <div class="col-xl-6 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Revenue</h4>
                                <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                <div class="heading-elements">
                                    <ul class="list-inline mb-0">
                                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content collapse show">
                                <div class="card-body pt-0">
                                    <div class="row mb-1">
                                        <div class="col-6 col-md-4">
                                            <h5>Current week</h5>
                                            <h2 class="danger">$82,124</h2>
                                        </div>
                                        <div class="col-6 col-md-4">
                                            <h5>Previous week</h5>
                                            <h2 class="text-muted">$52,502</h2>
                                        </div>
                                    </div>
                                    <div class="chartjs">
                                        <canvas id="thisYearRevenue" width="400" class="position-absolute"></canvas>
                                        <canvas id="lastYearRevenue" width="400"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12">
                        <div class="row">
                            <div class="col-md-6 col-12">
                                <div class="card pull-up">
                                    <div class="card-header bg-hexagons">
                                        <h4 class="card-title">Hit Rate <span class="danger">-12%</span></h4>
                                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                        <div class="heading-elements">
                                            <ul class="list-inline mb-0">
                                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-content collapse show bg-hexagons">
                                        <div class="card-body pt-0">
                                            <div class="chartjs">
                                                <canvas id="hit-rate-doughnut" height="275"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="card pull-up">
                                    <div class="card-content collapse show bg-gradient-directional-danger ">
                                        <div class="card-body bg-hexagons-danger">
                                            <h4 class="card-title white">
                                                Deals <span class="white">-55%</span> <span class="float-right">
                                                    <span class="white">152</span><span class="red lighten-4">/200</span>
                                                </span>
                                            </h4>
                                            <div class="chartjs">
                                                <canvas id="deals-doughnut" height="275"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="card pull-up">
                                    <div class="card-content">
                                        <div class="card-body">
                                            <div class="media d-flex">
                                                <div class="media-body text-left">
                                                    <h6 class="text-muted">Order Value </h6>
                                                    <h3>$ 88,568</h3>
                                                </div>
                                                <div class="align-self-center">
                                                    <i class="icon-trophy success font-large-2 float-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="card pull-up">
                                    <div class="card-content">
                                        <div class="card-body">
                                            <div class="media d-flex">
                                                <div class="media-body text-left">
                                                    <h6 class="text-muted">Calls</h6>
                                                    <h3>3,568</h3>
                                                </div>
                                                <div class="align-self-center">
                                                    <i class="icon-call-in danger font-large-2 float-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Revenue, Hit Rate & Deals -->
                <!-- Emails Products & Avg Deals -->
                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Emails</h4>
                                <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                <div class="heading-elements">
                                    <ul class="list-inline mb-0">
                                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content collapse show">
                                <div class="card-body pt-0">
                                    <p>Open rate <span class="float-right text-bold-600">89%</span></p>
                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-1">
                                        <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 80%" aria-valuenow="80"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <p class="pt-1">
                                        Sent <span class="float-right"><span class="text-bold-600">310</span>/500</span>
                                    </p>
                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-1">
                                        <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 48%" aria-valuenow="48"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Top Products</h4>
                                <div class="heading-elements">
                                    <ul class="list-inline mb-0">
                                        <li><a href="#">Show all</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content collapse show">
                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <tbody>
                                                <tr>
                                                    <th scope="row" class="border-top-0">iPhone X</th>
                                                    <td class="border-top-0 text-right">2245</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">One Plus</th>
                                                    <td class="text-right">1850</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Samsung S7</th>
                                                    <td class="text-right">1550</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title text-center">Average Deal Size</h4>
                            </div>
                            <div class="card-content collapse show">
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-md-6 col-12 border-right-blue-grey border-right-lighten-5 text-center">
                                            <h6 class="danger text-bold-600">-30%</h6>
                                            <h4 class="font-large-2 text-bold-400">$12,536</h4>
                                            <p class="blue-grey lighten-2 mb-0">Per rep</p>
                                        </div>
                                        <div class="col-md-6 col-12 text-center">
                                            <h6 class="success text-bold-600">12%</h6>
                                            <h4 class="font-large-2 text-bold-400">$18,548</h4>
                                            <p class="blue-grey lighten-2 mb-0">Per team</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Emails Products & Avg Deals -->
                <!-- Total earning & Recent Sales  -->
                <div class="row">

                    <div class="col-12 col-md-4">
                        <div class="card">
                            <div class="card-content">
                                <div class="earning-chart position-relative">
                                    <div class="chart-title position-absolute mt-2 ml-2">
                                        <h1 class="display-4">$1,596</h1>
                                        <span class="text-muted">Total Earning</span>
                                    </div>
                                    <canvas id="earning-chart" class="height-450"></canvas>
                                    <div class="chart-stats position-absolute position-bottom-0 position-right-0 mb-2 mr-3">
                                        <a href="#" class="btn round btn-danger mr-1 btn-glow">Statistics <i class="ft-bar-chart"></i></a> <span class="text-muted">for the<a href="#" class="danger darken-2">last year.</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="recent-sales" class="col-12 col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Recent Sales</h4>
                                <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                <div class="heading-elements">
                                    <ul class="list-inline mb-0">
                                        <li>
                                            <a class="btn btn-sm btn-danger box-shadow-2 round btn-min-width pull-right" href="invoice-summary.html"
                                               target="_blank">View all</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content mt-1">
                                <div class="table-responsive">
                                    <table id="recent-orders" class="table table-hover table-xl mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">Product</th>
                                                <th class="border-top-0">Customers</th>
                                                <th class="border-top-0">Categories</th>
                                                <th class="border-top-0">Popularity</th>
                                                <th class="border-top-0">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-truncate">iPhone X</td>
                                                <td class="text-truncate p-1">
                                                    <ul class="list-unstyled users-list m-0">
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-4.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-5.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Rebecca Jones"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-6.png" alt="Avatar">
                                                        </li>
                                                        <li class="avatar avatar-sm">
                                                            <span class="badge badge-info">+8 more</span>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-outline-danger round">Mobile</button>
                                                </td>
                                                <td>
                                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                                        <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 85%"
                                                             aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                                <td class="text-truncate">$ 1200.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-truncate">iPad</td>
                                                <td class="text-truncate p-1">
                                                    <ul class="list-unstyled users-list m-0">
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-7.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-8.png" alt="Avatar">
                                                        </li>
                                                        <li class="avatar avatar-sm">
                                                            <span class="badge badge-info">+5 more</span>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-outline-success round">Tablet</button>
                                                </td>
                                                <td>
                                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                                        <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 75%"
                                                             aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                                <td class="text-truncate">$ 1190.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-truncate">OnePlus</td>
                                                <td class="text-truncate p-1">
                                                    <ul class="list-unstyled users-list m-0">
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-1.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-2.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Rebecca Jones"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-3.png" alt="Avatar">
                                                        </li>
                                                        <li class="avatar avatar-sm">
                                                            <span class="badge badge-info">+3 more</span>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-outline-danger round">Mobile</button>
                                                </td>
                                                <td>
                                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                                        <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 70%"
                                                             aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                                <td class="text-truncate">$ 999.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-truncate">ZenPad</td>
                                                <td class="text-truncate p-1">
                                                    <ul class="list-unstyled users-list m-0">
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-11.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-12.png" alt="Avatar">
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-outline-success round">Tablet</button>
                                                </td>
                                                <td>
                                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                                        <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 65%"
                                                             aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                                <td class="text-truncate">$ 1150.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-truncate">Pixel 2</td>
                                                <td class="text-truncate p-1">
                                                    <ul class="list-unstyled users-list m-0">
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-6.png" alt="Avatar">
                                                        </li>
                                                        <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                            class="avatar avatar-sm pull-up">
                                                            <img class="media-object rounded-circle"
                                                                 src="app-assets/images/portrait/small/avatar-s-4.png" alt="Avatar">
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-outline-danger round">Mobile</button>
                                                </td>
                                                <td>
                                                    <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                                        <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 45%"
                                                             aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                                <td class="text-truncate">$ 1180.00</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Total earning & Recent Sales  -->
                <!-- Analytics map based session -->
                <div class="row">
                    <div class="col-12">
                        <div class="card box-shadow-0">
                            <div class="card-content">
                                <div class="row">
                                    <div class="col-md-9 col-12">
                                        <div id="world-map-markers" class="height-450"></div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="card-body text-center">
                                            <h4 class="card-title mb-0">Visitors Sessions</h4>
                                            <div class="row">
                                                <div class="col-12">
                                                    <p class="pb-1">Sessions by Browser</p>
                                                    <div id="sessions-browser-donut-chart" class="height-200"></div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="sales pr-2 pt-2">
                                                        <div class="sales-today mb-2">
                                                            <p class="m-0">
                                                                Today's <span class="success float-right">
                                                                    <i class="ft-arrow-up success"></i>
                                                                    6.89%
                                                                </span>
                                                            </p>
                                                            <div class="progress progress-sm mt-1 mb-0">
                                                                <div class="progress-bar bg-success" role="progressbar" style="width: 70%" aria-valuenow="25"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div class="sales-yesterday">
                                                            <p class="m-0">
                                                                Yesterday's <span class="danger float-right">
                                                                    <i class="ft-arrow-down danger"></i>
                                                                    4.18%
                                                                </span>
                                                            </p>
                                                            <div class="progress progress-sm mt-1 mb-0">
                                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 65%" aria-valuenow="25"
                                                                     aria-valuemin="0" aria-valuemax="100"></div>
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
                    </div>
                </div>
                <!-- Analytics map based session -->

            </div>
        </div>
    </div>
    <!-- END: Content-->
    <!-- BEGIN: Customizer-->
    <div class="customizer border-left-blue-grey border-left-lighten-4 d-none d-xl-block">
        <a class="customizer-close" href="#"><i class="ft-x font-medium-3"></i></a><a class="customizer-toggle bg-danger box-shadow-3" href="#"><i class="ft-settings font-medium-3 spinner white"></i></a><div class="customizer-content p-2">
            <h4 class="text-uppercase mb-0">Theme Customizer</h4>
            <hr>
            <p>Customize & Preview in Real Time</p>
            <h5 class="mt-1 mb-1 text-bold-500">Menu Color Options</h5>
            <div class="form-group">
                <!-- Outline Button group -->
                <div class="btn-group customizer-sidebar-options" role="group" aria-label="Basic example">
                    <button type="button" class="btn btn-outline-info" data-sidebar="menu-light">Light Menu</button>
                    <button type="button" class="btn btn-outline-info" data-sidebar="menu-dark">Dark Menu</button>
                </div>
            </div>
            <hr>
            <h5 class="mt-1 text-bold-500">Layout Options</h5>
            <ul class="nav nav-tabs nav-underline nav-justified layout-options">
                <li class="nav-item">
                    <a class="nav-link layouts active" id="baseIcon-tab21" data-toggle="tab" aria-controls="tabIcon21" href="#tabIcon21" aria-expanded="true">Layouts</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link navigation" id="baseIcon-tab22" data-toggle="tab" aria-controls="tabIcon22" href="#tabIcon22" aria-expanded="false">Navigation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link navbar" id="baseIcon-tab23" data-toggle="tab" aria-controls="tabIcon23" href="#tabIcon23" aria-expanded="false">Navbar</a>
                </li>
            </ul>
            <div class="tab-content px-1 pt-1">
                <div role="tabpanel" class="tab-pane active" id="tabIcon21" aria-expanded="true" aria-labelledby="baseIcon-tab21">
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="collapsed-sidebar" id="collapsed-sidebar">
                        <label class="custom-control-label" for="collapsed-sidebar">Collapsed Menu</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="fixed-layout" id="fixed-layout">
                        <label class="custom-control-label" for="fixed-layout">Fixed Layout</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="boxed-layout" id="boxed-layout">
                        <label class="custom-control-label" for="boxed-layout">Boxed Layout</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="static-layout" id="static-layout">
                        <label class="custom-control-label" for="static-layout">Static Layout</label>
                    </div>
                </div>
                <div class="tab-pane" id="tabIcon22" aria-labelledby="baseIcon-tab22">
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="native-scroll" id="native-scroll">
                        <label class="custom-control-label" for="native-scroll">Native Scroll</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="right-side-icons" id="right-side-icons">
                        <label class="custom-control-label" for="right-side-icons">Right Side Icons</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="bordered-navigation" id="bordered-navigation">
                        <label class="custom-control-label" for="bordered-navigation">Bordered Navigation</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="flipped-navigation" id="flipped-navigation">
                        <label class="custom-control-label" for="flipped-navigation">Flipped Navigation</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="collapsible-navigation" id="collapsible-navigation">
                        <label class="custom-control-label" for="collapsible-navigation">Collapsible Navigation</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="static-navigation" id="static-navigation">
                        <label class="custom-control-label" for="static-navigation">Static Navigation</label>
                    </div>
                </div>
                <div class="tab-pane" id="tabIcon23" aria-labelledby="baseIcon-tab23">
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="brand-center" id="brand-center">
                        <label class="custom-control-label" for="brand-center">Brand Center</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-1">
                        <input type="checkbox" class="custom-control-input" name="navbar-static-top" id="navbar-static-top">
                        <label class="custom-control-label" for="navbar-static-top">Static Top</label>
                    </div>
                </div>
            </div>
            <hr>
            <h5 class="mt-1 text-bold-500">Navigation Color Options</h5>
            <ul class="nav nav-tabs nav-underline nav-justified color-options">
                <li class="nav-item w-100">
                    <a class="nav-link nav-semi-light active" id="color-opt-1" data-toggle="tab" aria-controls="clrOpt1" href="#clrOpt1" aria-expanded="false">Semi Light</a>
                </li>
                <li class="nav-item  w-100">
                    <a class="nav-link nav-semi-dark" id="color-opt-2" data-toggle="tab" aria-controls="clrOpt2" href="#clrOpt2" aria-expanded="false">Semi Dark</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-dark" id="color-opt-3" data-toggle="tab" aria-controls="clrOpt3" href="#clrOpt3" aria-expanded="false">Dark</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-light" id="color-opt-4" data-toggle="tab" aria-controls="clrOpt4" href="#clrOpt4" aria-expanded="true">Light</a>
                </li>
            </ul>
            <div class="tab-content px-1 pt-1">
                <div role="tabpanel" class="tab-pane active" id="clrOpt1" aria-expanded="true" aria-labelledby="color-opt-1">
                    <div class="row">
                        <div class="col-6">
                            <h6>Solid</h6>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-blue-grey" data-bg="bg-blue-grey" id="default">
                                <label class="custom-control-label" for="default">Default</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-primary" data-bg="bg-primary" id="primary">
                                <label class="custom-control-label" for="primary">Primary</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-danger" data-bg="bg-danger" id="danger">
                                <label class="custom-control-label" for="danger">Danger</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-success" data-bg="bg-success" id="success">
                                <label class="custom-control-label" for="success">Success</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-blue" data-bg="bg-blue" id="blue">
                                <label class="custom-control-label" for="blue">Blue</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan" id="cyan">
                                <label class="custom-control-label" for="cyan">Cyan</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-pink" data-bg="bg-pink" id="pink">
                                <label class="custom-control-label" for="pink">Pink</label>
                            </div>
                        </div>
                        <div class="col-6">
                            <h6>Gradient</h6>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" checked class="custom-control-input bg-blue-grey" data-bg="bg-gradient-x-grey-blue" id="bg-gradient-x-grey-blue">
                                <label class="custom-control-label" for="bg-gradient-x-grey-blue">Default</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-primary" data-bg="bg-gradient-x-primary" id="bg-gradient-x-primary">
                                <label class="custom-control-label" for="bg-gradient-x-primary">Primary</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-danger" data-bg="bg-gradient-x-danger" id="bg-gradient-x-danger">
                                <label class="custom-control-label" for="bg-gradient-x-danger">Danger</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-success" data-bg="bg-gradient-x-success" id="bg-gradient-x-success">
                                <label class="custom-control-label" for="bg-gradient-x-success">Success</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-blue" data-bg="bg-gradient-x-blue" id="bg-gradient-x-blue">
                                <label class="custom-control-label" for="bg-gradient-x-blue">Blue</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-cyan" data-bg="bg-gradient-x-cyan" id="bg-gradient-x-cyan">
                                <label class="custom-control-label" for="bg-gradient-x-cyan">Cyan</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-slight-clr" class="custom-control-input bg-pink" data-bg="bg-gradient-x-pink" id="bg-gradient-x-pink">
                                <label class="custom-control-label" for="bg-gradient-x-pink">Pink</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="clrOpt2" aria-labelledby="color-opt-2">
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" checked class="custom-control-input bg-default" data-bg="bg-default" id="opt-default">
                        <label class="custom-control-label" for="opt-default">Default</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" class="custom-control-input bg-primary" data-bg="bg-primary" id="opt-primary">
                        <label class="custom-control-label" for="opt-primary">Primary</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" class="custom-control-input bg-danger" data-bg="bg-danger" id="opt-danger">
                        <label class="custom-control-label" for="opt-danger">Danger</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" class="custom-control-input bg-success" data-bg="bg-success" id="opt-success">
                        <label class="custom-control-label" for="opt-success">Success</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" class="custom-control-input bg-blue" data-bg="bg-blue" id="opt-blue">
                        <label class="custom-control-label" for="opt-blue">Blue</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan" id="opt-cyan">
                        <label class="custom-control-label" for="opt-cyan">Cyan</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-sdark-clr" class="custom-control-input bg-pink" data-bg="bg-pink" id="opt-pink">
                        <label class="custom-control-label" for="opt-pink">Pink</label>
                    </div>
                </div>
                <div class="tab-pane" id="clrOpt3" aria-labelledby="color-opt-3">
                    <div class="row">
                        <div class="col-6">
                            <h3>Solid</h3>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-blue-grey" data-bg="bg-blue-grey" id="solid-blue-grey">
                                <label class="custom-control-label" for="solid-blue-grey">Default</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-primary" data-bg="bg-primary" id="solid-primary">
                                <label class="custom-control-label" for="solid-primary">Primary</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-danger" data-bg="bg-danger" id="solid-danger">
                                <label class="custom-control-label" for="solid-danger">Danger</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-success" data-bg="bg-success" id="solid-success">
                                <label class="custom-control-label" for="solid-success">Success</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-blue" data-bg="bg-blue" id="solid-blue">
                                <label class="custom-control-label" for="solid-blue">Blue</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan" id="solid-cyan">
                                <label class="custom-control-label" for="solid-cyan">Cyan</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-pink" data-bg="bg-pink" id="solid-pink">
                                <label class="custom-control-label" for="solid-pink">Pink</label>
                            </div>
                        </div>

                        <div class="col-6">
                            <h3>Gradient</h3>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" class="custom-control-input bg-blue-grey" data-bg="bg-gradient-x-grey-blue" id="bg-gradient-x-grey-blue1">
                                <label class="custom-control-label" for="bg-gradient-x-grey-blue1">Default</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" checked class="custom-control-input bg-primary" data-bg="bg-gradient-x-primary" id="bg-gradient-x-primary1">
                                <label class="custom-control-label" for="bg-gradient-x-primary1">Primary</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" checked class="custom-control-input bg-danger" data-bg="bg-gradient-x-danger" id="bg-gradient-x-danger1">
                                <label class="custom-control-label" for="bg-gradient-x-danger1">Danger</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" checked class="custom-control-input bg-success" data-bg="bg-gradient-x-success" id="bg-gradient-x-success1">
                                <label class="custom-control-label" for="bg-gradient-x-success1">Success</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" checked class="custom-control-input bg-blue" data-bg="bg-gradient-x-blue" id="bg-gradient-x-blue1">
                                <label class="custom-control-label" for="bg-gradient-x-blue1">Blue</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" checked class="custom-control-input bg-cyan" data-bg="bg-gradient-x-cyan" id="bg-gradient-x-cyan1">
                                <label class="custom-control-label" for="bg-gradient-x-cyan1">Cyan</label>
                            </div>
                            <div class="custom-control custom-radio mb-1">
                                <input type="radio" name="nav-dark-clr" checked class="custom-control-input bg-pink" data-bg="bg-gradient-x-pink" id="bg-gradient-x-pink1">
                                <label class="custom-control-label" for="bg-gradient-x-pink1">Pink</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="clrOpt4" aria-labelledby="color-opt-4">
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-blue-grey" data-bg="bg-blue-grey bg-lighten-4" id="light-blue-grey">
                        <label class="custom-control-label" for="light-blue-grey">Default</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-primary" data-bg="bg-primary bg-lighten-4" id="light-primary">
                        <label class="custom-control-label" for="light-primary">Primary</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-danger" data-bg="bg-danger bg-lighten-4" id="light-danger">
                        <label class="custom-control-label" for="light-danger">Danger</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-success" data-bg="bg-success bg-lighten-4" id="light-success">
                        <label class="custom-control-label" for="light-success">Success</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-blue" data-bg="bg-blue bg-lighten-4" id="light-blue">
                        <label class="custom-control-label" for="light-blue">Blue</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan bg-lighten-4" id="light-cyan">
                        <label class="custom-control-label" for="light-cyan">Cyan</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" name="nav-light-clr" class="custom-control-input bg-pink" data-bg="bg-pink bg-lighten-4" id="light-pink">
                        <label class="custom-control-label" for="light-pink">Pink</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End: Customizer-->
    <!-- Buynow Button-->
    <div class="buy-now">
        <a href="https://1.envato.market/modern_admin" target="_blank" class="btn btn-info btn-glow round px-2">Buy Now</a>

    </div>
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light navbar-shadow">
        <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2"><span class="float-md-left d-block d-md-inline-block">Copyright &copy; 2019 <a class="text-bold-800 grey darken-2" href="https://1.envato.market/modern_admin" target="_blank">PIXINVENT</a></span><span class="float-md-right d-none d-lg-block">Hand-crafted & Made with<i class="ft-heart pink"></i><span id="scroll-top"></span></span></p>
    </footer>
    <!-- END: Footer-->


    <!-- BEGIN: Vendor JS-->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
    <!-- BEGIN: Page Vendor JS-->
    <script src="app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="app-assets/vendors/js/charts/jquery.sparkline.min.js"></script>
    <script src="app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="app-assets/vendors/js/charts/raphael-min.js"></script>
    <script src="app-assets/vendors/js/charts/morris.min.js"></script>
    <script src="app-assets/vendors/js/charts/jvector/jquery-jvectormap-2.0.3.min.js"></script>
    <script src="app-assets/vendors/js/charts/jvector/jquery-jvectormap-world-mill.js"></script>
    <script src="app-assets/data/jvector/visitor-data.js"></script>
    <script charset="utf-8" src="app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <!-- END: Theme JS-->
    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/ui/breadcrumbs-with-stats.min.js"></script>
    <script src="app-assets/js/scripts/pages/dashboard-sales.min.js"></script>
    <script charset="utf-8" src="app-assets/js/scripts/extensions/ex-component-sweet-alerts.min.js"></script>
    <!-- END: Page JS-->
     
     <script type="text/javascript">
         var defaultRoleID = "<%=DefaultRoleID%>";
         var rolesLength = <%=RoleLength%>;
         var userID = '<%=CurrentUserID%>';
         var rootdir = '<%=SitePath%>';
         
              // Init navigation menu
              jQuery(function () {
                  setTimeout(" roleChange(defaultRoleID);",100 );  
              })

             function roleChange(roleID)
              {            
                 $.ajax({url: rootdir + "/Platform/Home/Menu.ashx?roleid=" + roleID + "&userid=" + userID, async:false, cache:false, dataType:"json", success:function(json){
                     if(json && json.loginstatus && -1 == json.loginstatus)
                     {
                         login();
                         return;
                     }
                        
                     if(json.length>0 && json[0].childs)
                     {        
                         
                         var html=  '<ul class="nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation">'+
                                          '<li class="dropdown nav-item"><a class="dropdown-toggle nav-link" href="Default.aspx"><i class="la la-home"></i>' + '<span>首页</span>' + '</a></li>';
                         for(var i=0;i<json[0].childs.length;i++)
                         {
                             //alert(json[0].childs[i].ico);
                             var child = json[0].childs[i];
                             html += '<li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"><i class="' + child.ico+ '"></i><span>' + child.title + '</span></a>';
                             if(child.childs.length > 0)
                             {
                                 html += '<ul class="dropdown-menu">';
                                 for(var j=0;j<child.childs.length;j++)
                                 {    
                                     //tabid += child.childs[j].id.replaceAll('-', '');
                                     html += '<li data-menu=""><a class="dropdown-item" href="' + child.childs[j].link + '?'+'appid='+ child.childs[j].id + '&uid='+ userID +'" data-toggle=""><i class="'+child.childs[j].ico +'"></i>' + child.childs[j].title + '</a></li>';
                                 }
                                 html += '</ul>';
                             }                                           
                             html +=  '</li>';
                         }
                         html += '<li class="dropdown nav-item" style="z-index:100;"><a class="dropdown-toggle nav-link" href="Default.aspx"><i class="la la-question-circle"></i><span>帮助</span></a></li> '
                         html += '<li class="dropdown nav-item" ><a class="dropdown-toggle nav-link" href="#" ><i class="la la-info"></i><span>关于</span></a></li> '
                         html +=   ' </ul>';
                         $("#menuDiv").html(html);
                     }
                 }});  
              }
      </script>

</body>

  <!-- END: Body-->
</html>
