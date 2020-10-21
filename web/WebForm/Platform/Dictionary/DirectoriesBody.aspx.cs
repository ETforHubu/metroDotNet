using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using RoadFlow.Utility;
using System.Data.SqlClient;

namespace WebForm.Platform.Dictionary
{
    public partial class DirectoriesBody : Common.BasePage
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
                //删除
                if (!Request.Form["Delete"].IsNullOrEmpty())
                {
                    if (directory.ParentID.ToString() != "00000000-0000-0000-0000-000000000000")
                    {
                        //string values = Request.Form["Values"].Replace("\\", "/");
                        //string newvalue = Server.MapPath("/") + values + "/";
                        int i = bdirectory.DeleteAndAllChilds(directory.ID);
                        //string sql = "DELETE FROM [dbo].[FileModel] WHERE path like '%" + values + "%'";
                        //sqlHelper.executeNonQuery(sql);
                        //bdirectory.RefreshCache();
                        //if (Directory.Exists(newvalue))
                        //{
                        //    Directory.Delete(newvalue, true);
                        //}
                        //if (File.Exists(newvalue))
                        //{
                        //    Directory.Delete(newvalue, true);
                        //}
                        RoadFlow.Platform.Log.Add("删除了树形目录及其下级共" + i.ToString() + "项", directory.Serialize(), RoadFlow.Platform.Log.Types.存储目录);
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('删除成功!');parent.frames[0].reLoad('" + refreshID + "');window.location='DirectoriesBody.aspx?id=" + directory.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('不能删除该目录!');parent.frames[0].reLoad('" + refreshID + "');window.location='DirectoriesBody.aspx?id=" + directory.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';", true);
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
                    //decimal quantity = Convert.ToDecimal(Request.Form["Quantity"]);
                    string unit = Request.Form["Unit"];
                    //decimal constructionCost = Convert.ToDecimal(Request.Form["ConstructionCost"]);
                    //decimal deviceCost = Convert.ToDecimal(Request.Form["DeviceCost"]);
                    //decimal installCost = Convert.ToDecimal(Request.Form["InstallCost"]);
                    //decimal otherCost = Convert.ToDecimal(Request.Form["OtherCost"]);
                    //decimal quota = Convert.ToDecimal(Request.Form["Quota"]);
                    //string oldXML = directory.Serialize();
                    //string NewValues = values.Substring(0, values.LastIndexOf("\\")) + "\\" + title;
                    //string newvalue = values.Substring(0, values.LastIndexOf('/') + 1) + title;
                    //NewValues = NewValues.Replace("\\", "/");
                    //values = values.Replace("\\", "/");

                    //string oldpath = Server.MapPath("/") + "/" + values;
                    //string newpath = Server.MapPath("/") + "/" + NewValues;



                    //string sql1 = "select id from FileModel where path='" + values + "' order by id desc ";
                    //int id1 = sqlHelper.executeScalar(sql1);
                    //string sql = null;
                    //SqlParameter[] sqlParameter = null;
                    //if (File.Exists(oldpath))
                    //{
                    //    File.Move(oldpath, newpath);
                    //    sql = "update FileModel set fileName=@fileName,path=@path  where id=@id";
                    //    sqlParameter = new SqlParameter[]{ new SqlParameter("@fileName", title),
                    //                             new SqlParameter("@path", NewValues),
                    //                             new SqlParameter("@id",id1)};
                    //}
                    //if (Directory.Exists(oldpath))
                    //{
                    //    Directory.Move(oldpath, newpath);
                    //    sql = "update FileModel set fileName=@fileName where id=@id";
                    //    sqlParameter = new SqlParameter[]{ new SqlParameter("@fileName", title),
                    //                             new SqlParameter("@id",id1)};
                    //    sqlHelper.executeNonQuery(sql, sqlParameter);
                    //    sql = "update Directory set Value=REPLACE(Value,@oldpath,@newpath)  where Value like '%" + values + "%'";
                    //    sqlParameter = new SqlParameter[] { new SqlParameter("@Title", title),
                    //                             new SqlParameter("@oldpath",values),
                    //                             new SqlParameter("@newpath",NewValues)};
                    //    sqlHelper.executeNonQuery(sql, sqlParameter);
                    //    sql = "update FileModel set path=REPLACE(path,@oldpath,@newpath)  where path like '%" + values + "%'";
                    //    sqlParameter = new SqlParameter[] { new SqlParameter("@fileName", title),
                    //                             new SqlParameter("@oldpath",values),
                    //                             new SqlParameter("@newpath",NewValues)};
                    //}
                    //int i = sqlHelper.executeNonQuery(sql, sqlParameter);
                    //if (i > 0)
                    //{
                    //    Response.Redirect("fileManagement.aspx?file=" + fpath);
                    //    Response.Write("<script language='javascript'>alert('重命名成功！');</script>");
                    //    Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('保存成功!');parent.frames[0].reLoad('" + refreshID + "');", true);
                    //}
                    //else
                    //{
                    //    Response.Write("<script language='javascript'>alert('重命名失败！');</script>");
                    //}
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('保存成功!');parent.frames[0].reLoad('" + refreshID + "');", true);

                    directory.Code = code.IsNullOrEmpty() ? null : code.Trim();
                    directory.Note = note.IsNullOrEmpty() ? null : note.Trim();
                    directory.Other = other.IsNullOrEmpty() ? null : other.Trim();
                    directory.Title = title.Trim();
                    //directory.Value = NewValues;
                    if (!Request.Form["Quantity"].IsNullOrEmpty())
                        directory.Quantity = Convert.ToDecimal(Request.Form["Quantity"]);
                    directory.Unit = unit;
                    if (!Request.Form["ConstructionCost"].IsNullOrEmpty())
                        directory.ConstructionCost = Convert.ToDecimal(Request.Form["ConstructionCost"]);
                    if (!Request.Form["DeviceCost"].IsNullOrEmpty())
                        directory.DeviceCost = Convert.ToDecimal(Request.Form["DeviceCost"]);
                    if (!Request.Form["InstallCost"].IsNullOrEmpty())
                        directory.InstallCost = Convert.ToDecimal(Request.Form["InstallCost"]);
                    if (!Request.Form["OtherCost"].IsNullOrEmpty())
                        directory.OtherCost = Convert.ToDecimal(Request.Form["OtherCost"]);
                    if (!Request.Form["Quota"].IsNullOrEmpty())
                        directory.Quota = Convert.ToDecimal(Request.Form["Quota"]);
                    bdirectory.Update(directory);
                    bdirectory.RefreshCache();
                    updateParentNodes(directory.ParentID);

                    //if (File.Exists(oldpath))
                    //{
                    //    File.Move(oldpath, newpath);
                    //}
                    //if (Directory.Exists(oldpath))
                    //{
                    //    Directory.Move(oldpath, newpath);
                    //}

                    // RoadFlow.Platform.Log.Add("修改了存储目录项", "", RoadFlow.Platform.Log.Types.存储目录, oldXML, directory.Serialize());
                }
            }
            if (directory != null)
            {
                this.Title1.Value = directory.Title;
                this.Code.Value = Server.MapPath("/");
                //this.Code.Value = directory.Code;
                //this.Values.Value = directory.Value.ToString().Replace('/', '\\');
                //string fullPath = Server.MapPath("/") + directory.Value.ToString().Replace('/', '\\');
                //this.Note.Value = fullPath;
                //this.Note.Value = directory.Note;
                //this.Other.Value = directory.Other;
                if(directory.Quantity==0)
                    this.Quantity.Value = "";
                else
                    this.Quantity.Value = Convert.ToString(directory.Quantity);
                
                this.Unit.Value = directory.Unit;
                if(directory.ConstructionCost==0)
                    this.ConstructionCost.Value = "";
                else
                    this.ConstructionCost.Value = Convert.ToString(directory.ConstructionCost);
                if(directory.DeviceCost==0)
                    this.DeviceCost.Value = "";
                else
                    this.DeviceCost.Value = Convert.ToString(directory.DeviceCost);
                if(directory.InstallCost==0)
                    this.InstallCost.Value = "";
                else
                    this.InstallCost.Value = Convert.ToString(directory.InstallCost);
                if (directory.OtherCost == 0)
                    this.OtherCost.Value = "";
                else
                    this.OtherCost.Value = Convert.ToString(directory.OtherCost);
                if (directory.Quota == 0)
                    this.Quota.Value = "";
                else
                    this.Quota.Value = Convert.ToString(directory.Quota);
                this.SNumber.Value = directory.SNumber;
            }


        }
        public void updateParentNodes(Guid id)
        {
            if (id != new Guid("2A2BBEE3-9883-4185-A64C-4430AA20E0CB"))
            {
                RoadFlow.Data.Model.Directory directory = new RoadFlow.Data.Model.Directory();
                RoadFlow.Data.Model.Directory directoryOld = new RoadFlow.Data.Model.Directory();
                List<RoadFlow.Data.Model.Directory> listDirectory = new List<RoadFlow.Data.Model.Directory>();
                RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
                directoryOld = bdirectory.Get(id);
                directory = directoryOld;
                listDirectory = bdirectory.GetFirstChilds(id);
                decimal constructionCost = 0;
                decimal deviceCost = 0;
                decimal installCost = 0;
                decimal otherCost = 0;
                for (int i = 0; i < listDirectory.Count; i++)
                {
                    constructionCost = constructionCost + listDirectory[i].ConstructionCost;
                    deviceCost = deviceCost + listDirectory[i].DeviceCost;
                    installCost = installCost + listDirectory[i].InstallCost;
                    otherCost = otherCost + listDirectory[i].OtherCost;
                }
                directory.ConstructionCost = constructionCost;
                directory.DeviceCost = deviceCost;
                directory.InstallCost = installCost;
                directory.OtherCost = otherCost;
                bdirectory.Update(directory);
                updateParentNodes(directory.ParentID);
            }
            else
            {
                return;
            }
        }
    }
}