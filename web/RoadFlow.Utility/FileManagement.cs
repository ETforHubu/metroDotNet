using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace RoadFlow.Utility
{
    public class FileManagement
    {
        public void DeleteDirectory(string dir, string mark)
        {
            if (mark.Trim().Equals("0"))
            {
                if (Directory.GetDirectories(dir).Length == 0 && Directory.GetFiles(dir).Length == 0)
                {
                    Directory.Delete(dir);//删除文件夹，若不删除文件夹则不需要 Directory.Delete(dir)
                    return;
                }
                foreach (string var in Directory.GetDirectories(dir))
                {
                    DeleteDirectory(var, mark);
                }
                foreach (string var in Directory.GetFiles(dir))
                {
                    File.Delete(var);
                }
                Directory.Delete(dir);//删除文件夹，若不删除文件夹则不需要 Directory.Delete(dir)
            }
            else
            {
                if (File.Exists(dir))
                {
                    File.Delete(dir);
                }
            }
        }
    }
}
