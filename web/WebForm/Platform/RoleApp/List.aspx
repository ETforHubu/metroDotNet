<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebForm.Platform.RoleApp.List" %>

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
                <td>
                    角色名称：<input type="text" class="mytext" id="Name" name="Name" value="" runat="server" />
                    <input type="submit" name="Search" value="&nbsp;&nbsp;查&nbsp;询&nbsp;&nbsp;" class="mybutton" />
                    <input type="button" name="addrole" value="添加角色" onclick="addApp();" class="mybutton" />
                </td>
            </tr>
        </table>
    </div>
    <table class="listtable">
        <thead>
            <tr>
                <th width="30%">角色名称</th>
                <th width="35%">成员</th>
                <th width="15%">备注</th>
                <th width="20%" sort="0"></th>
            </tr>
        </thead>
        <tbody>
        <% 
            RoadFlow.Platform.Organize org = new RoadFlow.Platform.Organize();
            foreach (var role in RoleList)
            {
        %>
                <tr>
                    <td><%=role.Name %></td>
                    <td><%=org.GetNames(role.UseMember) %></td>
                    <td><%=role.Note %></td>
                    <td><%--<a class="editlink" href="javascript:void(0);" onclick="setApp('<%=role.ID %>');">设置应用</a>--%>
                        <a class="editlink"onclick="setuApp('<%=role.ID %>');">设置应用</a>
                        <a class="editlink"onclick="editApp('<%=role.ID %>');">编辑角色</a>
<%--                        <a class="editlink" href="javascript:void(0);" onclick="edit('<%=role.ID %>');">编辑角色</a>--%>
                    </td>
                </tr>
        <% }%>
        </tbody>
    </table>
    </form>

        <script type="text/javascript">
        var appid = '<%=Request.QueryString["appid"]%>';
        //var tabid = '<%=Request.QueryString["tabid"]%>';
        var tabid = "tab" + appid.replaceAll('-', '');
        var mainDialog = new RoadUI.Window();
        function setApp(id)
        {
            mainDialog.open({
                url:  '/Platform/RoleApp/SetApp.aspx?roleid=' + id + '&appid=' + appid,
                width: 980, height: 530, title: "设置角色应用"
            });
        }

        function setuApp(id) {
            //alert(id);
            window.location.href = "SetApp.aspx?roleid=" + id + '&appid=' + appid;
        }
        function edit(id)
        {
            
            mainDialog.open({
                url: '/Platform/RoleApp/EditRole.aspx?roleid=' + id + '&appid=' + appid,
                width: 800, height: 300, title: "编辑角色", openerid: tabid
            });
        }
        function editApp(id) {
            window.location.href = "EditRole.aspx?roleid=" + id + '&appid=' + appid;
        }
        function addApp(id) {
            window.location.href = "AddRole.aspx?appid=" + appid;
        }
        function add()
        {
            mainDialog.open({
                url: '/Platform/RoleApp/AddRole.aspx?appid=' + appid,
                width: 800, height: 300, title: "添加角色", openerid: tabid
            });
        }
    </script>
</body>
</html>
