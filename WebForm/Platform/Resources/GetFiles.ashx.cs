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
    public class GetFiles : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            StringBuilder options = new StringBuilder();
            //options.AppendFormat("<option value=\"{0}\" {1}>{2}</option>", "121", "selected", "上海市");
            //options.AppendFormat("<option value=\"{0}\" {1}>{2}</option>", "221", "selected", "北京市");
            //options.AppendFormat("<option value=\"{0}\" {1}>{2}</option>", "321", "selected", "武汉市");
            //string[] name = Directory.GetFiles(context.Server.MapPath("File"));
            string[] name = Directory.GetFiles(context.Server.MapPath("~/") + "File");
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