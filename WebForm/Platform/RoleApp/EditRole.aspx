﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditRole.aspx.cs" Inherits="WebForm.Platform.RoleApp.EditRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <table cellpadding="0" cellspacing="1" border="0" width="99%" class="formtable">
        <tr>
            <th style="width:80px;">角色名称：</th>
            <td><input type="text" id="Name" name="Name" class="mytext" validate="empty" runat="server" style="width:65%"/></td>
        </tr>
        <tr>
            <th style="width:80px;">角色成员：</th>
            <td><input type="text" id="UserName" name="UserName" runat="server" style="width:65%"/><input type="button" class="mybutton" value="选择" onclick="Sel()"/></td>        
        </tr>
        <tr>
            <th style="width:80px;">备注说明：</th>
            <td><textarea class="mytext" id="Note" name="Note" cols="1" rows="1" style="width:95%; height:50px;" runat="server"></textarea></td>
        </tr>
        <tr>
            <th style="width:80px;">复制：</th>
            <td>将此角色的应用复制给：<select id="ToTpl" name="ToTpl" class="myselect"><option value=""></option>
                <asp:Literal ID="RoleOptions" runat="server"></asp:Literal>
                           </select>
            <input type="submit" name="Copy" value="确认复制" onclick="return copy();" class="mybutton" /></td>
        </tr>
    </table>
    <div class="buttondiv">
       <input type="hidden" id="UseMember" name="UseMember" runat="server" style="width:65%"/>
       <input type="submit" name="Save" value="确认保存" onclick="return new RoadUI.Validate().validateForm(this);" class="mybutton" />
       <input type="submit" name="Delete" value="删除角色" onclick="return confirm('您真的要删除该角色及其应用吗?');" class="mybutton" />
        <input type="button" value="返回" class="mybutton" onclick="window.top.location='NewDefault.aspx'+'<%=Request.Url.Query%>';" />
        <input type="hidden" id="roleId" value="<%=Request.QueryString["roleid"] %>" />
        <input type="hidden" id="appid" value="<%=Request.QueryString["appid"] %>" />
    </div>
        
    <script type="text/javascript">
        window.onload = function(){
            var value = $("#UseMember").val();
            //alert(value);
            if (value && value.length > 0) {
                $.ajax({
                    url: (top.rootdir || "") +"/Controls/SelectMember/GetNames.ashx?values=" + value, type: "get", async: false, cache: false, success: function (txt) {
                        $("#UserName").val(txt);
                    }
                });
            }
        }
        function copy()
        {
            if ($("#ToTpl").val().length == 0)
            {
                alert("请选择要复制到的模板!");
                return false;
            }
            return true;
        }
        function Sel(){
            var myUsers = $("#UseMember").val();
            var myRole =  $("#roleId").val();
            var appid =  $("#appid").val();
            window.location.href="/Controls/SelectMember/Test.aspx?values=" + myUsers + '&roleid=' + myRole + '&appid=' + appid;;
        }

        function getName()
        {
            var value = $("#UseMember").val();
            //alert(value);
            if (value && value.length > 0) {
                $.ajax({
                    url: (top.rootdir || "") +"/Controls/SelectMember/GetNames.ashx?values=" + value, type: "get", async: false, cache: false, success: function (txt) {
                        $("#UseMember").val(txt);
                    }
                });
            }
        }
    </script>
    </form>
</body>
</html>
