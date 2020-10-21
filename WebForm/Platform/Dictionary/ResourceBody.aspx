<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourceBody.aspx.cs" Inherits="WebForm.Platform.Dictionary.ResourceBody" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
 <table class="listtable">
        <thead>
            <tr>
                <th width="45%">文件夹</th>
                <th width="10%" sort="0">详细</th>
            </tr>
        </thead>
        <tbody>
            <%foreach(System.Data.DataRow dr in Dt.Rows){ %>
            <tr>
                <td><%=dr["title"] %></td>
                <td><a class="viewlink" href="javascript:void(0);" onclick="detail('<%=dr["ID"] %>');return false;">查看</a></td>
            </tr>
            <%} %>
        </tbody>
    </table>
</body>
</html>
