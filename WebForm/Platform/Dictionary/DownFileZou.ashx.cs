using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForm.Platform.Dictionary
{
    /// <summary>
    /// DownFileZou 的摘要说明
    /// </summary>
    public class DownFileZou : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string ValuesZou = context.Request.Form["ValuesZou"];
            string fN = context.Request.Form["fileName"];
            string fullFileName = ValuesZou + "/" + fN;
            context.Response.Write(fullFileName);
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