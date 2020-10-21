using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace WebForm.Platform.Resources
{
    /// <summary>
    /// DownFile 的摘要说明
    /// </summary>
    public class DownFile : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string fN = context.Request.Form["fileName"];
            context.Response.Write(fN);
            //string fileName = context.Server.MapPath("File/") + fN;
            //context.Response.Write(fileName);
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