<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDefault.aspx.cs" Inherits="WebForm.Platform.Log.NewDefault" EnableViewState="true" %>

<!DOCTYPE html>

<html lang="en-US">
<head>
    <title>Union One | Military Academy</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/bootstrap/css/responsive.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/CherryFramework/css/camera.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/style.css" />
    <link rel="alternate" type="application/rss+xml" title="Union One &raquo; Feed" href="../feed/feed.html" />
    <link rel="alternate" type="application/rss+xml" title="Union One &raquo; Comments Feed" href="../comments/feed/feed.html" />
    <link rel='stylesheet' id='flexslider-css' href='../../wp-content/plugins/cherry-plugin/lib/js/FlexSlider/flexslider.css' type='text/css' media='all' />
    <link rel='stylesheet' id='owl-carousel-css' href='../../wp-content/plugins/cherry-plugin/lib/js/owl-carousel/owl.carousel.css' type='text/css' media='all' />
    <link rel='stylesheet' id='owl-theme-css' href='../../wp-content/plugins/cherry-plugin/lib/js/owl-carousel/owl.theme.css' type='text/css' media='all' />

    <link rel='stylesheet' id='cherry-plugin-css' href='../../wp-content/plugins/cherry-plugin/includes/css/cherry-plugin.css' type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-7-css' href='../../wp-content/plugins/contact-form-7/includes/css/styles.css' type='text/css' media='all' />
    <link rel='stylesheet' id='theme53594-css' href='../../wp-content/themes/theme53594/main-style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='magnific-popup-css' href='../../wp-content/themes/CherryFramework/css/magnific-popup.css' type='text/css' media='all' />
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery-1.7.2.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery-migrate-1.2.1.min.js'></script>
    <script type='text/javascript' src='../wp-includes/js/swfobject.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/modernizr.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jflickrfeed.js'></script>
    <script type='text/javascript' src='../../wp-content/plugins/cherry-plugin/lib/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/custom.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/bootstrap/js/bootstrap.min.js'></script>
    <script type='text/javascript' src='../../wp-content/plugins/cherry-plugin/lib/js/elasti-carousel/jquery.elastislide.js'></script>
    <style type='text/css'>
        h1 {
            font: normal 24px/34px Arial, Helvetica, sans-serif;
            color: #1e1e1e;
        }

        h2 {
            font: normal 24px/34px Arial, Helvetica, sans-serif;
            color: #1e1e1e;
        }

        h3 {
            font: normal 24px/34px Arial, Helvetica, sans-serif;
            color: #1e1e1e;
        }
        h4 {
            font: bold 16px/24px Arial, Helvetica, sans-serif;
            color: #ffffff;
        }
        h5 {
            font: bold 18px/22px Arial, Helvetica, sans-serif;
            color: #4e8156;
        }
        h6 {
            font: normal 12px/21px Arial, Helvetica, sans-serif;
            color: #1b1b1b;
        }
        body {
            font-weight: normal;
        }
        .logo_h__txt, .logo_link {
            font: normal 52px/52px Arial, Helvetica, sans-serif;
            color: #ffffff;
        }
        .sf-menu > li > a {
            font: normal 14px/20px Arial, Helvetica, sans-serif;
            color: #ffffff;
        }
        .nav.footer-nav a {
            font: normal 11px/16px Arial, Helvetica, sans-serif;
            color: #a1a1a1;
        }
    </style>
    <!--[if lt IE 8]>
		<div id="ie6-alert" style="width: 100%; text-align:center;">
			<img src="https://beatie6.frontcube.com/images/ie6.jpg" alt="Upgrade IE 6" width="640" height="344" border="0" usemap="#Map" longdesc="https://die6.frontcube.com" /><map name="Map" id="Map"><area shape="rect" coords="496,201,604,329" href="https://www.microsoft.com/windows/internet-explorer/default.aspx" target="_blank" alt="Download Interent Explorer" /><area shape="rect" coords="380,201,488,329" href="https://www.apple.com/safari/download/" target="_blank" alt="Download Apple Safari" /><area shape="rect" coords="268,202,376,330" href="https://www.opera.com/download/" target="_blank" alt="Download Opera" /><area shape="rect" coords="155,202,263,330" href="https://www.mozilla.com/" target="_blank" alt="Download Firefox" /><area shape="rect" coords="35,201,143,329" href="https://www.google.com/chrome" target="_blank" alt="Download Google Chrome" />
			</map>
		</div>
	<![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="../../wp-content/themes/CherryFramework/js/jquery.mobile.customized.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(function () {
            jQuery('.sf-menu').mobileMenu({ defaultText: "Navigate to..." });
        });
    </script>
    <!--<![endif]-->
    <script type="text/javascript">
        // Init navigation menu
        jQuery(function () {
            // main navigation init
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
</head>
<body class="blog cat-3-id">
   
    <div id="motopress-main" class="main-holder">
        <!--Begin #motopress-main-->
        <header class="motopress-wrapper header">
            <div class="container">
                <div class="row">
                    <div class="span12" data-motopress-wrapper-file="wrapper/wrapper-header.php" data-motopress-wrapper-type="header" data-motopress-id="5b71d3c459407">
                        <div class="row">
                            <div class="span5" data-motopress-type="static" data-motopress-static-file="static/static-logo.php">
                                <!-- BEGIN LOGO -->
                                <div class="logo pull-left">
                                    <a href="../wordpress_53594.html" class="logo_h logo_h__img">
                                        <img src="../../wp-content/themes/theme53594/images/logo.png" alt="Union One" title="Military Academy"></a>
                                    <p class="logo_tagline">Military Academy</p>
                                    <!-- Site Tagline -->
                                </div>
                                <!-- END LOGO -->
                            </div>
                            <div class="span7" data-motopress-type="static" data-motopress-static-file="static/static-nav.php">
                                <!-- BEGIN MAIN NAVIGATION -->
                                <nav class="nav nav__primary clearfix">
                                    <ul id="topnav" class="sf-menu">
                                        <li id="menu-item-2022" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Index.aspx">网站首页</a></li>
                                        <li id="menu-item-2024" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Platform/Dictionary/Directories.aspx">资源路径管理</a></li>
                                        <li id="menu-item-2025" class="menu-item menu-item-type-post_type current-menu-item menu-item-object-page menu-item-has-children"><a href="/Platform/Dictionary/ResourceIntro.apsx">资源上传下载</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-2016" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Platform/Dictionary/NewResourceUpload.aspx">新资源上传</a></li>
                                                <li id="menu-item-2027" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Platform/Dictionary/ResourceShow.aspx">资源下载</a></li>
                                                <li id="menu-item-2020" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Platform/Dictionary/ResourceUpload.aspx">资源上传</a></li>
                                            </ul>
                                        </li>
                                        
                                        <li id="menu-item-2023" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children"><a href="../portfolio/portfolio.html">Academics</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-2030" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../portfolio/projects-2/projects-2.html">Academics 2</a></li>
                                                <li id="menu-item-2029" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children"><a href="../portfolio/projects-3/projects-3.html">Academics 3</a>
                                                    <ul class="sub-menu">
                                                        <li id="menu-item-2039" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../portfolio/projects-3/category-1/category-1.html">Category 1</a></li>
                                                        <li id="menu-item-2038" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../portfolio/projects-3/category-2/category-2.html">Category 2</a></li>
                                                        <li id="menu-item-2037" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../portfolio/projects-3/category-3/category-3.html">Category 3</a></li>
                                                    </ul>
                                                </li>
                                                <li id="menu-item-2028" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../portfolio/projects-4/projects-4.html">Academics 4</a></li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-2021" class="menu-item menu-item-type-post_type menu-item-object-page page_item page-item-103"><a href="blog.html">Blog</a></li>
                                        <li id="menu-item-2019" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="../contacts/contacts.html">Contacts</a></li>
                                    </ul>
                                </nav>
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
                    <div class="span12" data-motopress-wrapper-file="index.php" data-motopress-wrapper-type="content">
                        <div class="row">
                            <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
                                <section class="title-section">
                                    <h1 class="title-header">资源上传				
                                    </h1>
                                    <!-- BEGIN BREADCRUMBS-->
                                    <ul class="breadcrumb breadcrumb__t">
                                        <li><a href="/Index.aspx">网站首页</a></li>
                                        <li class="divider"></li>
                                        <li class="active">资源上传</li>
                                    </ul>
                                    <!-- END BREADCRUMBS -->
                                </section>
                                <!-- .title-section -->
                            </div>
                        </div>
                        <form id="form1" runat="server">
    <div class="querybar">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td>
                    标题：<input type="text" class="mytext" id="Title1" name="Title1" value="" runat="server" />
                    分类：<select class="myselect" id="Type" name="Type"><option value="">==全部==</option><asp:Literal ID="TypeOptions" runat="server"></asp:Literal></select>
                    人员：<input type="text" user="true" dept="false" value="" runat="server" station="false" unit="false" more="false" group="false" id="UserID" name="UserID" class="mymember" />
                    发生日期：<input type="text" class="mycalendar" name="Date1" style="width:90px;" value="" runat="server" /> 至 <input type="text" class="mycalendar" name="Date2" style="width:90px;" value="" runat="server" />
                    <input type="submit" name="Search" value="&nbsp;&nbsp;查&nbsp;询&nbsp;&nbsp;" class="mybutton" />
                </td>
            </tr>
        </table>
    </div>
    <table class="listtable">
        <thead>
            <tr>
                <th width="45%">标题</th>
                <th width="10%">分类</th>
                <th width="15%">发生时间</th>
                <th width="10%">操作员</th>
                <th width="10%">发生IP</th>
                <th width="10%" sort="0">详细</th>
            </tr>
        </thead>
        <tbody>
            <%foreach(System.Data.DataRow dr in Dt.Rows){ %>
            <tr>
                <td><%=dr["title"] %></td>
                <td><%=dr["Type"] %></td>
                <td><%=dr["WriteTime"].ToString().ToDateTimeStringS() %></td>
                <td><%=dr["UserName"] %></td>
                <td><%=dr["IPAddress"] %></td>
                <td><a class="viewlink" href="javascript:void(0);" onclick="detail('<%=dr["ID"] %>');return false;">查看</a></td>
            </tr>
            <%} %>
        </tbody>
    </table>
    <div class="buttondiv"><asp:Literal ID="Pager" runat="server"></asp:Literal></div>   
    </form>
                    </div>
                </div>
            </div>
        </div>
    <script type="text/javascript">
        var appid = '<%=Request.QueryString["appid"]%>';
        var iframeid = '<%=Request.QueryString["tabid"]%>';
        var dialog = top.mainDialog;
        var query = '<%=Query%>';
        function detail(id)
        {
            dialog.open({ id: "window_" + appid.replaceAll('-', ''), title: "查看日志详细信息", width: 850, height: 450, url: top.rootdir + "/Platform/Log/Detail.aspx?id=" + id + '<%=Query%>', openerid: iframeid });
        }

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
                                            <img src="../../wp-content/themes/theme53594/images/social/twitter.png" alt="twitter"></a></li>
                                        <li><a href="#" title="facebook">
                                            <img src="../../wp-content/themes/theme53594/images/social/facebook.png" alt="facebook"></a></li>
                                        <li><a href="#" title="google">
                                            <img src="../../wp-content/themes/theme53594/images/social/google.png" alt="google"></a></li>
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
    <script type='text/javascript' src='../../wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js'></script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var _wpcf7 = { "loaderUrl": "https:\/\/livedemo00.template-help.com\/wordpress_53594\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif", "sending": "Sending ..." };
        /* ]]> */
    </script>
    <script type='text/javascript' src='../../wp-content/plugins/contact-form-7/includes/js/scripts.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/superfish.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.mobilemenu.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.magnific-popup.min.js'></script>
    <script type='text/javascript' src='../../wp-content/plugins/cherry-plugin/lib/js/FlexSlider/jquery.flexslider-min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jplayer.playlist.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.jplayer.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/tmstickup.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/device.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.zaccordion.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/camera.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.debouncedresize.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.ba-resize.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery.isotope.js'></script>
    <script type='text/javascript' src='../../wp-content/plugins/cherry-plugin/includes/js/cherry-plugin.js'></script>
    <script type="text/javascript">
        deleteCookie('cf-cookie-banner');
    </script>
    <!-- this is used by many Wordpress features and for plugins to work properly -->
</body>
</html>



