<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebForm.Index" %>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <title>军械士官学校 | 资源管理系统</title>
    <meta name="description" content=" | Military Academy" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="alternate" type="application/rss+xml" title="Union One" href="feed/feed.html" />
    <link rel="alternate" type="application/atom+xml" title="Union One" href="feed/atom/atom.html" />
    <link rel="stylesheet" type="text/css" media="all" href="wp-content/themes/theme53594/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" media="all" href="wp-content/themes/theme53594/bootstrap/css/responsive.css" />
    <link rel="stylesheet" type="text/css" media="all" href="wp-content/themes/CherryFramework/css/camera.css" />
    <link rel="stylesheet" type="text/css" media="all" href="wp-content/themes/theme53594/style.css" />
    <link rel="alternate" type="application/rss+xml" title="Union One &raquo; Feed" href="feed/feed.html" />
    <link rel="alternate" type="application/rss+xml" title="Union One &raquo; Comments Feed" href="comments/feed/feed.html" />
    <link rel="alternate" type="application/rss+xml" title="Union One &raquo; Home Comments Feed" href="home/feed/feed.html" />
    <link rel='stylesheet' id='flexslider-css' href='wp-content/plugins/cherry-plugin/lib/js/FlexSlider/flexslider.css' type='text/css' media='all' />
    <link rel='stylesheet' id='owl-carousel-css' href='wp-content/plugins/cherry-plugin/lib/js/owl-carousel/owl.carousel.css' type='text/css' media='all' />
    <link rel='stylesheet' id='owl-theme-css' href='wp-content/plugins/cherry-plugin/lib/js/owl-carousel/owl.theme.css' type='text/css' media='all' />

    <link rel='stylesheet' id='cherry-plugin-css' href='wp-content/plugins/cherry-plugin/includes/css/cherry-plugin.css' type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-7-css' href='wp-content/plugins/contact-form-7/includes/css/styles.css' type='text/css' media='all' />
    <link rel='stylesheet' id='theme53594-css' href='wp-content/themes/theme53594/main-style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='magnific-popup-css' href='wp-content/themes/CherryFramework/css/magnific-popup.css' type='text/css' media='all' />
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery-1.7.2.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery-migrate-1.2.1.min.js'></script>
    <script type='text/javascript' src='wp-includes/js/swfobject.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/modernizr.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jflickrfeed.js'></script>
    <script type='text/javascript' src='wp-content/plugins/cherry-plugin/lib/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/custom.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/bootstrap/js/bootstrap.min.js'></script>
    <script type='text/javascript' src='wp-content/plugins/cherry-plugin/lib/js/elasti-carousel/jquery.elastislide.js'></script>
    <meta name="generator" content="WordPress 4.1.24" />
    <link rel='canonical' href='wordpress_53594.html' />
    <link rel='shortlink' href='wordpress_53594.html' />
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
    <script src="wp-content/themes/CherryFramework/js/jquery.mobile.customized.min.js" type="text/javascript"></script>
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

<body class="home page page-id-203 page-template page-template-page-home page-template-page-home-php">
    <style>
        A.applink:hover {
            border: 2px dotted #DCE6F4;
            padding: 2px;
            background-color: #ffff00;
            color: green;
            text-decoration: none;
        }

        A.applink {
            border: 2px dotted #DCE6F4;
            padding: 2px;
            color: #2F5BFF;
            background: transparent;
            text-decoration: none;
        }

        A.info {
            color: #2F5BFF;
            background: transparent;
            text-decoration: none;
        }

            A.info:hover {
                color: green;
                background: transparent;
                text-decoration: underline;
            }
    </style>
    <div id="motopress-main" class="main-holder">
        <!--Begin #motopress-main-->
        <header class="motopress-wrapper header">
            <div class="container">
                <div class="row">
                    <div class="span12" data-motopress-wrapper-file="wrapper/wrapper-header.php" data-motopress-wrapper-type="header" data-motopress-id="5b5742bc02649">
                        <div class="row">
                            <div class="span4" data-motopress-type="static" data-motopress-static-file="static/static-logo.php">
                                <!-- BEGIN LOGO -->
                                <div class="logo pull-left">
                                    <a href="Index.aspx" class="logo_h logo_h__img">
                                        <img src="wp-content/themes/theme53594/images/logo.png" alt="Union One" title="Military Academy"></a>
                                    <p class="logo_tagline">城市轨道交通管理系统</p>
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
                                    <span style="margin-right:6px;font-size:16px;"><a href="javascript:void(0);" onclick="if(confirm('您真的要退出系统吗?')){window.location='Logout.ashx';} return false;" style="color:white;font-size:16px" >退出系统</a></span>
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
                    <div class="span12" data-motopress-wrapper-file="page-home.php" data-motopress-wrapper-type="content">
                        <div class="row">
                            <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-slider.php">
                                <div id="slider-wrapper" class="slider">
                                    <div class="container">
                                         <div class="row">
                            <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
                                <section class="title-section">
                                    <h1 class="title-header">FAQs	</h1>
                                    <!-- BEGIN BREADCRUMBS-->
                                    <ul class="breadcrumb breadcrumb__t">
                                        <li><a href="Index.aspx">网站首页</a></li>
                                        
                                    </ul>
                                    <!-- END BREADCRUMBS -->
                                </section>
                                <!-- .title-section -->
                            </div>
                        </div>
                                        <script type="text/javascript">
                                            //    jQuery(window).load(function() {
                                            jQuery(function () {
                                                var myCamera = jQuery('#camera5b5742bc10e5f');
                                                if (!myCamera.hasClass('motopress-camera')) {
                                                    myCamera.addClass('motopress-camera');
                                                    myCamera.camera({
                                                        autoAdvance: true, //true, false
                                                        mobileAutoAdvance: true, //true, false. Auto-advancing for mobile devices
                                                        cols: 12,
                                                        fx: "simpleFade", //'random','simpleFade', 'curtainTopLeft', 'curtainTopRight', 'curtainBottomLeft',          'curtainBottomRight', 'curtainSliceLeft', 'curtainSliceRight', 'blindCurtainTopLeft', 'blindCurtainTopRight', 'blindCurtainBottomLeft', 'blindCurtainBottomRight', 'blindCurtainSliceBottom', 'blindCurtainSliceTop', 'stampede', 'mosaic', 'mosaicReverse', 'mosaicRandom', 'mosaicSpiral', 'mosaicSpiralReverse', 'topLeftBottomRight', 'bottomRightTopLeft', 'bottomLeftTopRight', 'bottomLeftTopRight'
                                                        loader: "no", //pie, bar, none (even if you choose "pie", old browsers like IE8- can't display it... they will display always a loading bar)
                                                        navigation: true, //true or false, to display or not the navigation buttons
                                                        navigationHover: false, //if true the navigation button (prev, next and play/stop buttons) will be visible on hover state only, if false they will be visible always
                                                        pagination: false,
                                                        playPause: false, //true or false, to display or not the play/pause buttons
                                                        rows: 8,
                                                        slicedCols: 12,
                                                        slicedRows: 8,
                                                        thumbnails: false,
                                                        time: 7000, //milliseconds between the end of the sliding effect and the start of the next one
                                                        transPeriod: 1500, //lenght of the sliding effect in milliseconds
                                                        hover: true, //pause on state hover. Not available for mobile devices
                                                        alignment: 'topCenter',
                                                        barDirection: 'leftToRight',
                                                        barPosition: 'top',
                                                        easing: 'easeOutQuad',
                                                        mobileEasing: '',
                                                        mobileFx: '',
                                                        gridDifference: 250,
                                                        imagePath: 'images/',
                                                        minHeight: "100px",
                                                        height: "40.85%",
                                                        loaderColor: '#ffffff',
                                                        loaderBgColor: '#eb8a7c',
                                                        loaderOpacity: 1,
                                                        loaderPadding: 0,
                                                        loaderStroke: 3,
                                                        pieDiameter: 33,
                                                        piePosition: 'rightTop',
                                                        portrait: true,
                                                        ////////callbacks
                                                        onEndTransition: function () { }, //this callback is invoked when the transition effect ends
                                                        onLoaded: function () { }, //this callback is invoked when the image on a slide has completely loaded
                                                        onStartLoading: function () { }, //this callback is invoked when the image on a slide start loading
                                                        onStartTransition: function () { } //this callback is invoked when the transition effect starts
                                                    });
                                                }
                                            });
                                            //    });
                                        </script>

                                        <div id="camera5b5742bc10e5f" class="camera_wrap camera">
                                            <div data-src='wp-content/uploads/2013/11/slide_2.jpg' data-thumb='wp-content/uploads/2013/11/slide_3-100x50.jpg'>
                                                <div class="camera_caption fadeIn">                 
                                                    <strong><span>中铁第四勘察设计院</span>铁四院组训“四个一”考核标准</strong>
                                                   拟制一份周工作计划；踏实工作；创造辉煌。
                                                </div>
                                            </div>
                                            <div data-src='wp-content/uploads/2013/11/slide_1.jpg' data-thumb='wp-content/uploads/2013/11/slide_2-100x50.jpg'>
                                                <div class="camera_caption fadeIn">                                           
                                                    <strong><span>中铁第四勘察设计院</span>工作安排计划</strong>
                                                    中、高级工程师需要进行实地调研，设计轨道图纸；普通员工正确利用网络资源，图书馆资源查询相关资料，能协助工程师工作；能够组织特色活动，丰富业余生活。
                                                </div>
                                            </div>
                                            <div data-src='wp-content/uploads/2013/11/slide_3.jpg' data-thumb='wp-content/uploads/2013/11/slide_1-100x50.jpg'>
                                                <div class="camera_caption fadeIn">
                                                   <%-- <a href="at-vero-eos-et-accusamus-et-iusto/mauris-posuere.html">Learn More</a>--%>
                                                    <strong><span>中铁第四勘察设计院</span>轨道工程设计办公室</strong>
                                                  铁四院专业种类齐全，技术力量雄厚。拥有测量（航测）、工程地质、水文地质、物理勘探、原位测试、岩土工程、经济调查、行车组织、规划、线路(路线)、地质与路基、桥梁、隧道、地下工程及城市轨道交通(含地铁)、城市道路、站场(枢纽)、通信、信号、电力、电化、机车、车辆、建筑、结构、消防、供热通风、给排水、环境保护、控制爆破、计算机、工程经济等近40个专业。
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- .slider -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="span12" data-motopress-type="loop" data-motopress-loop-file="loop/loop-page.php">
                                <div id="post-203" class="post-203 page type-page status-publish hentry">

                                    <div class="row ">
                                        <div class="span5 ">
                                            <div class="hero-unit ">
                                                <h3>欢迎来到中铁第四勘察设计院集团有限公司<br />勘察设计院</h3>
                                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>
                                                <p>Sorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit.</p>
                                                <div class="btn-align"><a href="portfolio" title="Read More" class="btn btn-primary btn-normal btn-primary" target="_self">Read More</a></div>
                                            </div>
                                            <!-- .hero-unit (end) -->
                                        </div>
                                        <div class="span7 ">     
                                                <h3>城市轨道交通系统</h3>                                                                          
                                            <div class="clear"></div>
                                            <!-- .clear (end) -->
                                  <ul class="posts-grid row-fluid unstyled team ul-item-0">
                                                <li class="span4 list-item-1">
                                                    <figure class="featured-thumbnail thumbnail"><a href="wp-content/uploads/2018/8.jpg" title="深圳" rel="prettyPhoto-1523242720">
                                                        <img src="wp-content/uploads/2018/8.jpg" alt="深圳" /><span class="zoom-icon"></span></a></figure>
                                                    <div class="clear"></div>
                                                    <h5><a href="#" title="深圳">深圳</a></h5>                                               
                                                </li>
                                                <li class="span4 list-item-2">
                                                    <figure class="featured-thumbnail thumbnail"><a href="wp-content/uploads/2018/9.jpg" title="上海" rel="prettyPhoto-1523242720">
                                                        <img src="wp-content/uploads/2018/9.jpg" alt="上海" /><span class="zoom-icon"></span></a></figure>
                                                    <div class="clear"></div>
                                                    <h5><a href="#" title="上海">上海</a></h5>

                                                </li>
                                                <li class="span4 list-item-3">
                                                    <figure class="featured-thumbnail thumbnail"><a href="wp-content/uploads/2018/10.jpg" title="广州" rel="prettyPhoto-1523242720">
                                                        <img src="wp-content/uploads/2018/10.jpg" alt="广州" /><span class="zoom-icon"></span></a></figure>
                                                    <div class="clear"></div>
                                                    <h5><a href="#" title="广州">广州</a></h5>
                                                </li>
                                            </ul>
                                            <!-- .recent-posts (end) -->
                                        </div>
                                    </div>
                                    <!-- .row (end) -->
                                    <div class="hr"></div>
                                    <!-- .hr (end) -->
                                    <div class="row ">
                                        <div class="span3 ">
                                            <h2>时政要闻</h2>
                                            <div class="list styled arrow2-list">
                                                <ul>
                                                    <li><a href="#">科学性与思想性统一性原则</a></li>
                                                    <li><a href="#">理论联系实际原则</a></li>
                                                    <li><a href="#">直观性原则</a></li>
                                                    <li><a href="#">启发性原则</a></li>
                                                    <li><a href="#">循序渐进原则</a></li>
                                                    <li><a href="#">巩固性原则 </a></li>
                                                    <li><a href="#">可接受性原则</a></li>
                                                     <li><a href="#">因材施教原则</a></li>
                                                </ul>
                                            </div>
<%--                                            <a href="about" title="Read more" class="btn btn-link btn-normal btn-inline " target="_self">Read more</a>--%>
                                        </div>
                                        <div class="span3 ">
                                            <h2>公司新闻</h2>
                                            <ul class="recent-posts news unstyled">
                                                <li class="recent-posts_li post-71 post type-post status-publish format-standard has-post-thumbnail hentry category-at-vero-eos-et-accusamus-et-iusto cat-3-id"><span class="meta"><span class="post-date">资源下载</span><span class="post-comments"><a href="at-vero-eos-et-accusamus-et-iusto/mauris-posuere/#comments">5</a></span></span><h5><a href="/Platform/Dictionary/ResourceShow.aspx" title="Mauris posuere">资源下载</a></h5>
                                                    <div class="excerpt">提供Word文档、PPT、视频等资源的下载</div>
                                                    <div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-77 post type-post status-publish format-standard has-post-thumbnail hentry category-dignissimos-ducimus-qui-blanditiis cat-6-id"><span class="meta"><span class="post-date">March 5, 2013</span><span class="post-comments"><a href="dignissimos-ducimus-qui-blanditiis/donec-tempor-libero/#comments">3</a></span></span><h5><a href="dignissimos-ducimus-qui-blanditiis/donec-tempor-libero/donec-tempor-libero.html" title="Donec tempor libero">Donec tempor libero</a></h5>
                                                    <div class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit.... </div>
                                                    <div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-67 post type-post status-publish format-standard has-post-thumbnail hentry category-daesentium-voluptatum-deleniti-atque cat-5-id"><span class="meta"><span class="post-date">February 14, 2013</span><span class="post-comments"><a href="daesentium-voluptatum-deleniti-atque/etiam-dictum-egestas/#comments">0</a></span></span><h5><a href="daesentium-voluptatum-deleniti-atque/etiam-dictum-egestas/etiam-dictum-egestas.html" title="Etiam dictum egestas">Etiam dictum egestas</a></h5>
                                                    <div class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit.... </div>
                                                    <div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                            </ul>
                                            <!-- .recent-posts (end) -->
                                            <a href="blog" title="Archive" class="btn btn-link btn-normal btn-inline " target="_self">Archive</a><!-- .btn -->
                                        </div>
                                        <div class="span6 ">
                                            <h2>领导关怀</h2>
                                            <ul class="posts-grid row-fluid unstyled team ul-item-0">
                                                <li class="span4 list-item-1">
                                                    <figure class="featured-thumbnail thumbnail"><a href="wp-content/uploads/2014/11/img-4.jpg" title="习近平考察铁四院设计的昆明南站" rel="prettyPhoto-1523242720">
                                                        <img src="wp-content/uploads/2014/11/img-4-170x235.jpg" alt="习近平考察铁四院设计的昆明南站" /><span class="zoom-icon"></span></a></figure>
                                                    <div class="clear"></div>
                                                    <h5><a href="team-view/lisa-kromstain/lisa-kromstain.html" title="习近平考察铁四院设计的昆明南站">习近平</a></h5>
                                                    <p class="excerpt">习近平考察铁四院设计的昆明南站 </p>
                                                </li>
                                                <li class="span4 list-item-2">
                                                    <figure class="featured-thumbnail thumbnail"><a href="wp-content/uploads/2014/11/img-8.jpg" title="胡锦涛在京九铁路工地听取铁四院地质专家汇报" rel="prettyPhoto-1523242720">
                                                        <img src="wp-content/uploads/2014/11/hujingtao.jpg" alt="胡锦涛在京九铁路工地听取铁四院地质专家汇报" /><span class="zoom-icon"></span></a></figure>
                                                    <div class="clear"></div>
                                                    <h5><a href="team-view/david-brown/david-brown.html" title="胡锦涛在京九铁路工地听取铁四院地质专家汇报">胡锦涛</a></h5>
                                                    <p class="excerpt">胡锦涛在京九铁路工地听取铁四院地质专家汇报 </p>
                                                </li>
                                                <li class="span4 list-item-3">
                                                    <figure class="featured-thumbnail thumbnail"><a href="wp-content/uploads/2014/11/img-13.jpg" title="温家宝出席京沪高铁开工典礼时与铁四院董事长蒋再秋握手" rel="prettyPhoto-1523242720">
                                                        <img src="wp-content/uploads/2014/11/wenjiabao.jpg" alt="温家宝出席京沪高铁开工典礼时与铁四院董事长蒋再秋握手" /><span class="zoom-icon"></span></a></figure>
                                                    <div class="clear"></div>
                                                    <h5><a href="team-view/alex-sawyer/alex-sawyer.html" title="温家宝出席京沪高铁开工典礼时与铁四院董事长蒋再秋握手">温家宝</a></h5>
                                                    <p class="excerpt">温家宝出席京沪高铁开工典礼时与铁四院董事长蒋再秋握手 </p>
                                                </li>
                                            </ul>
                                            <!-- .posts-grid (end) -->
                                        </div>
                                    </div>
                                    <!-- .row (end) -->
                                    <%--<div class="spacer"></div>
                                    <!-- .spacer (end) -->
                                    <div class="row ">
                                        <div class="span12 ">
                                            <h2><em>Sponsors of the Union One Academy</em></h2>
                                            <ul class="recent-posts clients unstyled">
                                                <li class="recent-posts_li post-1961 clients type-clients status-publish has-post-thumbnail hentry">
                                                    <figure class="thumbnail featured-thumbnail"><a href="clients-view/client-1/client-1.html" title="Client &#8211; 1">
                                                        <img src="wp-content/uploads/2014/11/client_1.png" alt="Client &#8211; 1" /></a></figure>
                                                    <h5><a href="clients-view/client-1/client-1.html" title="Client &#8211; 1">Client &#8211; 1</a></h5>
                                                    <a href="clients-view/client-1/client-1.html" class="btn btn-primary" title="Client &#8211; 1">Visit Site</a><div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-1959 clients type-clients status-publish has-post-thumbnail hentry">
                                                    <figure class="thumbnail featured-thumbnail"><a href="clients-view/client-2/client-2.html" title="Client &#8211; 2">
                                                        <img src="wp-content/uploads/2014/11/client_2.png" alt="Client &#8211; 2" /></a></figure>
                                                    <h5><a href="clients-view/client-2/client-2.html" title="Client &#8211; 2">Client &#8211; 2</a></h5>
                                                    <a href="clients-view/client-2/client-2.html" class="btn btn-primary" title="Client &#8211; 2">Visit Site</a><div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-1957 clients type-clients status-publish has-post-thumbnail hentry">
                                                    <figure class="thumbnail featured-thumbnail"><a href="clients-view/client-3/client-3.html" title="Client &#8211; 3">
                                                        <img src="wp-content/uploads/2014/11/client_3-131x33.png" alt="Client &#8211; 3" /></a></figure>
                                                    <h5><a href="clients-view/client-3/client-3.html" title="Client &#8211; 3">Client &#8211; 3</a></h5>
                                                    <a href="clients-view/client-3/client-3.html" class="btn btn-primary" title="Client &#8211; 3">Visit Site</a><div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-1955 clients type-clients status-publish has-post-thumbnail hentry">
                                                    <figure class="thumbnail featured-thumbnail"><a href="clients-view/client-4/client-4.html" title="Client &#8211; 4">
                                                        <img src="wp-content/uploads/2014/11/client_4.png" alt="Client &#8211; 4" /></a></figure>
                                                    <h5><a href="clients-view/client-4/client-4.html" title="Client &#8211; 4">Client &#8211; 4</a></h5>
                                                    <a href="clients-view/client-4/client-4.html" class="btn btn-primary" title="Client &#8211; 4">Visit Site</a><div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-1953 clients type-clients status-publish has-post-thumbnail hentry">
                                                    <figure class="thumbnail featured-thumbnail"><a href="clients-view/client-5/client-5.html" title="Client &#8211; 5">
                                                        <img src="wp-content/uploads/2014/11/client_5.png" alt="Client &#8211; 5" /></a></figure>
                                                    <h5><a href="clients-view/client-5/client-5.html" title="Client &#8211; 5">Client &#8211; 5</a></h5>
                                                    <a href="clients-view/client-5/client-5.html" class="btn btn-primary" title="Client &#8211; 5">Visit Site</a><div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                                <li class="recent-posts_li post-1951 clients type-clients status-publish has-post-thumbnail hentry">
                                                    <figure class="thumbnail featured-thumbnail"><a href="clients-view/client-6/client-6.html" title="Client &#8211; 6">
                                                        <img src="wp-content/uploads/2014/11/client_6.png" alt="Client &#8211; 6" /></a></figure>
                                                    <h5><a href="clients-view/client-6/client-6.html" title="Client &#8211; 6">Client &#8211; 6</a></h5>
                                                    <a href="clients-view/client-6/client-6.html" class="btn btn-primary" title="Client &#8211; 6">Visit Site</a><div class="clear"></div>
                                                </li>
                                                <!-- .entry (end) -->
                                            </ul>
                                            <!-- .recent-posts (end) -->
                                        </div>--%>
                                    </div>
                                    <!-- .row (end) -->
                                    <div class="clear"></div>
                                    <!--.pagination-->
                                </div>
                                <!--#post-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="motopress-wrapper footer">
            <div class="container">
                <div class="row">
                    <div class="span12" data-motopress-wrapper-file="wrapper/wrapper-footer.php" data-motopress-wrapper-type="footer" data-motopress-id="5b5742bcf2495">
                        <div class="footer-widgets">
                            <div class="row">
                                <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-1">
                                    <div id="nav_menu-3" class="visible-all-devices ">
                                        <h4>Academy</h4>
                                        <div class="menu-company-container">
                                            <ul id="menu-company" class="menu">
                                                <li id="menu-item-2051" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2051"><a href="about/about.html">About us</a></li>
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
                                                <li id="menu-item-2045" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2045"><a href="blog/blog.html">News</a></li>
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
                                                <li id="menu-item-2049" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2049"><a href="wp-admin">SIGN IN</a></li>
                                                <li id="menu-item-2050" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2050"><a href="blog/blog.html">News</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="span3" data-motopress-type="dynamic-sidebar" data-motopress-sidebar-id="footer-sidebar-4">
                                    <div id="archives-4" class="">
                                        <h4>Archive</h4>
                                        <ul>
                                            <li><a href='2013/03/03.html'>March 2020</a></li>
                                            <li><a href='2013/02/02.html'>February 2020</a></li>
                                            <li><a href='2013/01/01.html'>January 2020</a></li>
                                            <li><a href='2012/12/12.html'>December 2020</a></li>
                                            <li><a href='2012/05/05.html'>May 2020</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="copyright">
                            <div class="row">
                                <div class="span2" data-motopress-type="static" data-motopress-static-file="static/static-footer-text.php">
                                    <div id="footer-text" class="footer-text">
                                        &copy; 2020 | <a href="privacy-policy/privacy-policy.html" title="Privacy Policy">Privacy Policy</a>

                                        <!-- {%FOOTER_LINK} -->
                                    </div>
                                </div>
                                <!-- Social Links -->
                                <div class="span7 social-nets-wrapper" data-motopress-type="static" data-motopress-static-file="static/static-social-networks.php">
                                    <ul class="social">
                                        <li><a href="#" title="twitter">
                                            <img src="wp-content/themes/theme53594/images/social/twitter.png" alt="twitter"></a></li>
                                        <li><a href="#" title="facebook">
                                            <img src="wp-content/themes/theme53594/images/social/facebook.png" alt="facebook"></a></li>
                                        <li><a href="#" title="google">
                                            <img src="wp-content/themes/theme53594/images/social/google.png" alt="google"></a></li>
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
                  window.location.href = "/Platform/UserInfo/Default.aspx"
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
                                                            //tabid += child.childs[j].id.replaceAll('-', '');
                                                            html += '<li id="menu-item-2026" class="menu-item menu-item-type-post_type menu-item-object-page"><a href=" ' + child.childs[j].link + '?'+'appid='+ child.childs[j].id + '&uid='+ userID +'">' + child.childs[j].title + '</a></li>';
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
    <script type='text/javascript' src='wp-includes/js/comment-reply.min.js'></script>
    <script type='text/javascript' src='wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js'></script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var _wpcf7 = { "loaderUrl": "https:\/\/livedemo00.template-help.com\/wordpress_53594\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif", "sending": "Sending ..." };
        /* ]]> */
    </script>
    <script type='text/javascript' src='wp-content/plugins/contact-form-7/includes/js/scripts.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/superfish.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.mobilemenu.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.magnific-popup.min.js'></script>
    <script type='text/javascript' src='wp-content/plugins/cherry-plugin/lib/js/FlexSlider/jquery.flexslider-min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jplayer.playlist.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.jplayer.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/tmstickup.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/device.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.zaccordion.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/camera.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.debouncedresize.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.ba-resize.min.js'></script>
    <script type='text/javascript' src='wp-content/themes/CherryFramework/js/jquery.isotope.js'></script>
    <script type='text/javascript' src='wp-content/plugins/cherry-plugin/includes/js/cherry-plugin.js'></script>
    <script type="text/javascript">
        deleteCookie('cf-cookie-banner');
    </script>
</body>
</html>


