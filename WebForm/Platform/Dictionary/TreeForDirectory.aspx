<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeForDirectory.aspx.cs" Inherits="WebForm.Platform.Dictionary.TreeForDirectory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div id="tree"></div>
    </form>
    <script type="text/javascript">
        var AppID = '<%=Request.QueryString["appid"]%>';
        var roadTree = null;
        $(function ()
        {
            //alert("treeZou!");
            roadTree = new RoadUI.Tree({ id: "tree", path: "Tree1Zou.ashx?ischild=1", refreshpath: "TreeRefreshZou.ashx", onclick: openUrl });
        });
        function openUrl(json)
        {
            parent.frames[1].location = "DirectoriesBody.aspx?id=" + json.id + "&appid=" + AppID + "&value=" + json.value;
        }
        function reLoad(id)
        {
            roadTree.refresh(id);
        }
    </script>
</body>
</html>

