<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDefault.aspx.cs" Inherits="WebForm.Platform.Calculator.NewDefault" %>

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
    <link rel="apple-touch-icon" href="../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../app-assets/images/ico/favicon.ico">


    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/components.min.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/core/menu/menu-types/horizontal-menu.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/core/colors/palette-gradient.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/charts/jquery-jvectormap-2.0.3.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/charts/morris.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/core/colors/palette-gradient.min.css">
	
    <!-- END: font CSS-->
	 <link rel="stylesheet" type="text/css" href="../app-assets/fonts/feather/style.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/fonts/line-awesome/css/line-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="../app-assets/fonts/simple-line-icons/style.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <!-- END: Custom CSS-->
     
    <script src="../app-assets/js/jquery-1.7.2.min.js" type="text/javascript"></script>
      
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
                            <img class="brand-logo" alt="modern admin logo" src="../app-assets/images/logo/logo.png">
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
                                            <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="../app-assets/images/portrait/small/avatar-s-19.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Margaret Govan</h6>
                                                <p class="notification-text font-small-3 text-muted">I like your portfolio, let's start.</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Today</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-busy rounded-circle"><img src="../app-assets/images/portrait/small/avatar-s-2.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Bret Lezama</h6>
                                                <p class="notification-text font-small-3 text-muted">I have seen your work, there is</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Tuesday</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="../app-assets/images/portrait/small/avatar-s-3.png" alt="avatar"><i></i></span></div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Carie Berra</h6>
                                                <p class="notification-text font-small-3 text-muted">Can we have call in this week ?</p><small>
                                                    <time class="media-meta text-muted" datetime="2015-06-11T18:29:20+08:00">Friday</time>
                                                </small>
                                            </div>
                                        </div>
                                    </a><a href="javascript:void(0)">
                                        <div class="media">
                                            <div class="media-left"><span class="avatar avatar-sm avatar-away rounded-circle"><img src="../app-assets/images/portrait/small/avatar-s-6.png" alt="avatar"><i></i></span></div>
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
                            <a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown"><span class="mr-1 user-name text-bold-700">您好,<span style="display:none"><asp:Literal ID="CurrentTime" runat="server"></asp:Literal></span><asp:Literal ID="UserName" runat="server"></asp:Literal></span><span class="avatar avatar-online"><img src="../app-assets/images/portrait/small/avatar-s-19.png" alt="avatar"><i></i></span></a>
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
    <div  >
       <iframe id="Iframe1" frameborder="0" scrolling="auto" style="width:10px;margin:0;padding:0"></iframe> 
     <iframe id="<%=Iframeid %>" frameborder="0" scrolling="auto" src="Default.aspx?<%=Query %>" style="width:95%; margin:0;padding:0;"class="height-650"></iframe>  
</div>
    <!-- END: Content-->
    <!-- BEGIN: Customizer-->
    

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light navbar-shadow">
        <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2"><span class="float-md-left d-block d-md-inline-block">Copyright &copy; 2019 <a class="text-bold-800 grey darken-2" href="https://1.envato.market/modern_admin" target="_blank">PIXINVENT</a></span><span class="float-md-right d-none d-lg-block">Hand-crafted & Made with<i class="ft-heart pink"></i><span id="scroll-top"></span></span></p>
    </footer>
    <!-- END: Footer-->


    <!-- BEGIN: Vendor JS-->
    <script src="../app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
    <!-- BEGIN: Page Vendor JS-->
    <script src="../app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="../app-assets/vendors/js/charts/jquery.sparkline.min.js"></script>
    <script src="../app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="../app-assets/vendors/js/charts/raphael-min.js"></script>
    <script src="../app-assets/vendors/js/charts/morris.min.js"></script>
    <script src="../app-assets/vendors/js/charts/jvector/jquery-jvectormap-2.0.3.min.js"></script>
    <script src="../app-assets/vendors/js/charts/jvector/jquery-jvectormap-world-mill.js"></script>
    <script src="../app-assets/data/jvector/visitor-data.js"></script>
    <script charset="utf-8" src="../app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Theme JS-->
    <script src="../app-assets/js/core/app-menu.min.js"></script>
    <script src="../app-assets/js/core/app.min.js"></script>
    <script src="../app-assets/js/scripts/customizer.min.js"></script>
    <script src="../app-assets/js/scripts/footer.min.js"></script>
    <!-- END: Theme JS-->
    <!-- BEGIN: Page JS-->
    <script src="../app-assets/js/scripts/ui/breadcrumbs-with-stats.min.js"></script>
    <script src="../app-assets/js/scripts/pages/dashboard-sales.min.js"></script>
    <script charset="utf-8" src="../app-assets/js/scripts/extensions/ex-component-sweet-alerts.min.js"></script>
    <!-- END: Page JS-->
     
     <script type="text/javascript">
         var defaultRoleID = "<%=DefaultRoleID%>";
         var rolesLength = <%=RoleLength%>;
         var userID = '<%=CurrentUserID%>';
         var rootdir = '<%=SitePath%>';
              // Init navigation menu
              jQuery(function () {
                  setTimeout(" roleChange(defaultRoleID);",500 );  
              })

             function roleChange(roleID)
              {            
                 $.ajax({url: rootdir + "../Home/Menu.ashx?roleid=" + roleID + "&userid=" + userID, async:false, cache:false, dataType:"json", success:function(json){
                     if(json && json.loginstatus && -1 == json.loginstatus)
                     {
                         login();
                         return;
                     }
                        
                     if(json.length>0 && json[0].childs)
                     {        
                         
                         var html=  '<ul class="nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation">'+
                                          '<li class="dropdown nav-item"><a class="dropdown-toggle nav-link" href="/Default.aspx"><i class="la la-home"></i>' + '<span>首页</span>' + '</a></li>';
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
                                     html += '<li data-menu=""><a class="dropdown-item" href="/' + child.childs[j].link + '?'+'appid='+ child.childs[j].id + '&uid='+ userID +'" data-toggle=""><i class="'+child.childs[j].ico +'"></i>' + child.childs[j].title + '</a></li>';
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

