using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.IO;

namespace WebForm.Platform.Resources
{
    /// <summary>
    /// GetFiles 的摘要说明
    /// </summary>
    public class GetFilesZou: IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            StringBuilder options = new StringBuilder();
            string fN = context.Request.Form["ValuesZou"];
            context.Response.Write(fN);
            //string[] name = Directory.GetFiles(context.Server.MapPath("~/") + fN);
            //foreach (string s in name)
            //{
            //    //将文件名添加到select中
            //    options.AppendFormat("<option value=\"{0}\" >{1}</option>", Path.GetFileName(s), Path.GetFileName(s));

            //}
            //context.Response.Write(options.ToString());
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