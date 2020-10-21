<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Down.aspx.cs" Inherits="WebForm.Platform.Resources.imgDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  

     <select runat="server" id="EffectiveDateSel"  onchange="DispayPrice();">
 
      </select>
			
			

        <input type="text" id="firstname" style="width:400px;visibility:hidden"/>
        <br />
        <br />

        <span id="Down"></span>

    </div>
    </form>
     <script>
        $(function () {
            //alert("hello!");

            //$("#EffectiveDateSel").append('<option value="121">上海市</option>');
            //$("#EffectiveDateSel").append('<option value="221">北京市</option>');
            $.ajax({ 
                url: "GetFiles.ashx", 
                type: "post", 
                data: "", 
                dataType: "text", 
                async: false, 
                cache: false, 
                success: function (txt)
                {
                    //alert(txt);
                    $("#EffectiveDateSel").append(txt);
                }
            });
        });
        function DispayPrice()
        {
            var nSel = document.getElementById("EffectiveDateSel");
            var index = nSel.selectedIndex; // 选中索引
            var text = nSel.options[index].text; // 选中文本
            var value = nSel.options[index].value;
            var file;
            $("#firstname").val("");
		    //document.getElementById("cityse").innerHTML = value;
		    //document.getElementById("firstname").value = value;
		    $.ajax({
		        url: "DownFile.ashx",
		        type: "post",
		        data: { "fileName": value},
		        dataType: "text",
		        async: false,
		        cache: false,
		        success: function (txt) {
		            file ="获取 "+ txt + " 文件成功！";
		            //alert(file);
		            $("#firstname").val(txt);
		            $("#Down").html("<a href='Handler1.ashx?fileName=" + txt + "'>下载</a>");
		        }
		    });
 
        }
</script>

</body>
</html>
