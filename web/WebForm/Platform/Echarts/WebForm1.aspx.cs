using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.DirectoryCost
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeaterData();
            }
        }
        /// <summary>
        /// 绑定Repeater数据
        /// </summary>
        private void BindRepeaterData()
        {
            try
            {
                List<RoadFlow.Data.Model.Directory> listDirectory = new List<RoadFlow.Data.Model.Directory>();
              
                RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();

                listDirectory = bdirectory.GetAll();
     
                repList.DataSource = listDirectory;
                repList.DataBind();
            }
            catch (Exception ex)
            {
                string a = "数据加载失败！" + ex.Message;
                if (!String.IsNullOrEmpty(a))
                {
                    a = "<script language='javascript'>alert('" + a + "');</script>";
                    Response.Write(a);   //HttpContext.Current.Response.Write(a);
                    //Response.End();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < repList.Items.Count; i++)
            {
                int a = 0;
                a = a + 1;
          
            }
        }
    }
}