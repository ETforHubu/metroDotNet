using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using RoadFlow.Data.Model;
using RoadFlow.Data.MSSQL;

namespace WebForm.Platform.Dictionary
{
    /// <summary>
    /// fileupload 的摘要说明
    /// </summary>
    public class fileupload : IHttpHandler
    {

        #region 文件分片

        public void ProcessRequest(HttpContext context)
        {
            FileBLL fileBLL = new FileBLL();
            context.Response.ContentType = "text/plain";            
            //如果进行了分片
            if (context.Request.Form.AllKeys.Any(m => m == "chunk"))
            {

                //取得chunk和chunks
                int chunk = Convert.ToInt32(context.Request.Form["chunk"]);//当前分片在上传分片中的顺序（从0开始）
                int chunks = Convert.ToInt32(context.Request.Form["chunks"]);//总分片数
                //根据GUID创建用该GUID命名的临时文件夹
                //string folder = context.Server.MapPath("~/1/" + context.Request["guid"] + "/");

                //合并失败
                string folder = context.Server.MapPath("/" + Global.g_storePath + "/" + context.Request["guid"] + "/");

                string path = folder + chunk;

                //建立临时传输文件夹
                if (!System.IO.Directory.Exists(Path.GetDirectoryName(folder)))
                {
                    System.IO.Directory.CreateDirectory(folder);
                }

                FileStream addFile = new FileStream(path, FileMode.Append, FileAccess.Write);
                BinaryWriter AddWriter = new BinaryWriter(addFile);
                //获得上传的分片数据流
                HttpPostedFile file = context.Request.Files[0];
                Stream stream = file.InputStream;

                BinaryReader TempReader = new BinaryReader(stream);
                //将上传的分片追加到临时文件末尾
                AddWriter.Write(TempReader.ReadBytes((int)stream.Length));
                //关闭BinaryReader文件阅读器
                TempReader.Close();
                stream.Close();
                AddWriter.Close();
                addFile.Close();

                TempReader.Dispose();
                stream.Dispose();
                AddWriter.Dispose();
                addFile.Dispose();
                Global.g_fileName = file.FileName;
                //context.Response.Write("{\"chunked\" : true, \"hasError\" : false, \"f_ext\" : \"" + Path.GetExtension(file.FileName) + "\"}");
                context.Response.Write("{\"chunked\" : true, \"hasError\" : false,\"f_ext\" : \"" + Path.GetExtension(file.FileName) + "\"}");
            }
            else//没有分片直接保存
            {
                //string FilePath = context.Server.MapPath("/") + "/" + context.Request.QueryString["value"];
                //context.Request.Files[0].SaveAs(FilePath + "\\" + context.Request.Files[0].FileName);
                //context.Request.Files[0].SaveAs(context.Server.MapPath("~/1/" + DateTime.Now.ToFileTime() + Path.GetExtension(context.Request.Files[0].FileName)));
                //获取多个参数，运行正确
                //context.Request.Files[0].SaveAs(context.Server.MapPath("~/1/" + context.Request["uid"].ToString() + context.Request["storePath"].ToString().Replace('\\','/') + Path.GetExtension(context.Request.Files[0].FileName)));
                context.Request.Files[0].SaveAs(context.Server.MapPath("/"  + context.Request["storePath"].ToString().Replace('\\', '/') + "/" + context.Request.Files[0].FileName));
                FileModel fileModel = new FileModel();
                String fileName = context.Request.Files[0].FileName.Replace(" ", "");
                if (fileName != null)
                {
                    fileModel.fileName = fileName;
                    fileModel.time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    fileModel.size = Convert.ToString(Math.Round((decimal)context.Request.Files[0].ContentLength / 1048576, 2)) + "MB";
                    fileModel.type = fileName.Substring(fileName.LastIndexOf('.') + 1);
                    fileModel.fid = Global.g_fid.ToString();
                    fileModel.path = Global.g_fpath + "/" + fileName;
                    fileModel.mark = "1";
                    fileModel.uploader = Global.userName;
                    int j = fileBLL.AddFile(fileModel);
                    if (j > 0)
                    {
                        string FilePath = context.Server.MapPath("/") + "/" + context.Request.QueryString["value"];                  
                        string a = "";
                        string psw = FilePath;  //需要显示的变量
                        a = "<script language='javascript'>alert('" + psw + "');</script>";
                        context.Response.Write(a);
                        context. Response.End();

                        context.Request.Files[0].SaveAs(FilePath + "\\" + fileName);

                        //Response.Write("<script language='javascript'>alert('上传文件成功')</script>");
                    }
                    else
                    {
                        context.Response.Write("<script language='javascript'>alert('上传文件失败！')</script>");
                    }                 
                }
                context.Response.Write("{\"chunked\" : false, \"hasError\" : false}");
            }
        }
        #endregion

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}