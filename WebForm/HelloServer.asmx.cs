using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WeChatServer
{
    /// <summary>
    /// HelloServer 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
     [System.Web.Script.Services.ScriptService]
    public class HelloServer : System.Web.Services.WebService
    {

        [WebMethod]
        public int[] Name(int a, int b)
        {
            RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
            List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetByTitle();
            string name = listdirectory[0].Title;
            return new int[] { a,b};
        }

        [WebMethod]
        public string Title(string title)
        {
            RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
            List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetByTitle();
            Guid id = listdirectory[0].ID;
            return id.ToString();
        }

        [WebMethod]
        public string TempJson(string tempId)
        {
            RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
            List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetChilds(new Guid("27ffcf6a-ea64-4a2d-a3fe-2f9c3bb09071"));
            string strJson = ToJson(listdirectory);
            return strJson;
        }

        public static string ToJson(object obj)
        {
            return NewtonsoftJson(obj);
        }

        public static string NewtonsoftJson(object obj)
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(obj, Newtonsoft.Json.Formatting.None);
        }

    }
}
