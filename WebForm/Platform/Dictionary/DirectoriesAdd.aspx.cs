using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using RoadFlow.Utility;
using RoadFlow.Data.MSSQL;
using RoadFlow.Data.Model;

namespace WebForm.Platform.Dictionary
{
    public partial class DirectoriesAdd : Common.BasePage
    {
        SqlHelper sqlHelper = new SqlHelper();
        FileBLL fileBLL = new FileBLL();
        //static int fid;
        //static string fpath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
                RoadFlow.Data.Model.Directory directory = new RoadFlow.Data.Model.Directory();
                List<RoadFlow.Data.Model.Directory> listDirectory = new List<RoadFlow.Data.Model.Directory>();
                RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
                string id = Request.QueryString["id"];
                string value = "";
                bool test = false;
                string SNumber = "";
                int brothers;
                if (!id.IsGuid())
                {
                    var directoryRoot = bdirectory.GetRoot();
                    id = directoryRoot != null ? directoryRoot.ID.ToString() : "";
                }
                Guid idGuid = new Guid(id);
                value = bdirectory.Get(idGuid, test).Value.ToString();
                if (!id.IsGuid())
                {
                    throw new Exception("未找到父级");
                }
                //2020.09.25，邹军华，获取父目录的编号,以及同级目录的兄弟
                if (bdirectory.GetParent(idGuid) != null)   //顶级目录
                {
                    SNumber = bdirectory.Get(idGuid).SNumber;
                    brothers = bdirectory.GetChilds(idGuid).Count + 1;
                    SNumber = SNumber + "." + brothers.ToString();
                }
                else
                {
                    SNumber = "1";
                }
                  
                string title = Request.Form["Title1"];
                string unit = Request.Form["Unit"];
                
                string code = Request.Form["Code"];
                string values = Request.Form["Values"];
                string note = Request.Form["Note"];
                string other = Request.Form["Other"];
                string newvalue = value + "/" + title;
                    directory.ID = Guid.NewGuid();
                    directory.Code = code.IsNullOrEmpty() ? null : code.Trim();
                    directory.Note = note.IsNullOrEmpty() ? null : note.Trim();
                    directory.Other = other.IsNullOrEmpty() ? null : other.Trim();
                     directory.Unit = unit.IsNullOrEmpty() ? null : unit.Trim();
                    directory.ParentID = id.ToGuid();
                    directory.Sort = bdirectory.GetMaxSort(id.ToGuid());
                    directory.Title = title.Trim();
                    if(!Request.Form["Quantity"].IsNullOrEmpty())
                        directory.Quantity = Convert.ToDecimal(Request.Form["Quantity"]);
                    if (!Request.Form["ConstructionCost"].IsNullOrEmpty())
                        directory.ConstructionCost = Convert.ToDecimal(Request.Form["ConstructionCost"]);
                    if (!Request.Form["DeviceCost"].IsNullOrEmpty())
                        directory.DeviceCost = Convert.ToDecimal(Request.Form["DeviceCost"]);
                    //directory.InstallCost = installCost;
                    if (!Request.Form["InstallCost"].IsNullOrEmpty())
                        directory.InstallCost = Convert.ToDecimal(Request.Form["InstallCost"]);
                    //directory.OtherCost = otherCost;
                    if (!Request.Form["OtherCost"].IsNullOrEmpty())
                        directory.OtherCost = Convert.ToDecimal(Request.Form["OtherCost"]);
                    //directory.Quota = quota;
                    if (!Request.Form["Quota"].IsNullOrEmpty())
                        directory.Quota = Convert.ToDecimal(Request.Form["Quota"]);
                    //directory.Value = values.IsNullOrEmpty() ? null : values.Trim();
                    directory.Value = value + "/" + title;
                    directory.SNumber = SNumber;
                    bdirectory.Add(directory);         
                    //bdirectory.RefreshCache();
                    RoadFlow.Platform.Log.Add("添加了存储目录项", directory.Serialize(), RoadFlow.Platform.Log.Types.存储目录);
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('添加成功!');parent.frames[0].reLoad('" + id + "');", true);
                //Response.Write("<script language='javascript'>alert('add!')</script>");
                //int i = sqlHelper.executeScalar("select id from FileModel where path='" + value + "'");
                //FileModel fileModel = new FileModel();
                //fileModel.fileName = title.Trim(); ;
                //fileModel.time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                //fileModel.size = "0kb";
                //fileModel.type = "文件夹";
                //fileModel.fid = i.ToString();
                //fileModel.path = value + "/" + title;
                //fileModel.mark = "0";
                //fileModel.uploader = "";
                //int j = fileBLL.AddFile(fileModel);
                //if (j > 0)
                //{
                //    System.IO.Directory.CreateDirectory(Server.MapPath("/") + value + "/" + title);
                //    Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('添加成功!');parent.frames[0].reLoad('" + id + "');", true);
                //    //Response.Write("<script language='javascript'>alert('新建文件夹成功')</script>");
                //}
                //else
                //{
                //    Response.Write("<script language='javascript'>alert('新建文件夹失败！')</script>");
                //}
                updateParentNodes(idGuid);
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
            else {
                return;
            }
        }
        //private bool IsTrueOrFalse(string path)
        //{
        //    int count = sqlHelper.executeScalar("select count(*) from FileModel where path='" + path + "'");
        //    if (count > 0)
        //    {
        //        return false;
        //    }
        //    else
        //    {
        //        return true;
        //    }
        //}

    }
}