<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForm.Platform.UserInfo.Default" %>

<!DOCTYPE html>

<html lang="en-US">
<head>
       <title>军械士官学校 | 资源管理系统</title>
    <meta name="description" content=" &raquo; Blog | Military Academy" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/bootstrap/css/responsive.css" />
    <link rel='stylesheet' id='theme53594-css' href='../../wp-content/themes/theme53594/main-style.css' type='text/css' media='all' />

    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery-1.7.2.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/superfish.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.mobilemenu.js'></script>
    <style type='text/css'>
        .sf-menu > li > a {
            font: normal 14px/20px Arial, Helvetica, sans-serif;
            color: #ffffff;
        }
    </style>
  
</head>

<body class="blog cat-3-id">

    <div id="motopress-main" class="main-holder">
        <!--Begin #motopress-main-->
        <header class="motopress-wrapper header">
            <div class="container">
                <div class="row">
                    <div class="span12" data-motopress-wrapper-file="wrapper/wrapper-header.php" data-motopress-wrapper-type="header" data-motopress-id="5b71d3c459407">
                        <div class="row">
                            <div class="span4" data-motopress-type="static" data-motopress-static-file="static/static-logo.php">
                                <!-- BEGIN LOGO -->
                                <div class="logo pull-left">
                                    <a href="../wordpress_53594.html" class="logo_h logo_h__img">
                                        <img src="../../wp-content/themes/theme53594/images/logo.png" alt="Union One" title="Military Academy"></a>
                                    <p class="logo_tagline">资源管理系统</p>
                                    <!-- Site Tagline -->
                                </div>
                                <!-- END LOGO -->
                            </div>
                            <div class="span8" data-motopress-type="static" data-motopress-static-file="static/static-nav.php">
                                <div style="color:white;padding-top:5px">
                                    <span style="font-size:16px;">欢迎您：<asp:Literal ID="UserName" runat="server"></asp:Literal></span>
                                    <span style="margin-right:6px;font-size:16px;"></span>
                                    <span style="margin-right:6px;font-size:16px;"><select id="roleselect" onchange="roleChange(this.value)" class="roleselect"><asp:Literal ID="RoleOptions" runat="server"></asp:Literal></select></span>
                                    <span style="margin-right:6px;font-size:16px;">日期：<span id="CurrentDateTimeSpan"><asp:Literal ID="CurrentTime" runat="server"></asp:Literal></span></span>                           
                                      <span style="margin-right:6px;font-size:16px;"><a href="javascript:void(0);" onclick="EditPwd()" style="color:white;font-size:16px" >修改密码</a></span>
                                     <span style="margin-right:6px;font-size:16px;"><a href="javascript:void(0);" onclick="if(confirm('您真的要退出系统吗?')){window.location='/Logout.ashx';} return false;"style="color:white;font-size:16px" >退出系统</a></span>
                                </div>

                                  <!-- BEGIN MAIN NAVIGATION -->
                                <div id="menuDiv1">hhh</div>
                                
                                <!-- END MAIN NAVIGATION -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="span12 hidden-phone" data-motopress-type="static" data-motopress-static-file="static/static-search.php">
                                <!-- BEGIN SEARCH FORM -->
                                <!-- END SEARCH FORM -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

             <div class="motopress-wrapper content-holder clearfix">
        <div class="container">
                <div class="row">
                    <div class="span12" data-motopress-wrapper-file="page-faq.php" data-motopress-wrapper-type="content">
                        <div class="row">
                            <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
                                <section class="title-section">
                                    <h1 class="title-header">资源路径管理				
                                    </h1>
                                    <!-- BEGIN BREADCRUMBS-->
                                    <ul class="breadcrumb breadcrumb__t">
                                        <li><a href="/Index.aspx">网站首页</a></li>
                                        <li class="divider"></li>
                                        <li class="active">修改密码</li>
                                    </ul>
                                    <!-- END BREADCRUMBS -->
                                </section>
                                <!-- .title-section -->
                            </div>
                        </div>

                    </div>

                </div>
 <div class="row">
<div  >
       <iframe id="Iframe1" frameborder="0" scrolling="auto" style="width:10px;margin:0;padding:0"></iframe> 
     <iframe id="<%=Iframeid %>" frameborder="0" scrolling="auto" src="EditPass.aspx?<%=Query %>" style="width:95%; margin:0;padding:0;"></iframe>  
</div>
                        <%--<div class="span1">
                                 <iframe id="Iframe1" frameborder="0" scrolling="auto" style="width:40px;margin:0;padding:0"></iframe>  
                            </div>
                            <div class="span11">                            
                                  <iframe id="<%=Iframeid %>" frameborder="0" scrolling="auto" src="List.aspx?<%=Query %>" style="width:100%;margin:0;padding:0;"></iframe> 
                            </div>
                        </div>--%>
                </div>
            </div>
        </div>
    <script type="text/javascript">
        $(function ()
        {
            var height = $(window).height()*0.9;
            var width = $(window).width()* 0.1;
            $('#Iframe1').attr('height', height);
            $('#Iframe1').attr('width', width);
            $('#<%=Iframeid %>').attr('height', height);
        });
   </script>
        <footer class="motopress-wrapper footer">
            <div class="container">
                <div class="row">
                    <div class="span12" data-motopress-wrapper-file="wrapper/wrapper-footer.php" data-motopress-wrapper-type="footer" data-motopress-id="5b71d3c497330">
                        <div class="footer-widgets">
                            <div class="row">
                                <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-1">
                                    <div id="nav_menu-3" class="visible-all-devices ">
                                        <h4>Academy</h4>
                                        <div class="menu-company-container">
                                            <ul id="menu-company" class="menu">
                                                <li id="menu-item-2051" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2051"><a href="../about/about.html">About us</a></li>
                                                <li id="menu-item-2040" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2040"><a href="#">CLIENTS</a></li>
                                                <li id="menu-item-2041" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2041"><a href="#">PRESENTATION</a></li>
                                                <li id="menu-item-2042" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2042"><a href="#">support</a></li>
                                                <li id="menu-item-2043" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2043"><a href="#">Schedule</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-2">
                                    <div id="nav_menu-4" class="">
                                        <h4>Overview</h4>
                                        <div class="menu-overview-container">
                                            <ul id="menu-overview" class="menu">
                                                <li id="menu-item-2044" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2044"><a href="#">What We Do</a></li>
                                                <li id="menu-item-2045" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-103 current_page_item current_page_parent menu-item-2045"><a href="blog.html">News</a></li>
                                                <li id="menu-item-2046" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2046"><a href="#">Solutions</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-3">
                                    <div id="nav_menu-5" class="visible-all-devices ">
                                        <h4>for students</h4>
                                        <div class="menu-for-clients-container">
                                            <ul id="menu-for-clients" class="menu">
                                                <li id="menu-item-2047" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2047"><a href="#">FORUMS</a></li>
                                                <li id="menu-item-2048" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2048"><a href="#">PROMOTIONS</a></li>
                                                <li id="menu-item-2049" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2049"><a href="../wp-admin">SIGN IN</a></li>
                                                <li id="menu-item-2050" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-103 current_page_item current_page_parent menu-item-2050"><a href="blog.html">News</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-4">
                                    <div id="archives-4" class="">
                                        <h4>Archive</h4>
                                        <ul>
                                            <li><a href='../2013/03/03.html'>March 2013</a></li>
                                            <li><a href='../2013/02/02.html'>February 2013</a></li>
                                            <li><a href='../2013/01/01.html'>January 2013</a></li>
                                            <li><a href='../2012/12/12.html'>December 2012</a></li>
                                            <li><a href='../2012/05/05.html'>May 2012</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="copyright">
                            <div class="row">
                                <div class="span2" data-motopress-type="static" data-motopress-static-file="static/static-footer-text.php">
                                    <div id="footer-text" class="footer-text">
                                        &copy; 2018 | <a href="../privacy-policy/privacy-policy.html" title="Privacy Policy">Privacy Policy</a>

                                    </div>
                                </div>
                                <!-- Social Links -->
                                <div class="span7 social-nets-wrapper" data-motopress-type="static" data-motopress-static-file="static/static-social-networks.php">
                                    <ul class="social">
                                        <li><a href="#" title="twitter">
                                            <img src="Themes/wp-content/themes/theme53594/images/social/twitter.png" alt="twitter"></a></li>
                                        <li><a href="#" title="facebook">
                                            <img src="Themes/wp-content/themes/theme53594/images/social/facebook.png" alt="facebook"></a></li>
                                        <li><a href="#" title="google">
                                            <img src="Themes/wp-content/themes/theme53594/images/social/google.png" alt="google"></a></li>
                                    </ul>
                                </div>
                                <!-- /Social Links -->
                                <div class="info">
                                    <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-5">
                                        <div id="text-7" class="">
                                            <h4>Free Phone:</h4>
                                            <div class="textwidget">+1 800 559 6580</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-footer-nav.php">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--End #motopress-main-->
    </div>
    <div id="back-top-wrapper" class="visible-desktop">
        <p id="back-top">
            <a href="#top"><span></span></a>
        </p>
    </div>
     <script type="text/javascript">
              jQuery(function () {
                  jQuery('.sf-menu').mobileMenu({ defaultText: "Navigate to..." });
              });
    </script>

    <script type="text/javascript">
         var defaultRoleID = "<%=DefaultRoleID%>";
         var rolesLength = <%=RoleLength%>;
         var userID = '<%=CurrentUserID%>';
         var rootdir = '<%=SitePath%>';
              // Init navigation menu
              jQuery(function () {
                  // main navigation init
                  //var html = "";
                  //html = '<nav class="nav nav__primary clearfix">' +
                  //                  '<ul id="topnav" class="sf-menu">' +
                  //                      '<li id="menu-item-2022" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../wordpress_53594.html">' + 'Home' + '</a></li>' +
                  //                       '<li id="menu-item-2025" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children"><a href="../about/about.html">About</a> ' +
                  //                              '<ul class="sub-menu">' +
	              //                                  '<li id="menu-item-2026" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../about/testi/testi.html">Testimonials</a></li>' +
	              //                                  '<li id="menu-item-2027" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../about/archives/archives.html">Archives</a></li>' +
	              //                                  '<li id="menu-item-2020" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../about/faqs/faqs.html">FAQs</a></li>' +
                  //                              '</ul>' +
                  //                      '</li>' +
                  //                      '<li id="menu-item-2024" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../services/services.html">Services</a></li>' +
                  //                      '<li id="menu-item-2023" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children"><a href="../portfolio/portfolio.html">Academics</a></li>' +
                                       
                  //                      '<li id="menu-item-2021" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-103 current_page_item current_page_parent"><a href="blog.html">Blog</a></li>' +
                  //                      ' +<li id="menu-item-2019" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../contacts/contacts.html">Contacts</a></li>' +
                  //                  ' </ul>' +
                  //              '</nav>';
                  //$("#menuDiv1").html(html);
                  roleChange(defaultRoleID);
                  jQuery('ul.sf-menu').superfish({
                      delay: 1000, // the delay in milliseconds that the mouse can remain outside a sub-menu without it closing
                      animation: {
                          opacity: "show",
                          height: "show"
                      }, // used to animate the sub-menu open
                      speed: "normal", // animation speed
                      autoArrows: true, // generation of arrow mark-up (for submenu)
                      disableHI: true // to disable hoverIntent detection
                  });

                  //Zoom fix
                  //IPad/IPhone
                  var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
                      ua = navigator.userAgent,
                      gestureStart = function () {
                          viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0";
                      },
                      scaleFix = function () {
                          if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
                              viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
                              document.addEventListener("gesturestart", gestureStart, false);
                          }
                      };
                  scaleFix();
              })
              function EditPwd(){
                  window.location.href = "/Platform/UserInfo/EditPass.aspx"
              }
              function roleChange(roleID)
              {    
               
                    $.ajax({url: rootdir + "/Platform/Home/Menu.ashx?roleid=" + roleID + "&userid=" + userID, async:false, cache:true, dataType:"json", success:function(json){
                        if(json && json.loginstatus && -1 == json.loginstatus)
                        {
                            login();
                            return;
                        }
                        if(json.length>0 && json[0].childs)
                        {                 
                            
                            var html='<nav class="nav nav__primary clearfix">' +
                                         '<ul id="topnav" class="sf-menu">'+
                                             '<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Index.aspx">' + '网站首页' + '</a></li>';
                                                for(var i=0;i<json[0].childs.length;i++)
                                                {
                                                    var child = json[0].childs[i];
                                                    html += '<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">' + child.title + '</a>';
                                                    var tabid=""
                                                    if(child.childs.length > 0)
                                                    {
                                                        html += '<ul class="sub-menu">';
                                                        for(var j=0;j<child.childs.length;j++)
                                                        {    

                                                            html += '<li id="menu-item-2026" class="menu-item menu-item-type-post_type menu-item-object-page"><a href=" ' + '/' +child.childs[j].link + '?'+'appid='+ child.childs[j].id + '&uid='+ userID +'">' + child.childs[j].title + '</a></li>';
                                                        }
                                                        html += '</ul>';
                                                    }                                           
                                                    html +=  '</li>';

                                                }
                                                html += '<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">' + '帮助文档' + '</a></li>'
                                                html += '<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/About.aspx">' + '关于系统' + '</a></li>'
                                html +=   ' </ul>' +
                                      '</nav>';
                                $("#menuDiv1").html(html);
                        }
                    }});
                    jQuery('ul.sf-menu').superfish({
                        delay: 1000, // the delay in milliseconds that the mouse can remain outside a sub-menu without it closing
                        animation: {
                            opacity: "show",
                            height: "show"
                        }, // used to animate the sub-menu open
                        speed: "normal", // animation speed
                        autoArrows: true, // generation of arrow mark-up (for submenu)
                        disableHI: true // to disable hoverIntent detection
                    });
              }


    </script>
    <!-- stick up menu -->
    <script type="text/javascript">
              jQuery(document).ready(function () {
                  if (!device.mobile() && !device.tablet()) {
                      jQuery('header.header').tmStickUp({
                          correctionSelector: jQuery('#wpadminbar')
                          , listenSelector: jQuery('.listenSelector')
                          , active: false, pseudo: true
                      });
                  }
              })
    </script>


    <script type="text/javascript">
				deleteCookie('cf-cookie-banner');
    </script>
    <!-- this is used by many Wordpress features and for plugins to work properly -->
</body>
</html>
