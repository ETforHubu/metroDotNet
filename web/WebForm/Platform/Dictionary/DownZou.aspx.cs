using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.Dictionary
{
    public partial class DownZou : Common.BasePage
    {
        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        RoadFlow.Data.Model.Directory directory = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            ////获得当前的ID
            //string a = "";
            //string psw = id;  //需要显示的变量
            //a = "<script language='javascript'>alert('" + psw + "');</script>";
            //Response.Write(a);
            //Response.End();
            this.Code.Attributes.Add("validate_url", "CheckCode.ashx?id=" + id);
            if (id.IsGuid())
            {
                directory = bdirectory.Get(id.ToGuid());
            }
            if (directory == null)
            {
                directory = bdirectory.GetRoot();
            }
            if (directory != null)
            {
                this.Title1.Value = directory.Title;
                this.Code.Value = directory.Code;
                this.Values.Value = directory.Value;
                this.Note.Value = directory.Note;
                this.Other.Value = directory.Other;
            }
        }
    }
}