using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RoadFlow.Data.Model;

namespace WebForm
{
    public partial class BatchEdit : System.Web.UI.Page
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
                List<CExamProfession> pro = new List<CExamProfession>();
                for (int i = 0; i < 10; i++)
                {
                    CExamProfession newPro = new CExamProfession();
                    newPro.ProfessionId = i;
                    newPro.ProfessionName = "工种" + i.ToString();
                    pro.Add(newPro);
                }
                repList.DataSource = pro;
                repList.DataBind();
            }
            catch (Exception ex)
            {
                //MsgBox("数据加载失败！" + ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = 0;
            for (int i = 0; i < repList.Items.Count; i++)
            {
                a = a + 1;
            }
            string result = "";
            result = "<script language='javascript'>alert('" + a.ToString() + "');</script>";
            Response.Write(result);
        }
    }
}