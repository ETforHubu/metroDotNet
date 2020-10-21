﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForm.Platform.Dictionary
{
    /// <summary>
    /// TreeRefreshZou 的摘要说明
    /// </summary>
    public class TreeRefreshZou : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string id = context.Request.QueryString["refreshid"];
            Guid gid;
            if (!id.IsGuid(out gid))
            {
                context.Response.Write("[]");
                return;
            }
            System.Text.StringBuilder json = new System.Text.StringBuilder("[", 1000);
            RoadFlow.Platform.Directory BDirectory = new RoadFlow.Platform.Directory();
            var childs = BDirectory.GetChilds(gid).OrderBy(p => p.Sort);
            int i = 0;
            int count = childs.Count();
            foreach (var child in childs)
            {
                var hasChilds = BDirectory.HasChilds(child.ID);
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", child.ID);
                json.AppendFormat("\"parentID\":\"{0}\",", child.ParentID);
                json.AppendFormat("\"title\":\"{0}\",", child.Title);
                json.AppendFormat("\"value\":\"{0}\",", child.Value);
                json.AppendFormat("\"type\":\"{0}\",", hasChilds ? "1" : "2");
                json.AppendFormat("\"ico\":\"{0}\",", "");
                json.AppendFormat("\"hasChilds\":\"{0}\",", hasChilds ? "1" : "0");
                json.Append("\"childs\":[");
                json.Append("]");
                json.Append("}");
                if (i++ < count - 1)
                {
                    json.Append(",");
                }
            }
            json.Append("]");
            context.Response.Write(json.ToString());
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