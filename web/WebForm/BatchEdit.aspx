<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchEdit.aspx.cs" Inherits="WebForm.BatchEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="Button1" runat="server" Text="批量修改" OnClick="Button1_Click" />
  <table class="table_list">
        <tr class="header">
            <td style="width: 15%; white-space: nowrap;">工种</td>
        </tr>
        <asp:Repeater ID="repList" runat="server"  >
            <ItemTemplate>
                <tr>
                    <td title='<%#Eval("ProfessionName")%>'>
                        <%#Eval("ProfessionName")%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </div>
    </form>
</body>
</html>
