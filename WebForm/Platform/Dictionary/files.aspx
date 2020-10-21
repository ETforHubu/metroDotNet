<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="files.aspx.cs" Inherits="WebForm.Platform.Dictionary.files" EnableViewState="true" %>


<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="../../Styles/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .toolbar1 .txt {
                background: none;
                line-height: 33px;
                height: 33px;
                border:0px none none ;
                float: left;
                padding-right: 0px;
                margin-left: 0px;
                border-radius: 3px;
                text-align:center;
                /*behavior: url(js/pie.htc);*/
        }

    </style>
<%--    <script src="../../Scripts/jquery-1.11.1.min.js"></script>--%>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="../../Scripts/selectAll.js"></script>
    <script language="javascript">
        $(function () {
            //导航切换
            $(".imglist li").click(function () {
                $(".imglist li.selected").removeClass("selected")
                $(this).addClass("selected");
            })
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".click").click(function () {
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function () {
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function () {
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function () {
                $(".tip").fadeOut(100);
            });

        });
        function openPWD(i, width, height) {
            window.showModalDialog(i, "", "dialogHeight: " + height + "px; dialogWidth: " + width + "px;dialogTop:px; dialogLeft:px; edge: Raised; center: Yes; help: No; resizable: No; status: No;scroll:No");
        }
    </script>
    
    <title>军械士官学校 | 资源管理系统</title>
    <meta name="description" content=" | Military Academy" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="alternate" type="application/rss+xml" title="Union One" href="../../feed/feed.html" />
    <link rel="alternate" type="application/atom+xml" title="Union One" href="../../feed/atom/atom.html" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/bootstrap/css/responsive.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/CherryFramework/css/camera.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../../wp-content/themes/theme53594/style.css" />
    <link rel="alternate" type="application/rss+xml" title="../../Union One &raquo; Feed" href="feed/feed.html" />
    <link rel="alternate" type="application/rss+xml" title="../../Union One &raquo; Comments Feed" href="comments/feed/feed.html" />
    <link rel="alternate" type="application/rss+xml" title="../../Union One &raquo; Home Comments Feed" href="home/feed/feed.html" />
    <link rel='stylesheet' id='theme53594-css' href='../../wp-content/themes/theme53594/main-style.css' type='text/css' media='all' />
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery-1.7.2.min.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/jquery-migrate-1.2.1.min.js'></script>
    <script type='text/javascript' src='../../wp-content/plugins/cherry-plugin/lib/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/js/custom.js'></script>
    <script type='text/javascript' src='../../wp-content/themes/CherryFramework/bootstrap/js/bootstrap.min.js'></script>

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
                            <div class="span5" data-motopress-type="static" data-motopress-static-file="static/static-logo.php">
                                <!-- BEGIN LOGO -->
                                <div class="logo pull-left">
                                    <a href="/IndexForStudents.aspx" class="logo_h logo_h__img">
                                        <img src="../../wp-content/themes/theme53594/images/logo.png" alt="Union One" title="Military Academy"></a>
                                    <p class="logo_tagline">资源管理系统</p>
                                    <!-- Site Tagline -->
                                </div>
                                <!-- END LOGO -->
                            </div>
                            <div class="span7" data-motopress-type="static" data-motopress-static-file="static/static-nav.php">
                                <!-- BEGIN MAIN NAVIGATION -->
                                <nav class="nav nav__primary clearfix">
                                    <ul id="topnav" class="sf-menu">
                                        <li id="menu-item-2022" class="menu-item menu-item-type-post_type menu-item-object-page page_item page-item-203"><a href="/IndexForStudents.aspx?appid=a314bdce-1124-4e05-9151-cc186ab82a77">网站首页</a></li>
                                        <li id="menu-item-2024" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="/Platform/Dictionary/files.aspx?appid=a314bdce-1124-4e05-9151-cc186ab82a77">资源下载</a></li>                                            
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
                    <div class="span12" data-motopress-wrapper-file="page-home.php" data-motopress-wrapper-type="content">
                        <div class="row">
                            <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-slider.php">
                                <div id="slider-wrapper" class="slider">
                                    <div class="container">
                            
                                   
    <form id="form1" runat="server">    
        <div runat="server">
            <br />
            <div class="rightinfo">

                <div class="tools">

                    <ul class="toolbar">
                       <%-- <li id="deletes" runat="server" style="margin-right: 0px; padding: 0px 0px;">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="btnDeleteRecords" Width="120px" CommandName="btnDeleteRecords" Height="33px" runat="server" Text="批量删除" BackColor="#3EAFE0" BorderColor="#3EAFE0" OnClick="PagerBtnCommand_OnClick" BorderStyle="Solid" BorderWidth="1px" Font-Names="微软雅黑" Font-Size="15px" />
                        </li>--%>
                        <li id="Li1" runat="server" class="click"  style="margin-left:5px;" visible="true"><span>
                            <img src="/..../../images/c01.png"  style="margin-top: 0px;width:20px;height:20px;" /></span><a href="files.aspx?value=<%=Root%>">">回到首页</a>
                        </li>
                        <li id="backUpLayer" runat="server" class="click"  style="margin-left:5px;" visible="true"><span>
                            <img src="/..../../images/up.gif"  style="margin-top: 0px;width:20px;height:20px;" /></span><a href="files.aspx?value=<%=parentFile%>">返回上一级目录</a>
                        </li>
               
                    </ul>
                    <ul class="toolbar1">
                        <li><span>
                            <img src="/..../../images/ico06.png" style="margin-top: 0px;width:20px;height:20px;" /></span>&nbsp;搜索条件&nbsp;&nbsp;文件名：</li>
                        &nbsp;
                        <li class="txt">
                            <asp:TextBox ID="txtName" CssClass="searchCon" runat="server" Height="33px" Width="100px" BorderColor="#507CD1" BorderWidth="1px"></asp:TextBox>
                         </li>
                        &nbsp;&nbsp;
                        <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="btnSearch" CommandName="search" Width="60px" Height="33px" runat="server" Text="搜索" BackColor="#3EAFE0" BorderColor="#3EAFE0" OnClick="PagerBtnCommand_OnClick" BorderStyle="Solid" BorderWidth="1px" />
                    </ul>
                </div>

                <asp:GridView PageSize="6" Width="100%" RowStyle-Height="40px" HeaderStyle-Height="30px" ID="fileManage" runat="server" BorderWidth="1px" BorderColor="#cccccc" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="fileManage_RowCommand" OnRowDataBound="fileManage_RowDataBound" OnRowDeleting="fileManage_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:TemplateField HeaderText="  ">
                                <HeaderTemplate>
                           
                            </HeaderTemplate>
                            <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" Width="20px" Height="20px" ImageUrl='<%#getImageUrl(DataBinder.Eval(Container.DataItem,"type").ToString().Trim())%>' />
                            </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="目录名称">
                            <ItemTemplate>
                                <span style=" font-size: 16px;"> 
                             <asp:HyperLink ID="HyperLink1" ForeColor="#3EAFE0"  runat="server"  Visible='<%#DataBinder.Eval(Container.DataItem,"mark").ToString().Equals("0")?true:false %>'  NavigateUrl='<%#getLinkUrl(DataBinder.Eval(Container.DataItem,"path").ToString()) %>' Text='<%#SubString(DataBinder.Eval(Container.DataItem,"fileName").ToString()) %>'></asp:HyperLink>
                                    <asp:LinkButton ID="DownOrInf" ForeColor="#3EAFE0" Visible='<%#getDownOrInfVisible(DataBinder.Eval(Container.DataItem,"type").ToString(),DataBinder.Eval(Container.DataItem,"mark").ToString())%>' runat="server" Text='<%#SubString(DataBinder.Eval(Container.DataItem,"fileName").ToString()) %>' CommandName="DownBtn" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"path") %>' ></asp:LinkButton>&nbsp;&nbsp;&nbsp;
                               <%--    <asp:HyperLink ID="printImage" ForeColor="#3EAFE0" Visible='<%#getPrintVisible(DataBinder.Eval(Container.DataItem,"type").ToString(),DataBinder.Eval(Container.DataItem,"mark").ToString())%>' Target="_blank" NavigateUrl='<%# "imagePrint.aspx?path="+Server.UrlEncode(DataBinder.Eval(Container.DataItem,"path").ToString()) %>'  Text='<%#SubString(DataBinder.Eval(Container.DataItem,"fileName").ToString()) %>' runat="server"></asp:HyperLink>--%>
                                     </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="18%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="type" HeaderText="文件类型" ControlStyle-Width="8%" />
                   <%--<asp:TemplateField HeaderText="上传人">
                            <ItemTemplate>
                                 <asp:HyperLink ID="uploade" ForeColor="#3EAFE0"  runat="server"  Visible="false" Text=""></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <%--<asp:BoundField DataField="uploade" HeaderText="上传人" ControlStyle-Width="8%"/>--%>
                          <asp:BoundField DataField="uploader" HeaderText="上传者" ControlStyle-Width="10%" />
                        <asp:BoundField DataField="time" HeaderText="目录创建时间" ControlStyle-Width="10%" />
                        <asp:BoundField DataField="size" HeaderText="文件大小" ControlStyle-Width="8%"  />

                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <span style="color: #235ee9; font-size: 16px;">                                    
                                    <asp:Image ID="upLoadOrDown" Width="18px" Height="18px" runat="server" ImageUrl='<%#getUpOrDownUrl(DataBinder.Eval(Container.DataItem,"type").ToString())%>' /> 
                                 <%--   <asp:HyperLink ID="upLoad"  Visible='<%#DataBinder.Eval(Container.DataItem,"mark").ToString().Equals("0")?true:false%>'   NavigateUrl='<%# "upLoadWJ.aspx?id=" + DataBinder.Eval(Container.DataItem,"id") + "&path=" +DataBinder.Eval(Container.DataItem,"path") %>'  Text="上传" runat="server">上传</asp:HyperLink>--%>
                                    <asp:LinkButton ID="Down" Visible='<%#DataBinder.Eval(Container.DataItem,"mark").ToString().Equals("0")?false:true%>' runat="server" Text='下载' CommandName="DownBtn" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"path") %>' ></asp:LinkButton>&nbsp;
          <%--                          <asp:HyperLink ID="delete" runat="server">
                                        <img src="/..../../images/t03.png" style="width:18px;height:18px;"  /><asp:Button ForeColor="#507CD1" ID="deleteBtn" CommandName="delete" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"id") %>' runat="server" Text="删除 " />
                                    </asp:HyperLink>--%>
                                </span>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="19%" HorizontalAlign="Center" />
                        </asp:TemplateField>
<%--                        <asp:TemplateField HeaderText="打印">
                            <ItemTemplate>
                                <span style="color: #235ee9; font-size: 16px;"> 
                                    <asp:HyperLink ID="print" Enabled='<%#getPrintVisible(DataBinder.Eval(Container.DataItem,"type").ToString())%>'  Target="_blank"  NavigateUrl='<%# "imagePrint.aspx?path="+Server.UrlEncode(DataBinder.Eval(Container.DataItem,"path").ToString()) %>'  Text="打印" runat="server">打印</asp:HyperLink>  
                                </span>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>--%>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3EAFE0" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EDF6FA" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>  
                <div  class="pagin" style="margin-top:20px;">
                    <div class="message"><span style="display: inline;"><span class="lblRecord">共</span><asp:Label ID="lblRecordCount" CssClass="lblRecord" runat="server" Text="" ForeColor="#056DAE"></asp:Label><span class="lblRecord">条记录，当前显示第&nbsp;</span><asp:Label ID="lblCurrentPage" CssClass="lblRecord" runat="server" Text="1" ForeColor="#056DAE"></asp:Label><span class="lblRecord">页/共</span><asp:Label ID="lbPageCount" CssClass="lblRecord" runat="server" ForeColor="#056DAE" Text=""></asp:Label><span class="lblRecord">页记录</span></span></div>
                    <ul class="paginList">
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Firstpage" CommandName="first" runat="server" Text="首" BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Prevpage" CommandName="prev" runat="server" Text="前 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Nextpage" CommandName="next" runat="server" Text="后 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Lastpage" CommandName="last" runat="server" Text="末 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
         </div>
                                </div>
                                <!-- .slider -->
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
                                            <li><a href='2013/03/03.html'>March 2013</a></li>
                                            <li><a href='2013/02/02.html'>February 2013</a></li>
                                            <li><a href='2013/01/01.html'>January 2013</a></li>
                                            <li><a href='2012/12/12.html'>December 2012</a></li>
                                            <li><a href='2012/05/05.html'>May 2012</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="copyright">
                            <div class="row">
                                <div class="span2" data-motopress-type="static" data-motopress-static-file="static/static-footer-text.php">
                                    <div id="footer-text" class="footer-text">
                                        &copy; 2018 | <a href="privacy-policy/privacy-policy.html" title="Privacy Policy">Privacy Policy</a>

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
    <script type='text/javascript' src='wp-includes/js/comment-reply.min.js'></script>
    <script type='text/javascript' src='wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js'></script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var _wpcf7 = { "loaderUrl": "https:\/\/livedemo00.template-help.com\/wordpress_53594\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif", "sending": "Sending ..." };
        /* ]]> */
    </script>
    <script type="text/javascript">
        deleteCookie('cf-cookie-banner');
    </script>
</body>
</html>


