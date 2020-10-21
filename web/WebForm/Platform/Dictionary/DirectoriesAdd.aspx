<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DirectoriesAdd.aspx.cs" Inherits="WebForm.Platform.Dictionary.DirectoriesAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <table cellpadding="0" cellspacing="1" border="0" width="95%" class="formtable">
        <tr>
            <th style="width: 120px;">名称：</th>
            <td><input type="text" id="Title1" name="Title1" class="mytext" runat="server" maxlength="100" style="width:70%" /></td>
        </tr>
        <tr>
            <th style="width:80px;">数量：</th>
            <td><input type="text" id="Quantity" name="Quantity" class="mytext" runat="server"  style="width:160px;" /></td>
        </tr>
         <tr>
            <th style="width:80px;">单位：</th>
            <td><input type="text" id="Unit" name="Unit" class="mytext" runat="server" maxlength="100" style="width:70%" /></td>
        </tr>
        <tr>
                <th class="auto-style1">建筑工程费：</th>
                <td class="auto-style2"><input type="text" id="ConstructionCost" name="ConstructionCost" class="mytext" runat="server"  style="width:160px;" /></td>
        </tr>
                <tr>
                <th class="auto-style1">安装工程费：</th>
                <td class="auto-style2"><input type="text" id="InstallCost" name="InstallCost" class="mytext" runat="server" style="width:160px;" /></td>
        </tr>
        <tr>
                <th class="auto-style1">设备购置费：</th>
                <td class="auto-style2"><input type="text" id="DeviceCost" name="DeviceCost" class="mytext" runat="server" style="width:160px;" /></td>
        </tr>
        <tr>
                <th class="auto-style1">工程建设其他费用：</th>
                <td class="auto-style2"><input type="text" id="OtherCost" name="OtherCost" class="mytext" runat="server"  style="width:160px;" /></td>
        </tr>
        <tr>
                <th class="auto-style1">指标：</th>
                <td class="auto-style2"><input type="text" id="Quota" name="Quota" class="mytext" runat="server" style="width:160px;" /></td>
        </tr>
        <tr>
                <th class="auto-style1">编号：</th>
                <td class="auto-style2"><input type="text" id="SNumber" name="SNumber" disabled="disabled" class="mytext" runat="server"  style="width:160px;" /></td>
            </tr>
        <tr style="display:none">
            <th style="width:120px">系统路径：</th>
            <td><input type="text" id="Code" name="Code" class="mytext"  runat="server" maxlength="100" style="width:70%" /></td>
        </tr>
        <tr style="display:none">
            <th style="width:120px;">当前目录：</th>
            <td><input type="text" id="Values" name="Values" class="mytext" runat="server" maxlength="100" style="width:70%" /></td>
        </tr>
        <tr style="display:none">
            <th style="width:80px;">完整路径：</th>
            <td><textarea id="Note" name="Note" class="mytext" runat="server" style="width:90%; height:50px;"></textarea></td>
        </tr>
        <tr style="display:none">
            <th style="width:80px;">备注：</th>
            <td><textarea id="Other" name="Other" class="mytext" runat="server" style="width:90%; height:150px;"></textarea></td>
        </tr>
    </table>
    <div style="width:95%; margin:10px auto 10px auto; text-align:center;">
        <input type="submit" class="mybutton" value="保存" onclick="return new RoadUI.Validate().validateForm(document.forms[0]);" />
        <input type="button" class="mybutton" value="返回" onclick="window.location='DirectoriesBody.aspx<%=Request.Url.Query%>';" />
    </div>
    </form>
</body>
</html>
