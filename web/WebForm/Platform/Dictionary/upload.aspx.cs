using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebForm.Platform.Resources
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)//首次执行页面
            {
                SFUPC();
            }
        }
        #region  该方法用于将当前页面上传文件控件集保存到Session中
        private void SFUPC()
        {
            ArrayList AL = new ArrayList();//动态增加数组
            foreach (Control C in Tab_UpDownFile.Controls)
            {
                //在表格中查找出FileUpload控件添加到ArrayList中
                if (C.GetType().ToString() == "System.Web.UI.HtmlControls.HtmlTableRow")
                {
                    HtmlTableCell HTC = (HtmlTableCell)C.Controls[0];
                    foreach (Control FUC in HTC.Controls)
                    {
                        if (FUC.GetType().ToString() == "System.Web.UI.WebControls.FileUpload")
                        {
                            FileUpload FU = (FileUpload)FUC;
                            //添加FileUpload控件
                            AL.Add(FU);
                        }
                    }
                }
            }

            //把ArrayList添加到Session中
            Session.Add("FilesControls", AL);
        }
        #endregion

        #region 该方法用于添加一个上传文件的控件
        private void InsertC()
        {
            //实例化ArrayList
            ArrayList AL = new ArrayList();
            this.Tab_UpDownFile.Rows.Clear(); //清除id为F表格里的所有行
            GetInfo();
            //表示 HtmlTable 控件中的 <tr> HTML 元素
            HtmlTableRow HTR = new HtmlTableRow();
            //表示 HtmlTableRow 对象中的 <td> 和 <th> HTML 元素
            HtmlTableCell HTC = new HtmlTableCell();
            //在单元格中添加一个FileUpload控件
            HTC.Controls.Add(new FileUpload());
            //在行中添加单元格
            HTR.Controls.Add(HTC);
            //在表中添加行
            Tab_UpDownFile.Rows.Add(HTR);
            SFUPC();
        }
        #endregion

        #region 该方法用于将保存在Session中的上传文件控件集添加到表格中
        private void GetInfo()
        {
            ArrayList AL = new ArrayList();
            if (Session["FilesControls"] != null)
            {
                AL = (ArrayList)Session["FilesControls"];
                for (int i = 0; i < AL.Count; i++)
                {
                    HtmlTableRow HTR = new HtmlTableRow();
                    HtmlTableCell HTC = new HtmlTableCell();
                    HTC.Controls.Add((System.Web.UI.WebControls.FileUpload)AL[i]);
                    HTR.Controls.Add(HTC);
                    Tab_UpDownFile.Rows.Add(HTR);
                }
            }
        }
        #endregion

        #region 该方法用于执行文件上传操作
        private void UpFile()
        {

            //获取文件夹路径
         
            //string FilePath = Server.MapPath("./") + "File";
            string FilePath = Server.MapPath("/") + "/" + Request.QueryString["value"];
            //string a = "";
            //string psw = FilePath;  //需要显示的变量
            //a = "<script language='javascript'>alert('" + psw + "');</script>";
            //Response.Write(a);
            //Response.End();
            // 获取客户端上载文件的集合
            HttpFileCollection HFC = Request.Files;
            for (int i = 0; i < HFC.Count; i++)
            {
                //访问指定的文件
                HttpPostedFile UserHPF = HFC[i];
                try
                {
                    //判断文件是否为空
                    if (UserHPF.ContentLength > 0)
                    {
                        //将上传的文件存储在指定目录下
                        UserHPF.SaveAs(FilePath + "\\" + System.IO.Path.GetFileName(UserHPF.FileName));
                    }
                }
                catch
                {
                    LblMessage.Text = "上传失败！";
                }
            }
            if (Session["FilesControls"] != null)
            {
                Session.Remove("FilesControls");
            }
            LblMessage.Text = "上传成功！";

        }
        #endregion

        #region 调用InsertC方法，实现添加FileUpLoad控件的功能
        protected void ImgBtnAdd_Click(object sender, ImageClickEventArgs e)
        {
            InsertC();//执行添加控件方法
            LblMessage.Text = "";
        }
        #endregion
        #region 实现文件上传的功能
        protected void ImgUpFile_Click(object sender, ImageClickEventArgs e)
        {
            //if (this.FileUpload1.PostedFile.FileName != "")
            //{
            //    UpFile();//执行上传文件
            //    SFUPC();
            //}
            //else
            //{
            //    Response.Write("<script language='javascript'>alert('对不起，上传文件为空，请选择上传文件！');</script>");
            //}
            UpFile();//执行上传文件
            SFUPC();
        }
        #endregion
        protected void ImgBtnDownFile_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("down.aspx");
        }
        protected void ImgBtnUppic_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("pic.aspx");
        }
    }
}