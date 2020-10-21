using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace WebForm.Platform.Resources
{
    /// <summary>
    /// Down 的摘要说明
    /// </summary>
    public class Down : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string fN = context.Request.Form["fileName"];
            string fileName = context.Server.MapPath("File/") + fN;
         

            context.Response.Write(fileName);

            //context.Response.Write(fileName);
            //context.Response.ContentType = "application/octet-stream";
            //string fileName = context.Server.UrlDecode(context.Request.Form["fileName"]);
            //context.Response.AddHeader("Content-disposition", "attachment; filename=" + fileName);
            //context.Response.WriteFile(fileName);

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