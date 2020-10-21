<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDefault.aspx.cs" Inherits="WebForm.Controls.SelectMember.NewDefault" %>

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
      <style type="text/css">
        .SelectBorder{border:1px solid #cccccc; padding:3px 3px 3px 3px;}
        body { overflow:hidden;}
    </style>
    <script type="text/javascript">
        var win = new RoadUI.Window();
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
                                    <p class="logo_tagline">资源管理系统</p>
                                    <!-- Site Tagline -->
                                </div>
                                <!-- END LOGO -->
                            </div>
                            <div class="span7" data-motopress-type="static" data-motopress-static-file="static/static-nav.php">
                                <div style="color:white;padding-top:5px">
                                    <span style="font-size:16px;">欢迎您：<asp:Literal ID="UserName" runat="server"></asp:Literal></span>
                                    <span style="margin-right:6px;font-size:16px;"></span>
                                    <span style="margin-right:6px;font-size:16px;"><select id="roleselect" onchange="roleChange(this.value)" class="roleselect"><asp:Literal ID="RoleOptions" runat="server"></asp:Literal></select></span>
                                    <span style="margin-right:6px;font-size:16px;">日期：<span id="CurrentDateTimeSpan"><asp:Literal ID="CurrentTime" runat="server"></asp:Literal></span></span>                           
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
                                        <li class="active">角色应用</li>
                                    </ul>
                                    <!-- END BREADCRUMBS -->
                                </section>
                                <!-- .title-section -->
                            </div>
                        </div>

                    </div>

                </div>
 <div class="row">
 <% 
        RoadFlow.Platform.Organize borganizename = new RoadFlow.Platform.Organize();
        string userPrefix = RoadFlow.Platform.Users.PREFIX;
        string workgroupPrefix = RoadFlow.Platform.WorkGroup.PREFIX;
        string values = Request.QueryString["values"];
        string rootid = Request.QueryString["rootid"];
        string defaultValuesString = "";
        bool isChangeType = "1" == Request.QueryString["isChangeType"];
        System.Text.StringBuilder defautlSB = new System.Text.StringBuilder();
        foreach (string value in values.Split(','))
        {
            if (value.IsNullOrEmpty())
            {
                continue;
            }
            string name = borganizename.GetName(value);
            if (name.IsNullOrEmpty())
            {
                continue;
            }
            defautlSB.AppendFormat("<div onclick=\"currentDel=this;showinfo('{0}');\" class=\"selectorDiv\" ondblclick=\"currentDel=this;del();\" value=\"{0}\">", value);
            defautlSB.Append(name);
            defautlSB.Append("</div>");
        }
        defaultValuesString = defautlSB.ToString();    
    %>
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:4px;">
        <tr>
            <td valign="top">
                <div style="margin-bottom:4px;">
                    显示类型：<select onchange="treecng(this.value);" <%=isChangeType?"disabled='disabled'":"" %> id="showtype" class="myselect" style="width:158px;">
                        <option value="0">组织机构</option>
                        <option value="1">工作组</option>
                    </select>
                </div>
                <div id="Organize" style="width:210px; height:392px; overflow:auto;" class="SelectBorder"></div>
            </td>
            <td align="center" style="padding:0px 6px;" valign="middle">
                <div style="margin-bottom:12px;"><button class="mybutton" onclick="add();">添加</button></div>
                <div style="margin-bottom:12px;"><button class="mybutton" onclick="del();">删除</button></div>
                <div style="margin-bottom:12px;"><button class="mybutton" onclick="confirm1();">确定</button></div>
                <div><button class="mybutton" onclick="win.close();">取消</button></div>
            </td>
            <td valign="top">
                <div id="SelectNote" class="SelectBorder" style="width:200px; height:40px; overflow:auto; margin-bottom:5px;">
                    <span style="color:#ccc;">单击已选择项可显示该项详细信息</span>
                </div>
                <div id="SelectDiv" style="width:200px; height:367px; overflow:auto;" class="SelectBorder">
                    <%=defaultValuesString %>
                </div>
            </td>
        </tr>
    </table>
     </div>
            </div>
                 </div>
    <script type="text/javascript">
        var isdept = '<%=Request.QueryString["isdept"]%>';
        var isunit = '<%=Request.QueryString["isunit"]%>';
        var isstation = '<%=Request.QueryString["isstation"]%>';
        var isuser = '<%=Request.QueryString["isuser"]%>';
        var ismore = '<%=Request.QueryString["ismore"]%>';
        var isall = '<%=Request.QueryString["isall"]%>';
        var isgroup = '<%=Request.QueryString["isgroup"]%>';
        var onlyunit = '<%=Request.QueryString["onlyunit"]%>';
        var eid = '<%=Request.QueryString["eid"]%>';
        var rootid = '<%=rootid%>';
        var values = '<%=values%>';
        var userBefor = '<%=userPrefix%>';
        var userWorkGroup = '<%=workgroupPrefix%>';
        var orgTree = null;
        var current = null;
        var currentDel = null;
        $(function ()
        {
            orgTree = new RoadUI.Tree({
                id: "Organize", path: "/Platform/Members/Tree1.ashx?showtype=0&isall=" + isall + "&onlyunit=" + onlyunit + "&rootid=" + rootid, refreshpath: top.rootdir + "/platform/Members/TreeRefresh.ashx?showtype=0",
                onclick: click, ondblclick: dblclick
            });
        });

        function treecng(val)
        {
            if (!val)
            {
                val = $("#showtype").val();
            }
            orgTree = new RoadUI.Tree({
                id: "Organize", path:"/Platform/Members/Tree1.ashx?showtype=" + val + "&isall=" + isall + "&onlyunit=" + onlyunit + "&rootid=" + rootid, refreshpath: top.rootdir + "/Platform/Members/TreeRefresh.ashx?showtype=" + val,
                onclick: click, ondblclick: dblclick
            });
        }

        function click(json)
        {
            current = json;
        }
        function dblclick(json)
        {
            click(json);
            add();
        }
        function add()
        {
            if (!current)
            {
                alert("没有选择要添加的项"); return;
            }

            if (("0" == ismore || "false" == ismore.toLowerCase()) && $("#SelectDiv").children("div").size() >= 1)
            {
                alert("当前设置最多只能选择一项!"); return;
            }
            if (current.type == 1 && ("0" == isunit || "false" == isunit.toLowerCase()))
            {
                alert("当前设置不允许选择单位!"); return;
            }
            if (current.type == 2 && ("0" == isdept || "false" == isdept.toLowerCase()))
            {
                alert("当前设置不允许选择部门!"); return;
            }
            if (current.type == 3 && ("0" == isstation || "false" == isstation.toLowerCase()))
            {
                alert("当前设置不允许选择岗位!"); return;
            }
            if (current.type == 4 && ("0" == isuser || "false" == isuser.toLowerCase()))
            {
                alert("当前设置不允许选择人员!"); return;
            }
            if (current.type == 5 && ("0" == isgroup || "false" == isgroup.toLowerCase()))
            {
                alert("当前设置不允许选择工作组!"); return;
            }
            if ($("#SelectDiv div[value$='" + current.id + "']").size() > 0)
            {
                alert(current.title + "已经选择了!"); return;
            }
            var value = current.id;
            if (current.type == 4)
            {
                value = userBefor + value;
            }
            else if (current.type == 5)
            {
                value = userWorkGroup + value;
            }
            $("#SelectDiv").append('<div onclick="currentDel=this;showinfo(\'' + value + '\');" class="selectorDiv" ondblclick="currentDel=this;del();" value="' + value + '">' + current.title + '</div>');
        }
        function showinfo(id)
        {
            $.ajax({
                url: top.rootdir + '/Controls/SelectMember/GetNote.ashx?id=' + id, async: true, cache: true, success: function (txt)
                {
                    $("#SelectNote").html(txt);
                }
            });
        }
        function del()
        {
            if (!currentDel)
            {
                alert("没有选择要删除的项");
            }
            $(currentDel).remove();
            window.setTimeout('$("#SelectNote").html(\'<span style="color:#ccc;">单击已选择项可显示该项详细信息</span>\')', 1);
        }
        function confirm1()
        {
            var value = [];
            var title = [];
            var objs = $("#SelectDiv div");
            for (var i = 0; i < objs.size() ; i++)
            {
                value.push(objs.eq(i).attr("value"));
                title.push(objs.eq(i).text());
            }

            var ele = win.getOpenerElement(eid);
            var ele1 = win.getOpenerElement(eid + "_text");
            if (ele1 != null && ele1.size() > 0)
            {
                ele1.val(title.join(','));
            }
            if (ele != null && ele.size() > 0)
            {
                ele.val(value.join(','));
            }

            win.close();
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