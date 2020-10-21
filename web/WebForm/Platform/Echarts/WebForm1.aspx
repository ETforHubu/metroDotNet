<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebForm.Platform.DirectoryCost.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 150px;
            height: 24px;
        }
        .auto-style2 {
            height: 24px;
        }
        .table_list {
    font-size: 12px;
    padding: 1px;
    border-collapse: collapse;
    border: 1px solid #CCCCCC;
    table-layout: fixed;
    color: #000000;
    width: 100%;
}

    .table_list td {
        padding: 5px;
        text-align: center;
        border-right: 1px solid #CCCCCC;
        border-bottom: 1px solid #CCCCCC;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
    }

    .table_list .header {
        color: #444444;
        font-weight: bold;
        font-style: normal;
        line-height: normal;
    }

        .table_list .header td {
            background-color: #E2EEFB;
            text-overflow: clip;
        }

    .table_list a {
        color: Blue;
    }

        .table_list a:hover {
            color: Blue;
            text-decoration: underline;
        }
/*  table_list  end  */
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="table_list">
        <tr class="header">
            <td style="white-space: nowrap;width:20%"  class="auto-style1">名称</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">单位</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">建筑工程费</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">安装工程费</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">设备购置费</td>
            <td style="white-space: nowrap;width:12%" class="auto-style1">工程建设其他费用</td>
            <td style="white-space: nowrap;width:8%" class="auto-style1">合价</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">数量</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">指标</td>
        </tr>
        <asp:Repeater ID="repList" runat="server" >
            <ItemTemplate>
                <tr>     
                    <td>
                         <%--<asp:Label ID="PaperTitle" runat="server"></asp:Label>--%>
                        <asp:HiddenField ID="HiddenField1" Value='<%#Eval("ID")%>' runat="server" />
                        <asp:TextBox ID="txtTitle" Text='<%#Eval("Title")%>' style="width:100%" runat="server"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtUnit" Text=' <%#Eval("Unit")%>' style="width:100%" runat="server"></asp:TextBox>
                       
                    </td>
                    <td>
                        <asp:TextBox ID="txtConstructionCost" Text='<%#Eval("ConstructionCost")%>' style="width:100%" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtInstallCost" Text='<%#Eval("InstallCost")%>' style="width:100%" runat="server"></asp:TextBox>                  
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceCost" Text='<%#Eval("DeviceCost")%>' style="width:100%" runat="server"></asp:TextBox> 
                    </td>
                    <td>
                        <asp:TextBox ID="txtOtherCost" Text='<%#Eval("OtherCost")%>' style="width:100%" runat="server"></asp:TextBox> 
                       
                    </td>
                     <td>
                        合价
                    </td>
                    <td>
                         <asp:TextBox ID="txtQuantity" Text='<%#Eval("Quantity")%>' style="width:100%" runat="server"></asp:TextBox>               
                    </td>
                    <td>
                        指标
                    </td>
                  <%--  <td>
                        <asp:Label ID="UserName" runat="server"></asp:Label>
                    </td>
                     <td>
                        <asp:HiddenField ID="HiddenField1" Value='<%#Eval("Signup_Id")%>' runat="server" />
                        <asp:CheckBox ID="CheckPass" runat="server"></asp:CheckBox>
                    </td>--%>
             
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Button" Width="106px" />
    
    </div>
    </form>
</body>
</html>
