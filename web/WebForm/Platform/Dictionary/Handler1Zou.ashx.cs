using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForm.Platform.Dictionary
{
    /// <summary>
    /// Handler1Zou 的摘要说明
    /// </summary>
    public class Handler1Zou : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/octet-stream";

            //string fileName = context.Server.UrlDecode("haha.jpg");
            string fileName = context.Server.UrlDecode(context.Request.QueryString["fileName"]);
            //添加报文头,只有在报文里添加了"Content-disposition", "attachment; filename="打开文件的时候就会以下载文件的形式弹出，
            //如果不加这个报文头的话，就是将"/images/111.jpg"这个文件写入到浏览器，就是直接在浏览器中呈现出图片了
            //attachment; filename="+ fileName其实就是下载的时候将111.jpg这个文件取个“haha”的别名

            context.Response.AddHeader("Content-disposition", "attachment; filename=" + fileName);

            //要下载的文件名
            //context.Response.WriteFile("/Images/111.jpg");
            string fullFileName = context.Server.MapPath("~/")  + fileName;
            context.Response.WriteFile(fullFileName);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}