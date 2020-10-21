using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForm.Platform.Members
{
    /// <summary>
    /// Tree2 的摘要说明
    /// </summary>
    public class Tree2 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            context.Response.Write("[{\"id\": \"04F12BEB-D99D-43DF-AC9A-3042957D6BDA\",\"parentID\": \"00000000-0000-0000-0000-000000000000\",\"title\": \"学员管理\",\"ico\": \"/images/ico/icon_site.gif\",\"link\": \"\",\"type\": \"1\",\"hasChilds\": \"1\",\"childs\": [{\"id\": \"ca060584-4930-4586-b68d-3f4e3d173f89\",\"parentID\": \"04F12BEB-D99D-43DF-AC9A-3042957D6BDA\",\"title\": \"学员骨干\",\"ico\": \"\",\"link\": \"\",\"type\": \"1\",\"hasChilds\": \"1\",\"childs\": []}]}]");
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