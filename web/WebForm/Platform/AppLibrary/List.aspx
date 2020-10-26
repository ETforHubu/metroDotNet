<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebForm.Platform.AppLibrary.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
<meta name="description" content="Modern admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard."/>
<meta name="keywords" content="admin template, modern admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard"/>
<meta name="author" content="PIXINVENT"/>
<title></title>
<link rel="apple-touch-icon" href="../app-assets/images/ico/apple-icon-120.png"/>
<link rel="shortcut icon" type="image/x-icon" href="../app-assets/images/ico/favicon.ico"/>

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/vendors.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/forms/icheck/icheck.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/forms/icheck/custom.css"/>
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap-extended.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/css/colors.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/css/components.min.css"/>
<!-- END: Theme CSS-->

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css" href="../app-assets/css/core/menu/menu-types/horizontal-menu.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/css/core/colors/palette-gradient.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/css/pages/invoice.min.css"/>
<!-- END: Page CSS-->
<link rel="stylesheet" type="text/css" href="../app-assets/fonts/feather/style.min.css"/>
<link rel="stylesheet" type="text/css" href="../app-assets/fonts/line-awesome/css/line-awesome.min.css"/>
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="../../../assets/css/style.css"/>
<!-- END: Custom CSS-->
</head>
<body>
    <%--新页面--%>
    <div class="col-12">
        <div class="card" style="min-height:650px;">
            <div class="card-head">
                <div class="card-header">
                	<h4 class="card-title">应用程序库</h4>
                	<a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
        			<div class="heading-elements">
                        <button class="btn btn-primary btn-sm"><i class="ft-plus white"></i>创建应用</button>
                        <button id="btnSearchDrop1" type="button" data-toggle="dropdown" class="btn btn-success btn-sm" ><i class="ft-settings white"></i></button>
	                    <span aria-labelledby="btnSearchDrop1" class="dropdown-menu mt-1 dropdown-menu-right">
	                        <a href="#" class="dropdown-item"><i class="la la-trash"></i>  删 除</a>
	                        <a href="#" class="dropdown-item"><i class="la la-refresh"></i>  刷 新</a>
	                    </span>
                	</div>
                </div>
            </div>
            <div class="card-content">
                <div class="card-body">
	                <!-- Invoices List table -->
	                <div class="table-responsive">
	                <table id="invoices-list" class="table table-white-space table-bordered row-grouping1 display no-wrap icheck table-middle">
				        <thead>
				            <tr>
				                <th><input type="checkbox" class="input-chk-all"/></th>
				                <th>应用名称</th>
				                <th>应用地址</th>
				                <th>应用类型</th>
				                <th>操作</th>
				            </tr>
				        </thead>
				        <tbody>
                            <%
                            RoadFlow.Platform.Dictionary bdict = new RoadFlow.Platform.Dictionary();
                            foreach (var app in AppList)
                            {
                            %>
				        	<!-- PAID -->
				            <tr>
				                <td><input type="checkbox" class="input-chk"/></td>
				                <td><%=app.Title %></td>
				                <td><%=app.Address %></td>
				                <td><%=bdict.GetTitle(app.Type) %></td>
				                <td>
				                	<span class="dropdown">
				                        <button id="btnSearchDrop2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" class="btn btn-primary dropdown-toggle dropdown-menu-right"><i class="ft-settings"></i></button>
				                        <span aria-labelledby="btnSearchDrop2" class="dropdown-menu mt-1 dropdown-menu-right">
				                            <a href="Edit.aspx?id='<%=app.ID %>'" class="dropdown-item"><i class="la la-pencil"></i> 编辑</a>
				                            <a href="#" class="dropdown-item"><i class="la la-trash"></i> 删除</a>
				                        </span>
				                    </span>
				                </td>
				            </tr> 
                             
                           <%}%> 
				        </tbody>
				        <tfoot>
				            <tr>
				                <th><input type="checkbox" class="input-chk-all"/></th>
				                <th>应用名称</th>
				                <th>应用地址</th>
				                <th>应用类型</th>
				                <th>操作</th>
				            </tr>
				        </tfoot>
					</table>
					</div>
					<!--/ Invoices table -->
				</div>
            </div>
        </div>
    </div>
    <%--新页面--%>
     <div style="display:none;">
    <form id="form1" runat="server">
    <div class="querybar">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td>
                    应用名称：<input type="text" class="mytext" id="Title1" name="Title1" runat="server" style="width:150px" />
                    应用地址：<input type="text" class="mytext" id="Address" name="Address" runat="server" style="width:220px" />
                    <input type="submit" name="Search" value="&nbsp;&nbsp;查&nbsp;询&nbsp;&nbsp;" class="mybutton" />
                    <input type="button" onclick="window.location.href = 'Edit.aspx'" value="添加应用" class="mybutton" />
                    <asp:Button ID="Button1" runat="server" Text="删除所选" OnClientClick="return del();" CssClass="mybutton" />
                </td>
            </tr>
        </table>
    </div>
    <table class="listtable">
        <thead>
            <tr>
                <th width="3%" sort="0"><input type="checkbox" onclick="checkAll(this.checked);" style="vertical-align:middle;" /></th>
                <th width="20%">应用名称</th>
                <th width="47%">应用地址</th>
                <th width="20%">应用分类</th>
                <th width="10%" sort="0">操作</th>
            </tr>
        </thead>
        <tbody>
        <%
        RoadFlow.Platform.Dictionary bdict = new RoadFlow.Platform.Dictionary();
        foreach (var app in AppList)
        {
        %>
            <tr>
                <td><input type="checkbox" value="<%=app.ID %>" name="checkbox_app"  /></td>
                <td><%=app.Title %></td>
                <td><%=app.Address %></td>
                <td><%=bdict.GetTitle(app.Type) %></td>
                <td><a class="editlink" onclick="editApp('<%=app.ID %>')">编辑</a></td>
            </tr>

        <%}%>
        </tbody>
    </table>
    <div class="buttondiv"><asp:Literal ID="Pager" runat="server"></asp:Literal></div>
    </form>
    </div>

    
    <!-- BEGIN: Vendor JS-->
    <script src="../app-assets/vendors/js/vendorsNew.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="../app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="../app-assets/vendors/js/charts/jquery.sparkline.min.js"></script>
    <script src="../app-assets/vendors/js/tables/jquery.dataTables.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="../app-assets/js/core/app-menu.min.js"></script>
    <script src="../app-assets/js/core/app.min.js"></script>
    <script src="../app-assets/js/scripts/customizer.min.js"></script>
    <script src="../app-assets/js/scripts/footer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="../app-assets/js/scripts/ui/breadcrumbs-with-stats.min.js"></script>
    <script src="../app-assets/js/scripts/pages/invoices-list.min.js"></script>
    <!-- END: Page JS-->
    <script type="text/javascript">
        var appid = '<%=Request.QueryString["AppID"]%>';
        var iframeid = '<%=Request.QueryString["Iframeid"]%>';
        var typeid = '<%=Request.QueryString["TypeID"]%>';
        var dialog = top.mainDialog;
        var mainDialog = new RoadUI.Window();
        //var mainDialog = new RoadUI.Window();
        function editApp(id) {
            window.location.href = "Edit.aspx?id=" + id;
        }
        function edit(id)
        {
            mainDialog.open({ id: "window_" + appid.replaceAll('-', ''), title: (id ? "编辑" : "添加") + "应用程序", width: 700, height: 380, url: '/Platform/AppLibrary/Edit.aspx?id=' + (id || "") + '<%=Query1%>', openerid:iframeid });
        }
        function checkAll(checked)
        {
            $("input[name='checkbox_app']").prop("checked", checked);
        }
        function del()
        {
            if ($(":checked[name='checkbox_app']").size() == 0)
            {
                alert("您没有选择要删除的项!");
                return false;
            }
            return confirm('您真的要删除所选应用吗?');
        }
    </script>
</body>
</html>
