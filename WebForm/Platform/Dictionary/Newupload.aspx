<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newupload.aspx.cs" Inherits="WebForm.Platform.Dictionary.Newupload" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head runat="server">
    <meta charset="UTF-8">
    <title>WebUploader演示</title>
    <link href="../../Styles/webuploader.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="当前存储路径"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUpload" runat="server" style="z-index: 1; left: 10px; top: 35px; position: absolute"></asp:TextBox>
  
    <div id="wrapper">
        <div id="container">
            <!--头部，相册选择和格式选择-->

            <div id="uploader">
                <div class="queueList">
                    <div id="dndArea" class="placeholder">
                        <div id="filePicker"></div>
                        <p>或将文件拖到这里，单次最多可选300个文件</p>
                    </div>
                </div>
                <div class="statusBar" style="display:none;">
                    <div class="progress">
                        <span class="text">0%</span>
                        <span class="percentage"></span>
                    </div><div class="info"></div>
                    <div class="btns">
                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="webuploader.js" type="text/javascript"></script>
    <script src="upload.js" type="text/javascript"></script>
</body>
</html>

