<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUploadTwo.aspx.cs" Inherits="WebForm.Platform.Dictionary.NewUploadTwo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../Styles/webuploader.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;当前存储路径：
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="storePath" name="storePath" runat="server"  maxlength="100" style="width: 70%" /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;完整路径：
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="fullPath" name="fullPath" runat="server"  maxlength="100" style="width: 70%" /><br />
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
                    <div class="statusBar" style="display: none;">
                        <div class="progress">
                            <span class="text">0%</span>
                            <span class="percentage"></span>
                        </div>
                        <div class="info"></div>
                        <div class="btns">
                            <div id="filePicker2"></div>
                            <div class="uploadBtn">开始上传</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="webuploader.js" type="text/javascript"></script>
        <script src="upload.js" type="text/javascript"></script>
    </form>
</body>
</html>
