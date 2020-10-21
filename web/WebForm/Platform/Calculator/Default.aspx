<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForm.Platform.Calculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="querybar">
    <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
            <td style="width:60%">
                线路名称：<input type="text" class="mytext" id="Name" name="Name" runat="server" />
                线路里程（km）：<input type="text" class="mytext" id="Length" name="Length" runat="server" />
                车站数：<input type="text" class="mytext" id="StationNumber" name="StationNumber" runat="server" />
                隧道断面：<input type="text" class="mytext" id="Tunnel" name="Tunnel" runat="server" />
                初期列车（列）：<input type="text" class="mytext" id="Compartment" name="Compartment" runat="server" />
                <input type="submit" name="Search" value="&nbsp;&nbsp;测&nbsp;算&nbsp;&nbsp;" class="mybutton" />

            </td>
        </tr>
    </table>
</div>
<table class="listtable">
    <thead>
        <tr>
            <th width="10%" sort="0">编号</th>
            <th width="10%">工程名称</th>
            <th width="10%">单位</th>
            <th width="10%">数量</th>
            <th width="10%">建筑工程费</th>
            <th width="10%">安装工程费</th>
            <th width="10%">设备购置费</th>
            <th width="10%">工程建设其他费用</th>
            <th width="10%">合价</th>
            <th width="10%">指标</th>
        </tr>
    </thead>
    <tbody>
    <%
    foreach (var user in UserList)
    { %>
        <tr>
            <td><%=user.SNumber %></td>
            <td><%=user.Title %></td>
            <td><%=user.Unit %></td>
            <td><%=user.Quantity %></td>
            <td><%=user.ConstructionCost %></td>
            <td><%=user.InstallCost %></td>
            <td><%=user.DeviceCost %></td>
            <td><%=user.OtherCost %></td>
            <td><%=user.TotalCost %></td>
            <td><%=user.Quota %></td>
        </tr>
    <%}%>
    </tbody>
</table>
<div class="buttondiv"></div>
</form>
<script type="text/javascript">
</script>
</body>
</html>
