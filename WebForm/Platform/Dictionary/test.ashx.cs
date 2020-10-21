using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text;

namespace WebForm.Platform.Dictionary
{
    /// <summary>
    /// test 的摘要说明
    /// </summary>
    public class test : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            StringBuilder options = new StringBuilder();
            string fN = context.Request.Form["ValuesZou"];
            string[] name = Directory.GetFiles(context.Server.MapPath("~/") + fN);
            options.AppendFormat("<option value=\"{0}\" >{1}</option>","", "---请选择");
            foreach (string s in name)
            {
                //将文件名添加到select中
                options.AppendFormat("<option value=\"{0}\" >{1}</option>", Path.GetFileName(s), Path.GetFileName(s));

            }
            context.Response.Write(options.ToString());
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