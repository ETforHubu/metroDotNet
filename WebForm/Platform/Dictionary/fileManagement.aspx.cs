using RoadFlow.Data.MSSQL;
using RoadFlow.Utility;
using System;
using System.Linq;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Collections;
using System.IO;

namespace WebForm.Platform.Dictionary
{
    public partial class fileManagement : Common.BasePage

    {
        public static string file = "资源管理系统";
        public static string parentFile;
        public static string roleName;
        public static string uid;
        static bool flag = false;
        SqlHelper sqlHelper = new SqlHelper();
        FileBLL fileBLL = new FileBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            file = Request.QueryString["value"];
            uid = Request.QueryString["uid"];
            //string a = "";
            //string psw = uid;  //需要显示的变量
            //a = "<script language='javascript'>alert('" + psw + "');</script>";
            //Response.Write(a);
            //Response.End();
            if (file == null||file.Equals("资源管理系统"))
            {
                 parentFile = "";
                 backUpLayer.Visible = false;
            }
            else
            {
                parentFile = file.Substring(0, file.LastIndexOf('/'));
            }
            if (!IsPostBack)
            {
                flag = false;
                GvDataBind();
            }
            //}
            else
            {

                //file = Request.QueryString["file"].ToString();
            }

            //}
            btnDeleteRecords.Visible = getRole(uid);
            btnDeleteRecords.Attributes.Add("onclick", "return confirm('您确定要批量删除？');");
        }

      public Boolean getRole(string uid)
        {
            RoadFlow.Platform.UsersRole ur = new RoadFlow.Platform.UsersRole();
            if (!(uid.IsNullOrEmpty())&& ur.GetByUserID(uid.ToGuid()).Count() > 0)
            {
                //获取角色ID
                var roleid = ur.GetByUserID(uid.ToGuid())[0].RoleID;
                RoadFlow.Platform.Role role = new RoadFlow.Platform.Role();
                roleName = role.Get(roleid).Name;
                if ("系统管理员".Equals(roleName))
                {
                    return true;
                }
            }
            return false;
        }

        protected void fileManage_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Button deleteBtn = (Button)e.Row.FindControl("deleteBtn");
            if (deleteBtn != null)
            {
                deleteBtn.Attributes.Add("onclick", "return confirm('您确定要删除？');");
            }
            //根据用户文档权限绑定操作
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor,this.style.backgroundColor='#99ccff'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
                // HyperLink reNameLink = (HyperLink)e.Row.FindControl("ReName");
                System.Web.UI.WebControls.Image upLoadOrDown = (System.Web.UI.WebControls.Image)e.Row.FindControl("upLoadOrDown");
                HyperLink upLoadLink = (HyperLink)e.Row.FindControl("upLoad");
                LinkButton downBtn = (LinkButton)e.Row.FindControl("Down");
                HyperLink deleteLink = (HyperLink)e.Row.FindControl("delete");
                //reNameLink.Visible = true;
                //upLoadLink.Visible = true;
                deleteLink.Visible = getRole(uid);
                //deleteRecords.Visible = getRole(uid);
                //downBtn.Visible = true;
                upLoadOrDown.Visible = true;
                upLoadOrDown.Visible = true;
                //fileManage.Columns[6].Visible = true;
                //fileManage.Columns[6].Visible = true;
                //fileManage.Columns[7].Visible = true;
            }
        }
        protected void fileManage_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("delete"))
            {

                int i = 0;
                DataSet ds = fileBLL.getFile(Convert.ToInt32(e.CommandArgument.ToString()));
                string path = ds.Tables[0].Rows[0]["path"].ToString();
                string fullPath = Server.MapPath("/") + "/" + ds.Tables[0].Rows[0]["path"].ToString();
                //string fullPath = Server.MapPath("/") + ds.Tables[0].Rows[0]["path"].ToString() + "/";
                //string a = "";
                //string psw = fullPath;  //需要显示的变量
                //a = "<script language='javascript'>alert('" + psw + "');</script>";
                //Response.Write(a);
                //Response.End();         
                string mark = ds.Tables[0].Rows[0]["mark"].ToString();
                i = fileBLL.DeleteFile(ds.Tables[0].Rows[0]["path"].ToString());
                if (i > 0)
                {
                    try
                    {
                        FileManagement fm = new FileManagement();
                        fm.DeleteDirectory(fullPath, mark);
                        Response.Write("<script language='javascript'>alert('删除成功！')</script>");
                        GvDataBind(path.Substring(0, path.LastIndexOf('/')));
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script language='javascript'>alert('删除失败！')</script>");
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('删除失败！')</script>");
                }
            }
            if (e.CommandName.Equals("DownBtn"))
            {
                //string a = "";
                //string psw = "下载";  //需要显示的变量
                //a = "<script language='javascript'>alert('" + psw + "');</script>";
                //Response.Write(a);
                //Response.End();
                string newvalue = Server.MapPath("/") + "/" + e.CommandArgument.ToString();
                string path = newvalue;
                string filename = e.CommandArgument.ToString().Substring(e.CommandArgument.ToString().LastIndexOf('/') + 1);
                FileInfo fi = new FileInfo(path);
                if (fi.Exists)
                {
                    Response.Clear();
                    Response.AddHeader("Content-Disposition", "attachment;filename=" + Server.UrlEncode(filename));
                    Response.AddHeader("Content-Length", fi.Length.ToString());
                    Response.ContentType = "application/octet-stream;charset=gb2321";
                    Response.WriteFile(path);
                    Response.Flush();
                    Response.Close();
                }
            }
        }
        protected void fileManage_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        private void GvDataBind()
        {
            string sql = "select id from FileModel where path='" + file + "' order by id desc ";
            int i = sqlHelper.executeScalar(sql);
            string sql1 = "select * from FileModel where fid=" + i + " order by id desc ";
            this.bindFileModel(sql1);
        }
        private void GvDataBind(string fpath)
        {
            string sql = "select id from FileModel where path='" + fpath + "' order by id desc ";
            int i = sqlHelper.executeScalar(sql);
            string sql1 = "select * from FileModel where fid=" + i + " order by id desc ";
            this.bindFileModel(sql1);
        }
        private void bindFileModel(string sql)
        {
            int currentPage = Convert.ToInt32(lblCurrentPage.Text);
            PagedDataSource pds = new PagedDataSource();
            DataSet ds = sqlHelper.getDataSet(sql, "FileModel");
            pds.DataSource = ds.Tables["FileModel"].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 10;
            pds.CurrentPageIndex = currentPage - 1;
            this.Firstpage.Enabled = true;
            this.Prevpage.Enabled = true;
            this.Nextpage.Enabled = true;
            this.Lastpage.Enabled = true;
            if (currentPage == 1 && currentPage == pds.PageCount)
            {
                this.Firstpage.Enabled = false;
                this.Prevpage.Enabled = false;
                Firstpage.BackColor = Color.FromArgb(245, 245, 245);
                Prevpage.BackColor = Color.FromArgb(245, 245, 245);
                Firstpage.BorderColor = Color.FromArgb(221, 221, 221);
                Prevpage.BorderColor = Color.FromArgb(221, 221, 221);
                Firstpage.ForeColor = Color.FromArgb(221, 221, 221);
                Prevpage.ForeColor = Color.FromArgb(221, 221, 221);
                this.Nextpage.Enabled = false;
                this.Lastpage.Enabled = false;
                Nextpage.BackColor = Color.FromArgb(245, 245, 245);
                Lastpage.BackColor = Color.FromArgb(245, 245, 245);
                Nextpage.BorderColor = Color.FromArgb(221, 221, 221);
                Lastpage.BorderColor = Color.FromArgb(221, 221, 221);
                Nextpage.ForeColor = Color.FromArgb(221, 221, 221);
                Lastpage.ForeColor = Color.FromArgb(221, 221, 221);
            }
            else if (currentPage == 1)
            {
                this.Firstpage.Enabled = false;
                this.Prevpage.Enabled = false;
                Firstpage.BackColor = Color.FromArgb(245, 245, 245);
                Prevpage.BackColor = Color.FromArgb(245, 245, 245);
                Firstpage.BorderColor = Color.FromArgb(221, 221, 221);
                Prevpage.BorderColor = Color.FromArgb(221, 221, 221);
                Firstpage.ForeColor = Color.FromArgb(221, 221, 221);
                Prevpage.ForeColor = Color.FromArgb(221, 221, 221);
                Nextpage.BackColor = Color.FromArgb(59, 149, 200);
                Lastpage.BackColor = Color.FromArgb(59, 149, 200);
                Nextpage.BorderColor = Color.FromArgb(59, 149, 200);
                Lastpage.BorderColor = Color.FromArgb(59, 149, 200);
                Nextpage.ForeColor = Color.FromArgb(255, 255, 255);
                Lastpage.ForeColor = Color.FromArgb(255, 255, 255);
            }
            else if (currentPage == pds.PageCount)
            {
                this.Nextpage.Enabled = false;
                this.Lastpage.Enabled = false;
                Nextpage.BackColor = Color.FromArgb(245, 245, 245);
                Lastpage.BackColor = Color.FromArgb(245, 245, 245);
                Nextpage.BorderColor = Color.FromArgb(221, 221, 221);
                Lastpage.BorderColor = Color.FromArgb(221, 221, 221);
                Nextpage.ForeColor = Color.FromArgb(221, 221, 221);
                Lastpage.ForeColor = Color.FromArgb(221, 221, 221);
                Firstpage.BackColor = Color.FromArgb(59, 149, 200);
                Prevpage.BackColor = Color.FromArgb(59, 149, 200);
                Firstpage.BorderColor = Color.FromArgb(59, 149, 200);
                Prevpage.BorderColor = Color.FromArgb(59, 149, 200);
                Firstpage.ForeColor = Color.FromArgb(255, 255, 255);
                Prevpage.ForeColor = Color.FromArgb(255, 255, 255);
            }
            else if (currentPage != 1 && currentPage != pds.PageCount)
            {
                Firstpage.BackColor = Color.FromArgb(59, 149, 200);
                Prevpage.BackColor = Color.FromArgb(59, 149, 200);
                Firstpage.BorderColor = Color.FromArgb(59, 149, 200);
                Prevpage.BorderColor = Color.FromArgb(59, 149, 200);
                Firstpage.ForeColor = Color.FromArgb(255, 255, 255);
                Prevpage.ForeColor = Color.FromArgb(255, 255, 255);
                Nextpage.BackColor = Color.FromArgb(59, 149, 200);
                Lastpage.BackColor = Color.FromArgb(59, 149, 200);
                Nextpage.BorderColor = Color.FromArgb(59, 149, 200);
                Lastpage.BorderColor = Color.FromArgb(59, 149, 200);
                Nextpage.ForeColor = Color.FromArgb(255, 255, 255);
                Lastpage.ForeColor = Color.FromArgb(255, 255, 255);
            }

            int count = ds.Tables["FileModel"].Rows.Count;
            fileManage.DataSource = pds;
            lblRecordCount.Text = count.ToString();
            lbPageCount.Text = pds.PageCount.ToString();
            fileManage.DataKeyNames = new String[] { "id" };
            fileManage.DataBind();
        }
        protected void PagerBtnCommand_OnClick(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string cmd = btn.CommandName;
            switch (cmd)
            {
                case "first":
                    lblCurrentPage.Text = "1";
                    if (flag)
                    {
                        this.SearchDataBind();
                    }
                    else
                    {
                        this.GvDataBind();
                    }
                    break;
                case "prev":
                    lblCurrentPage.Text = Convert.ToString(Convert.ToInt32(lblCurrentPage.Text) - 1);
                    if (flag)
                    {
                        this.SearchDataBind();
                    }
                    else
                    {
                        this.GvDataBind();
                    }
                    break;
                case "next":
                    lblCurrentPage.Text = Convert.ToString(Convert.ToInt32(lblCurrentPage.Text) + 1);
                    if (flag)
                    {
                        this.SearchDataBind();
                    }
                    else
                    {
                        this.GvDataBind();
                    }
                    break;
                case "last":
                    lblCurrentPage.Text = Convert.ToString(lbPageCount.Text);
                    if (flag)
                    {
                        this.SearchDataBind();
                    }
                    else
                    {
                        this.GvDataBind();
                    }
                    break;
                case "search":
                    flag = true;
                    lblCurrentPage.Text = "1";
                    this.SearchDataBind();
                    break;
                case "btnDeleteRecords":
                    ArrayList id = new ArrayList();
                    for (int i = 0; i < fileManage.Rows.Count; i++)
                    {
                        CheckBox cb = (CheckBox)fileManage.Rows[i].Cells[0].FindControl("del");
                        if (cb.Checked == true)
                        {
                            id.Add(this.fileManage.DataKeys[i].Value.ToString());
                        }
                    }
                    if (id.Count != 0)
                    {
                        FileManagement fm = new FileManagement();
                        int i = 0;
                        DataSet ds = fileBLL.getFile(Convert.ToInt32(id[0]));
                        string path = ds.Tables[0].Rows[0]["path"].ToString();
                        string fPath = path.Substring(0, path.LastIndexOf('/'));
                        i = fileBLL.DeleteFiles(id, Server.MapPath("/"));
                        //for (int j = 0; j < id.Count; j++)
                        //{
                        //    DataSet ds1 = fileBLL.getFile(Convert.ToInt32(id[j]));
                        //    string fullPath = Server.MapPath("/") + "/" + ds1.Tables[0].Rows[0]["path"].ToString();
                        //    fm.DeleteDirectory(fullPath, "1");
                        //}
                        if (i == id.Count)
                        {
                            Response.Write("<script language='javascript'>alert('批量删除成功！')</script>");
                            if (Convert.ToInt32(lblCurrentPage.Text) > 1 && Convert.ToInt32(lblCurrentPage.Text) == Convert.ToInt32(lbPageCount.Text))
                            {
                                lblCurrentPage.Text = (Convert.ToInt32(lblCurrentPage.Text) - 1).ToString();
                            }
                            if (flag)
                            {
                                this.SearchDataBind();
                            }
                            else
                            {
                                this.GvDataBind(fPath);
                            }
                        }
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('请选择批量删除的项！')</script>");
                    }

                    break;
                default:
                    break;
            }
        }
        private void SearchDataBind()
        {
            string name = txtName.Text;
            string sql = "select * from FileModel where fileName like '%" + name + "%' and path like '%" + file + "%' and id>11 order by id desc";
            this.bindFileModel(sql);
        }
        protected string getImageUrl(string type)
        {
            string imageUrl = null;
            switch (type)
            {
                case "bmp":
                    imageUrl = "/..../../images/bmp文件.PNG";
                    break;
                case "xls":
                    imageUrl = "/..../../images/excel文件.PNG";
                    break;
                case "gif":
                    imageUrl = "/..../../images/gif文件.PNG";
                    break;
                case "jpg":
                    imageUrl = "/..../../images/jpg文件.PNG";
                    break;
                case "jpeg":
                    imageUrl = "/..../../images/jpg文件.PNG";
                    break;
                case "png":
                    imageUrl = "/..../../images/jpg文件.PNG";
                    break;
                case "wwj":
                    imageUrl = "/..../../images/newfolder.gif";
                    break;
                case "pdf":
                    imageUrl = "/..../../images/pdf文件.PNG";
                    break;
                case "ppt":
                    imageUrl = "/..../../images/幻灯片文件.PNG";
                    break;
                case "txt":
                    imageUrl = "/..../../images/记事本文件.PNG";
                    break;
                case "zip":
                    imageUrl = "/..../../images/压缩文件.PNG";
                    break;
                case "rar":
                    imageUrl = "/..../../images/压缩文件.PNG";
                    break;
                case "doc":
                    imageUrl = "/..../../images/word文件.jpg";
                    break;
                case "docx":
                    imageUrl = "/..../../images/word文件.jpg";
                    break;
                case "文件夹":
                    imageUrl = "/..../../images/newfolder.gif";
                    break;
                default:
                    imageUrl = "/..../../images/其他.PNG";
                    break;
            }
            return imageUrl;
        }

        protected string getLinkUrl(string path)
        {
            return "fileManagement.aspx?value=" + path;
        }

        protected string getUpOrDownUrl(string type)
        {
            string imageUrl = null;
            switch (type.Trim())
            {
                case "文件夹":
                    imageUrl = "/..../../images/c03.png";
                    break;
                default:
                    imageUrl = "/..../../images/download.gif";
                    break;
            }
            return imageUrl;
        }
        protected string getReNameUrl(string id, string path, string mark)
        {
            return "javascript:openPWD(\"reNameWJ.aspx?id=" + id + "&path=" + path + "&mark=" + mark + "\",300,300)";
        }
        protected string getUpLoadUrl(string id, string path)
        {
            return "javascript:openPWD(\"upLoadWJ.aspx?id=" + id + "&path=" + path + "\",300,300)";
        }
        protected string getPrintUrl(string id, string path)
        {
            return "javascript:openPWD(\"imagePrint.aspx?id=" + id + "&path=" + path + "\",700,900)";
        }
        protected bool getPrintVisible(string type)
        {
            bool visible;
            switch (type)
            {
                case "bmp":
                    visible = true;
                    break;
                case "gif":
                    visible = true;
                    break;
                case "jpg":
                    visible = true;
                    break;
                case "jpeg":
                    visible = true;
                    break;
                case "png":
                    visible = true;
                    break;
                case "pdf":
                    visible = true;
                    break;
                case "PNG":
                    visible = true;
                    break;
                default:
                    visible = false;
                    break;
            }
            return visible;
        }

        protected bool getPrintVisible(string type, string mark)
        {
            bool visible;
            if (mark.Trim().Equals("0"))
            {
                return false;
            }
            else
            {
                switch (type)
                {
                    case "bmp":
                        visible = true;
                        break;
                    case "gif":
                        visible = true;
                        break;
                    case "jpg":
                        visible = true;
                        break;
                    case "jpeg":
                        visible = true;
                        break;
                    case "png":
                        visible = true;
                        break;
                    case "pdf":
                        visible = true;
                        break;
                    case "PNG":
                        visible = true;
                        break;
                    default:
                        visible = false;
                        break;
                }
                return visible;
            }
        }

        protected bool getDownOrInfVisible(string type, string mark)
        {
            bool visible;
            if (mark.Trim().Equals("0"))
            {
                return false;
            }
            else
            {
                switch (type)
                {
                    case "bmp":
                        visible = true;
                        break;
                    case "gif":
                        visible = true;
                        break;
                    case "jpg":
                        visible = true;
                        break;
                    case "jpeg":
                        visible = true;
                        break;
                    case "png":
                        visible = true;
                        break;
                    case "pdf":
                        visible = true;
                        break;
                    case "PNG":
                        visible = true;
                        break;
                    default:
                        visible = true;
                        break;
                }
                return visible;
            }
        }
        /// <summary>
        /// 截取文件名
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        protected string SubString(string str)
        {
            if (str.Length > 10)
            {
                return str.Substring(0, 10) + "...";
            }
            else
            {
                return str;
            }
        }


    }
}