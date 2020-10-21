<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeIndex.aspx.cs" Inherits="WebForm.Platform.Members.TreeIndex" %>

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
            roadTree = new RoadUI.Tree({ id: "tree", path: "Tree1.ashx?ischild=1", refreshpath: "TreeRefresh.ashx", onclick: openUrl });
        });
        function openUrl(json)
        {
            var query = "&appid=" + AppID + "&parentid=" + json.parentID + "&type=" + json.type;
            switch (parseInt(json.type)) {
                case 1:
                case 2:
                case 3:
                    parent.frames[1].location = "Body.aspx?id=" + json.id + query;
                    break;
                case 4:
                    parent.frames[1].location = "User.aspx?id=" + json.id + query;
                    break;
            }
            //parent.frames[1].location = "Body.aspx?id=" + json.id + "&appid=" + AppID + "&value=" + json.value;
        }
        function reLoad(id)
        {
            roadTree.refresh(id);
        }
    </script>
</body>
</html>



