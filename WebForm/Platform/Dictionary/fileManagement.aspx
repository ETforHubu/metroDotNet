<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileManagement.aspx.cs" Inherits="WebForm.Platform.Dictionary.fileManagement"  EnableViewState="true"%>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <link href="../../Styles/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .toolbar1 .txt {
                background: none;
                line-height: 33px;
                height: 33px;
                border:0px none none ;
                float: left;
                padding-right: 0px;
                margin-left: 0px;
                border-radius: 3px;
                text-align:center;
                /*behavior: url(js/pie.htc);*/
        }

    </style>
<%--    <script src="../../Scripts/jquery-1.11.1.min.js"></script>--%>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="../../Scripts/selectAll.js"></script>
    <script language="javascript">
        $(function () {
            //导航切换
            $(".imglist li").click(function () {
                $(".imglist li.selected").removeClass("selected")
                $(this).addClass("selected");
            })
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".click").click(function () {
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function () {
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function () {
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function () {
                $(".tip").fadeOut(100);
            });

        });
        function openPWD(i, width, height) {
            window.showModalDialog(i, "", "dialogHeight: " + height + "px; dialogWidth: " + width + "px;dialogTop:px; dialogLeft:px; edge: Raised; center: Yes; help: No; resizable: No; status: No;scroll:No");
        }
    </script>
    
</head>
<body>

    <form id="form1" runat="server">    
        <div runat="server">
            <br />
            <div class="rightinfo">

                <div class="tools">

                    <ul class="toolbar">
                        <li id="deletes" runat="server" style="margin-right: 0px; padding: 0px 0px;">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="btnDeleteRecords" Width="120px" CommandName="btnDeleteRecords" Height="33px" runat="server" Text="批量删除" BackColor="#3EAFE0" BorderColor="#3EAFE0" OnClick="PagerBtnCommand_OnClick" BorderStyle="Solid" BorderWidth="1px" Font-Names="微软雅黑" Font-Size="15px" />
                        </li>
                        <li id="backUpLayer" runat="server" class="click"  style="margin-left:5px;" visible="true"><span>
                            <img src="/..../../images/up.gif"  style="margin-top: 0px;width:20px;height:20px;" /></span><a href="fileManagement.aspx?value=<%=parentFile%>">返回上一级目录</a>
                        </li>
                    </ul>
                    <ul class="toolbar1">
                        <li><span>
                            <img src="/..../../images/ico06.png" style="margin-top: 0px;width:20px;height:20px;" /></span>&nbsp;搜索条件&nbsp;&nbsp;文件名：</li>
                        &nbsp;
                        <li class="txt">
                            <asp:TextBox ID="txtName" CssClass="searchCon" runat="server" Height="33px" Width="100px" BorderColor="#507CD1" BorderWidth="1px"></asp:TextBox>
                         </li>
                        &nbsp;&nbsp;
                        <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="btnSearch" CommandName="search" Width="60px" Height="33px" runat="server" Text="搜索" BackColor="#3EAFE0" BorderColor="#3EAFE0" OnClick="PagerBtnCommand_OnClick" BorderStyle="Solid" BorderWidth="1px" />
                    </ul>
                </div>

                <asp:GridView PageSize="6" Width="100%" RowStyle-Height="40px" HeaderStyle-Height="30px" ID="fileManage" runat="server" BorderWidth="1px" BorderColor="#cccccc" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="fileManage_RowCommand" OnRowDataBound="fileManage_RowDataBound" OnRowDeleting="fileManage_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="" HeaderStyle-Width="8%">
                            <HeaderTemplate>
                                <input id="dels" type="checkbox" onclick="checkAll();" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="del" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="  ">
                                <HeaderTemplate>
                               全选
                            </HeaderTemplate>
                            <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" Width="20px" Height="20px" ImageUrl='<%#getImageUrl(DataBinder.Eval(Container.DataItem,"type").ToString().Trim())%>' />
                            </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="目录名称">
                            <ItemTemplate>
                                <span style=" font-size: 16px;"> 
                             <asp:HyperLink ID="HyperLink1" ForeColor="#3EAFE0"  runat="server"  Visible='<%#DataBinder.Eval(Container.DataItem,"mark").ToString().Equals("0")?true:false %>'  NavigateUrl='<%#getLinkUrl(DataBinder.Eval(Container.DataItem,"path").ToString()) %>' Text='<%#SubString(DataBinder.Eval(Container.DataItem,"fileName").ToString()) %>'></asp:HyperLink>
                                    <asp:LinkButton ID="DownOrInf" ForeColor="#3EAFE0" Visible='<%#getDownOrInfVisible(DataBinder.Eval(Container.DataItem,"type").ToString(),DataBinder.Eval(Container.DataItem,"mark").ToString())%>' runat="server" Text='<%#SubString(DataBinder.Eval(Container.DataItem,"fileName").ToString()) %>' CommandName="DownBtn" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"path") %>' ></asp:LinkButton>&nbsp;&nbsp;&nbsp;
                               <%--    <asp:HyperLink ID="printImage" ForeColor="#3EAFE0" Visible='<%#getPrintVisible(DataBinder.Eval(Container.DataItem,"type").ToString(),DataBinder.Eval(Container.DataItem,"mark").ToString())%>' Target="_blank" NavigateUrl='<%# "imagePrint.aspx?path="+Server.UrlEncode(DataBinder.Eval(Container.DataItem,"path").ToString()) %>'  Text='<%#SubString(DataBinder.Eval(Container.DataItem,"fileName").ToString()) %>' runat="server"></asp:HyperLink>--%>
                                     </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="18%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="type" HeaderText="文件类型" ControlStyle-Width="8%" />
                   <%--<asp:TemplateField HeaderText="上传人">
                            <ItemTemplate>
                                 <asp:HyperLink ID="uploade" ForeColor="#3EAFE0"  runat="server"  Visible="false" Text=""></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <%--<asp:BoundField DataField="uploade" HeaderText="上传人" ControlStyle-Width="8%"/>--%>
                          <asp:BoundField DataField="uploader" HeaderText="上传者" ControlStyle-Width="10%" />
                        <asp:BoundField DataField="time" HeaderText="目录创建时间" ControlStyle-Width="10%" />
                        <asp:BoundField DataField="size" HeaderText="文件大小" ControlStyle-Width="8%"  />

                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <span style="color: #235ee9; font-size: 16px;">                                    
                                    <asp:Image ID="upLoadOrDown" Width="18px" Height="18px" runat="server" ImageUrl='<%#getUpOrDownUrl(DataBinder.Eval(Container.DataItem,"type").ToString())%>' /> 
                                 <%--   <asp:HyperLink ID="upLoad"  Visible='<%#DataBinder.Eval(Container.DataItem,"mark").ToString().Equals("0")?true:false%>'   NavigateUrl='<%# "upLoadWJ.aspx?id=" + DataBinder.Eval(Container.DataItem,"id") + "&path=" +DataBinder.Eval(Container.DataItem,"path") %>'  Text="上传" runat="server">上传</asp:HyperLink>--%>
                                    <asp:LinkButton ID="Down" Visible='<%#DataBinder.Eval(Container.DataItem,"mark").ToString().Equals("0")?false:true%>' runat="server" Text='下载' CommandName="DownBtn" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"path") %>' ></asp:LinkButton>&nbsp;
                                    <asp:HyperLink ID="delete" runat="server">
                                        <img src="/..../../images/t03.png" style="width:18px;height:18px;"  /><asp:Button ForeColor="#507CD1" ID="deleteBtn" CommandName="delete" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"id") %>' runat="server" Text="删除 " />
                                    </asp:HyperLink>
                                </span>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="19%" HorizontalAlign="Center" />
                        </asp:TemplateField>
<%--                        <asp:TemplateField HeaderText="打印">
                            <ItemTemplate>
                                <span style="color: #235ee9; font-size: 16px;"> 
                                    <asp:HyperLink ID="print" Enabled='<%#getPrintVisible(DataBinder.Eval(Container.DataItem,"type").ToString())%>'  Target="_blank"  NavigateUrl='<%# "imagePrint.aspx?path="+Server.UrlEncode(DataBinder.Eval(Container.DataItem,"path").ToString()) %>'  Text="打印" runat="server">打印</asp:HyperLink>  
                                </span>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>--%>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3EAFE0" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EDF6FA" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>  
                <div  class="pagin" style="margin-top:20px;">
                    <div class="message"><span style="display: inline;"><span class="lblRecord">共</span><asp:Label ID="lblRecordCount" CssClass="lblRecord" runat="server" Text="" ForeColor="#056DAE"></asp:Label><span class="lblRecord">条记录，当前显示第&nbsp;</span><asp:Label ID="lblCurrentPage" CssClass="lblRecord" runat="server" Text="1" ForeColor="#056DAE"></asp:Label><span class="lblRecord">页/共</span><asp:Label ID="lbPageCount" CssClass="lblRecord" runat="server" ForeColor="#056DAE" Text=""></asp:Label><span class="lblRecord">页记录</span></span></div>
                    <ul class="paginList">
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Firstpage" CommandName="first" runat="server" Text="首页 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Prevpage" CommandName="prev" runat="server" Text="上一页 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Nextpage" CommandName="next" runat="server" Text="下一页 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                        <li class="paginItem">
                            <asp:Button ForeColor="#ffffff" CssClass="paginItem" ID="Lastpage" CommandName="last" runat="server" Text="末页 " BorderColor="#3EAFE0" BackColor="#3EAFE0" BorderStyle="Solid" BorderWidth="1px" OnClick="PagerBtnCommand_OnClick" /></li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
