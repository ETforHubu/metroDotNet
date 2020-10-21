using RoadFlow.Data.Model;
using RoadFlow.Utility;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RoadFlow.Data.MSSQL
{
    public class FileDAL
    {
        SqlHelper sqlHelper = new SqlHelper();
        public int AddFileModel(FileModel FileModel)
        {
            string sql = "insert into FileModel(fileName,time,size,type,fid,path,mark,uploader) values(@fileName,@time,@size,@type,@fid,@path,@mark,@uploader)";
            SqlParameter[] parameters = {
            new SqlParameter("@fileName",FileModel.fileName),
            new SqlParameter("@time",FileModel.time) ,
            new SqlParameter("@size",FileModel.size),
            new SqlParameter("@type",FileModel.type),
            new SqlParameter("@fid",FileModel.fid),
            new SqlParameter("@path",FileModel.path),
            new SqlParameter("@mark",FileModel.mark),
            new SqlParameter("@uploader",FileModel.uploader)
            };
            return sqlHelper.executeScalar1(sql, parameters);
        }
        public DataSet GetFileModels()
        {
            string sql = "select * from FileModel";
            return sqlHelper.getDataSet1(sql, null);
        }
        public int DeleteFileModel(string path)
        {
            string sql = "DELETE FROM [dbo].[FileModel] WHERE path like '%" + path + "%'";
            return sqlHelper.executeNonQuery(sql);
        }

        public int DeleteFileModels(ArrayList ids, string fullPath)
        {
            int returnId = 0;
            FileManagement fileManagement = new FileManagement();
            for (int i = 0; i < ids.Count; i++)
            {
                int id = Convert.ToInt32(ids[i].ToString());
                string sql = "select path,mark from FileModel where id =@id1";
                SqlParameter[] sqlParameter = { new SqlParameter("@id1", id) };
                DataSet ds = sqlHelper.getDataSet1(sql, sqlParameter);
                string path = ds.Tables[0].Rows[0]["path"].ToString();
                string mark = ds.Tables[0].Rows[0]["mark"].ToString();
                this.DeleteFileModel(path);
                //fileManagement.DeleteDirectory(fullPath,mark);
                fileManagement.DeleteDirectory(fullPath + "/" + path, mark);
                //fileManagement.DeleteDirectory(fullPath + "/" + path.Substring(path.IndexOf('/')), mark);
                returnId++;
            }

            return returnId;
        }

        public DataSet GetFileModel(int id)
        {
            string sql = "select * from FileModel where id=@id";
            SqlParameter[] parameter = { new SqlParameter("@id", id) };
            return sqlHelper.getDataSet1(sql, parameter);
        }
        public int updateFileModel(FileModel FileModel)
        {
            string sql = "update FileModel set fileName=@fileName where id=@id";
            SqlParameter[] parameters = {
            new SqlParameter("@fileName",FileModel.fileName),
            };
            return sqlHelper.executeNonQuery(sql, parameters);
        }
    }
}
