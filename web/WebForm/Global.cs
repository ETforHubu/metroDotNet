using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForm
{
    public class Global
    {
        public static string g_storePath;  //全局变量,存储路径\
        public static string g_fileName;   //全局变量,文件名
        public static int g_fid;  //全局变量,存储路径
        public static string g_fpath;  //全局变量,父路径/
        public static string userName = Common.BasePage.CurrentUserName;  //全局变量,父路径/
    }
}