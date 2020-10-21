<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DirectoriesBody.aspx.cs" Inherits="WebForm.Platform.DirectoryCost.DirectoriesBody" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

        <input type="text"  id="Title1" name="Title1" class="mytext" runat="server"  maxlength="100" style="display:none;width: 70%" />

        <input type="text" id="costID" name="costID" class="mytext" runat="server"  maxlength="100" style="display:none;width: 70%" />
        <input type="text" id="SN" name="SN" class="mytext" runat="server"  maxlength="100" style="display:none;width: 70%" />
        <br />
        <table class="table_list">
        <tr class="header">
            <td style="white-space: nowrap;width:5%"  class="auto-style1">编号</td>
            <td style="white-space: nowrap;width:16%"  class="auto-style1">名称</td>
            <td style="white-space: nowrap;width:6%" class="auto-style1">单位</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">建筑工程费</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">安装工程费</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">设备购置费</td>
            <td style="white-space: nowrap;width:12%" class="auto-style1">工程建设其他费用</td>
            <td style="white-space: nowrap;width:12%" class="auto-style1">合价</td>
            <td style="white-space: nowrap;width:10%" class="auto-style1">数量</td>
            <td style="white-space: nowrap;width:9%" class="auto-style1">指标</td>
        </tr>
        <asp:Repeater ID="repList" runat="server" OnItemDataBound="repList_ItemDataBound">
            <ItemTemplate>
                <tr>   
                    <td>
                         <%#Eval("SNumber")%>
                       
                    </td>  
                    <td>
                         <%--<asp:Label ID="PaperTitle" runat="server"></asp:Label>--%>
                        <asp:HiddenField ID="HiddenField4" Value='<%#Eval("SNumber")%>' runat="server" />
                        <asp:HiddenField ID="HiddenField1" Value='<%#Eval("ID")%>' runat="server" />
                        <asp:HiddenField ID="HiddenField2" Value='<%#Eval("ParentID")%>' runat="server" />
                        <asp:HiddenField ID="HiddenField3" Value='<%#Eval("Title")%>' runat="server" />
                        <asp:Label ID="lbTitle" style="width:100%" runat="server"><%#Eval("Title")%></asp:Label>
                        
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
                        <%#Eval("TotalCost")%>
                    </td>
                    <td>
                         <asp:TextBox ID="txtQuantity" Text='<%#Eval("Quantity")%>' style="width:100%" runat="server"></asp:TextBox>               
                    </td>
                    <td>
                        <%#Eval("Quota")%>
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
        <div style="width: 95%; margin: 10px auto 10px auto; text-align: center;">
            <input type="submit" class="mybutton" name="Save" value="保存" onclick="return new RoadUI.Validate().validateForm(document.forms[0]);" />
            <input type="submit" class="mybutton" name="Delete" value="删除" onclick="return confirm('您真的要删除该文件夹及其所有子文件夹吗?');" />
        </div>
    </form>
</body>
</html>
