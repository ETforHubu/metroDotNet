using RoadFlow.Data.MSSQL;
using RoadFlow.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.Dictionary
{
    public partial class NewUploadTwo : System.Web.UI.Page
    {
        SqlHelper sqlHelper = new SqlHelper();
        FileBLL fileBLL = new FileBLL();
        static int fid;
        static string fpath;
        protected void Page_Load(object sender, EventArgs e)
        {
            fpath = Request.QueryString["value"];
            //string a = "";
            //string psw = fpath;  //需要显示的变量
            //a = "<script language='javascript'>alert('" + psw + "');</script>";
            //Response.Write(a);
            //Response.End();
            string sql = "select id from FileModel where path='" + fpath + "' order by id desc ";
            fid = sqlHelper.executeScalar(sql);
            Global.g_fid = fid;
            Global.g_fpath = fpath;
            string value = Request.QueryString["value"];
            if (value != null)
            {
                this.storePath.Value = Request.QueryString["value"].Replace('/', '\\');
                string FilePath = Server.MapPath("/") + Request.QueryString["value"].Replace('/', '\\');
                Global.g_storePath = Request.QueryString["value"].Replace('/', '\\'); ;
                this.fullPath.Value = FilePath;
            }
            else
            {
                this.storePath.Value = "资源管理系统";
                Global.g_storePath = "资源管理系统";
                this.fullPath.Value = Server.MapPath("/") + "资源管理系统";
            }
        }
    }
}