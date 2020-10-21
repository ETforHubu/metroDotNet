<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="WebForm.Platform.Resources.upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <table id="Tab__01" width="800" height="500" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <img src="../../images/index_r1_c1.gif" width="800" height="108" alt=""/></td>
                </tr>
                <tr>
                    <td style="height: 370px">
                        <table align="center" cellpadding="0" cellspacing="0" style="width: 600px; height: 360px">
                            <tr>
                                <td valign="top" style="width: 461px; height: 228px">
                                    <table width="437" height="148" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="4" align="center" valign="bottom" style="height: 26px">&nbsp;<asp:Label ID="LblMessage" runat="server" Width="116px" ForeColor="#FF0033" Font-Bold="True" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" align="center" valign="top" style="height: 56px">
                                                <asp:Panel ID="Pan_UpFile" runat="server" Height="300px" ScrollBars="Auto" Width="500px">
                                                    <table id="Tab_UpDownFile" runat="server" cellpadding="0" cellspacing="0" enableviewstate="true">
                                                        <tr>
                                                            <td style="width: 100px; height: 30px">
                                                              <%--  <asp:FileUpload ID="FileUpload1" runat="server" Width="227px" Height="20px" />--%>

                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="50" style="width: 335px">&nbsp;<asp:ImageButton ID="ImgBtnAdd" runat="server" ImageUrl="~/images/tj1.gif"
                                                OnClick="ImgBtnAdd_Click" /></td>                
                                        </tr>
                                        <tr>
                                            <td height="30" style="width: 335px">
                                                <asp:ImageButton ID="ImgUpFile" runat="server" ImageUrl="~/images/sc2.gif"
                                                    OnClick="ImgUpFile_Click" />
                                            </td>
                                            
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>              
            </table>
        </div>
    </form>
</body>
</html>
