using RoadFlow.Utility;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.Dictionary
{
    public partial class Body : Common.BasePage
    {
        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        RoadFlow.Data.Model.Directory directory = null;
        SqlHelper sqlHelper = new SqlHelper();
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
            if (IsPostBack && directory != null)
            {
                string refreshID = directory.ParentID == Guid.Empty ? directory.ID.ToString() : directory.ParentID.ToString();
                //string a = "";
                //a = refreshID;
                //a = "<script language='javascript'>alert('" + a + "');</script>";
                //Response.Write(a);
                //Response.End();

                //删除
                if (!Request.Form["Delete"].IsNullOrEmpty())
                {
                    if (directory.ParentID.ToString() != "00000000-0000-0000-0000-000000000000")
                    {
                        string values = Request.Form["Values"];
                        string newvalue = Server.MapPath("/") + "/" + values;
                        int i = bdirectory.DeleteAndAllChilds(directory.ID);
                        string sql = "DELETE FROM [dbo].[FileModel] WHERE path like '%" + values + "%'";
                        sqlHelper.executeNonQuery(sql);
                        bdirectory.RefreshCache();
                        if (Directory.Exists(newvalue))
                        {
                            Directory.Delete(newvalue, true);
                        }
                        if (File.Exists(newvalue))
                        {
                            Directory.Delete(newvalue, true);
                        }

                        RoadFlow.Platform.Log.Add("删除了存储目录及其下级共" + i.ToString() + "项", directory.Serialize(), RoadFlow.Platform.Log.Types.存储目录);
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('删除成功!');parent.frames[0].reLoad('" + refreshID + "');window.location='BodyZou.aspx?id=" + directory.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('不能删除该目录!');parent.frames[0].reLoad('" + refreshID + "');window.location='BodyZou.aspx?id=" + directory.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';", true);
                    }

                }
                //保存
                if (!Request.Form["Save"].IsNullOrEmpty())
                {
                    string title = Request.Form["Title1"];
                    string code = Request.Form["Code"];
                    string values = Request.Form["Values"];
                    string note = Request.Form["Note"];
                    string other = Request.Form["Other"];
                    decimal quantity = Convert.ToDecimal(Request.Form["Quantity"]);
                    string oldXML = directory.Serialize();
                    string newvalue = values.Substring(0, values.LastIndexOf('/') + 1) + title;

                    string oldpath = Server.MapPath("/") + "/" + values;
                    string newpath = Server.MapPath("/") + "/" + newvalue;

                    string sql1 = "select id from FileModel where path='" + values + "' order by id desc ";
                    int id1 = sqlHelper.executeScalar(sql1);
                    string sql = null;
                    SqlParameter[] sqlParameter = null;
                    if (File.Exists(oldpath))
                    {
                        File.Move(oldpath, newpath);
                        sql = "update FileModel set fileName=@fileName,path=@path  where id=@id";
                        sqlParameter = new SqlParameter[]{ new SqlParameter("@fileName", title),
                                                 new SqlParameter("@path", newvalue),
                                                 new SqlParameter("@id",id1)};
                    }
                    if (Directory.Exists(oldpath))
                    {
                        Directory.Move(oldpath, newpath);
                        sql = "update FileModel set fileName=@fileName where id=@id";
                        sqlParameter = new SqlParameter[]{ new SqlParameter("@fileName", title),
                                                 new SqlParameter("@id",id1)};
                        sqlHelper.executeNonQuery(sql, sqlParameter);
                        sql = "update Directory set Value=REPLACE(Value,@oldpath,@newpath)  where Value like '%" + values + "%'";
                        sqlParameter = new SqlParameter[] { new SqlParameter("@Title", title),
                                                 new SqlParameter("@oldpath",values),
                                                 new SqlParameter("@newpath",newvalue)};
                        sqlHelper.executeNonQuery(sql, sqlParameter);
                        sql = "update FileModel set path=REPLACE(path,@oldpath,@newpath)  where path like '%" + values + "%'";
                        sqlParameter = new SqlParameter[] { new SqlParameter("@fileName", title),
                                                 new SqlParameter("@oldpath",values),
                                                 new SqlParameter("@newpath",newvalue)};
                    }
                    int i = sqlHelper.executeNonQuery(sql, sqlParameter);
                    if (i > 0)
                    {
                        //Response.Redirect("fileManagement.aspx?file=" + fpath);
                        //Response.Write("<script language='javascript'>alert('重命名成功！');</script>");
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('保存成功!');parent.frames[0].reLoad('" + refreshID + "');", true);
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('重命名失败！');</script>");
                    }

                    directory.Code = code.IsNullOrEmpty() ? null : code.Trim();
                    directory.Note = note.IsNullOrEmpty() ? null : note.Trim();
                    directory.Other = other.IsNullOrEmpty() ? null : other.Trim();
                    directory.Title = title.Trim();
                    directory.Quantity = quantity;
                    directory.Value = newvalue;

                    bdirectory.Update(directory);
                    bdirectory.RefreshCache();

                    //if (File.Exists(oldpath))
                    //{
                    //    File.Move(oldpath, newpath);
                    //}
                    //if (Directory.Exists(oldpath))
                    //{
                    //    Directory.Move(oldpath, newpath);
                    //}

                    RoadFlow.Platform.Log.Add("修改了存储目录项", "", RoadFlow.Platform.Log.Types.存储目录, oldXML, directory.Serialize());

                }
            }
            if (directory != null)
            {
                this.Title1.Value = directory.Title;
                this.Code.Value = directory.Code;
                this.Values.Value = directory.Value;
                this.Note.Value = directory.Note;
                this.Other.Value = directory.Other;
                this.Quantity.Value = Convert.ToString(directory.Quantity);
            }
        }
        public void DeleteDirectory(string dir)
        {
            if (Directory.GetDirectories(dir).Length == 0 && Directory.GetFiles(dir).Length == 0)
            {
                Directory.Delete(dir);//删除文件夹，若不删除文件夹则不需要 Directory.Delete(dir)
                return;
            }
            foreach (string var in Directory.GetDirectories(dir))
            {
                DeleteDirectory(var);
            }
            foreach (string var in Directory.GetFiles(dir))
            {
                File.Delete(var);
            }
            Directory.Delete(dir);//删除文件夹，若不删除文件夹则不需要 Directory.Delete(dir)
        }
    }
}