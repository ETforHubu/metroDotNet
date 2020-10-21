using RoadFlow.Data.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace RoadFlow.Data.MSSQL
{
    public class FileBLL
    {
        FileDAL fileDAL = new FileDAL();
        public int AddFile(FileModel file)
        {
            return fileDAL.AddFileModel(file);
        }
        public int updateFile(FileModel file)
        {
            return fileDAL.updateFileModel(file);
        }
        public DataSet getFiles()
        {
            return fileDAL.GetFileModels();
        }
        public DataSet getFile(int id)
        {
            return fileDAL.GetFileModel(id);
        }
        public int DeleteFile(string path)
        {
            return fileDAL.DeleteFileModel(path);
        }
        public int DeleteFiles(ArrayList ids, string fullPath)
        {
            return fileDAL.DeleteFileModels(ids, fullPath);
        }
    }
}
