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
    /// MergeFiles 的摘要说明
    /// </summary>
    public class MergeFiles : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            FileBLL fileBLL = new FileBLL();
            context.Response.ContentType = "text/plain";

            string guid = context.Request["guid"];
            double fLength=0;
            string fileExt = context.Request["fileExt"];
            //string root = context.Server.MapPath("~/1/");
            string root = context.Server.MapPath("/" + Global.g_storePath + "/");
            string sourcePath = Path.Combine(root, guid + "/");//源数据文件夹
            //string targetPath = Path.Combine(root, Guid.NewGuid() + fileExt);//合并后的文件
            string targetPath = Path.Combine(root, Global.g_fileName);
            DirectoryInfo dicInfo = new DirectoryInfo(sourcePath);
            if (System.IO.Directory.Exists(Path.GetDirectoryName(sourcePath)))
            {
               
                FileInfo[] files = dicInfo.GetFiles();
                foreach (FileInfo file in files.OrderBy(f => int.Parse(f.Name)))
                {
                   
                    FileStream addFile = new FileStream(targetPath, FileMode.Append, FileAccess.Write);
                    BinaryWriter AddWriter = new BinaryWriter(addFile);

                    //获得上传的分片数据流
                    Stream stream = file.Open(FileMode.Open);
                    fLength += stream.Length;
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
                }

                DeleteFolder(sourcePath);
                FileModel fileModel = new FileModel();
                String fileName = Global.g_fileName.Replace(" ", "");
                if (fileName != null)
                {
                    fileModel.fileName = fileName;
                    fileModel.time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    fileModel.size = Convert.ToString(Math.Round((decimal)fLength / 1048576, 2)) + "MB";
                    fileModel.type = fileName.Substring(fileName.LastIndexOf('.') + 1);
                    fileModel.fid = Global.g_fid.ToString();
                    fileModel.path = Global.g_fpath + "/" + fileName;
                    fileModel.mark = "1";
                    fileModel.uploader = Global.userName;
                    int j = fileBLL.AddFile(fileModel);
                    if (j > 0)
                    {
                        string FilePath = context.Server.MapPath("/") + "/" + context.Request.QueryString["value"];
                        context.Request.Files[0].SaveAs(FilePath + "\\" + fileName);

                        //Response.Write("<script language='javascript'>alert('上传文件成功')</script>");
                    }
                    else
                    {
                        context.Response.Write("<script language='javascript'>alert('上传文件失败！')</script>");
                    }
                }
                context.Response.Write("{\"chunked\" : true, \"hasError\" : false, \"savePath\" :\"" + System.Web.HttpUtility.UrlEncode(targetPath) + "\"}");
                //context.Response.Write("{\"hasError\" : false}");
            }
            else
                context.Response.Write("{\"hasError\" : true}");
        }



        /// <summary>
        /// 删除文件夹及其内容
        /// </summary>
        /// <param name="dir"></param>
        private static void DeleteFolder(string strPath)
        {
            //删除这个目录下的所有子目录
            if (System.IO.Directory.GetDirectories(strPath).Length > 0)
            {
                foreach (string fl in System.IO.Directory.GetDirectories(strPath))
                {
                    System.IO.Directory.Delete(fl, true);
                }
            }
            //删除这个目录下的所有文件
            if (System.IO.Directory.GetFiles(strPath).Length > 0)
            {
                foreach (string f in System.IO.Directory.GetFiles(strPath))
                {
                    System.IO.File.Delete(f);
                }
            }
            System.IO.Directory.Delete(strPath, true);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

    }
}