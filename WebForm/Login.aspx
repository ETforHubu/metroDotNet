﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>城市轨道交通管理平台-登录</title>
</head>
<body style="background:#f3f7f9; overflow:hidden;">
    <div id="bgdiv" class="loginbgdiv"></div>
    <script type="text/javascript">
        var win = new RoadUI.Window();
        $(function ()
        {
            //alert("login!");
            var left = $(window).width() - 800;
            var top = $(window).height() - 480;
            win.open({ url: "Login1.aspx", width: 300, height: 220, top: top, left: left, showico: false, title: "用户登录", resize: false, ismodal: false, showclose: false });
        });
    </script>
</body>
</html>
