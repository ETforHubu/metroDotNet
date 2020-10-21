using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RoadFlow.Utility;
using RoadFlow.Data.Model;
using System.Text;

namespace WebForm.Platform.DirectoryCost
{
    public partial class Import : Common.BasePage
    {
        protected int RoleLength;
        protected string DefaultRoleID;
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginMsg = string.Empty;
            if (!Common.Tools.CheckLogin(out loginMsg))
            {
                Response.Redirect("Login.aspx");
                return;
            }

            #region 得到用户角色相关的信息
            RoadFlow.Platform.UsersRole buserRole = new RoadFlow.Platform.UsersRole();
            RoadFlow.Platform.Role brole = new RoadFlow.Platform.Role();
            var roles = buserRole.GetByUserID(RoadFlow.Platform.Users.CurrentUserID);
            RoleLength = roles.Count;
            DefaultRoleID = string.Empty;
            string rolesOptions = string.Empty;
            if (roles.Count > 0)
            {
                var mainRole = roles.Find(p => p.IsDefault);
                DefaultRoleID = mainRole != null ? mainRole.RoleID.ToString() : roles.First().RoleID.ToString();
                List<RoadFlow.Data.Model.Role> roleList = new List<RoadFlow.Data.Model.Role>();
                foreach (var role in roles)
                {
                    var role1 = brole.Get(role.RoleID);
                    if (role1 == null)
                    {
                        continue;
                    }
                    roleList.Add(role1);
                }

                rolesOptions = brole.GetRoleOptions("", "", roleList);
            }
            #endregion
            this.UserName.Text = CurrentUserName;
            this.CurrentTime.Text = RoadFlow.Utility.DateTimeNew.Now.ToDateWeekString();
            this.RoleOptions.Text = rolesOptions;

        }
        protected override bool CheckUrl(bool isEnd = true)
        {
            return true;
        }

        protected override bool CheckLogin(bool isRedirect = true)
        {
            return true;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Request.Files.Count < 1)
            {
                return;
            }
            else
            {
                StringBuilder errorMsg = new StringBuilder(); // 错误信息
                RoadFlow.Platform.Directory busers = new RoadFlow.Platform.Directory();
                try
                {
                    #region 1.获取Excel文件并转换为一个List集合
                    // 1.1存放Excel文件到本地服务器
                    HttpPostedFile filePost = Request.Files[0];
                    string filePath = ExcelHelper.SaveExcelFile(filePost); // 保存文件并获取文件路径

                    // 单元格抬头
                    // key：实体对象属性名称，可通过反射获取值
                    // value：属性对应的中文注解
                    Dictionary<string, string> cellheader = new Dictionary<string, string> {
                        { "SNumber", "编号" },
                        { "Name", "工程及费用名称" },
                        { "Account", "单位" },
                        { "Note", "建筑工程费（万元）" },
                        { "InstallCost", "安装工程费（万元）" },
                        { "DeviceCost", "设备购置费（万元）" },
                        { "OtherCost", "工程建设其他费用（万元）" },
                        { "Total", "合计（万元）" },
                        { "Quantity", "数量" },
                        { "Quota", "指标（万元）" }
                    };



                    // 1.2解析文件，存放到一个List集合里
                    List<StudentExcel> enlist = ExcelHelper.ExcelToEntityList<StudentExcel>(cellheader, filePath, out errorMsg);
                    //获取表格首行数据
                    List<ExcelFirst> enlistTitle = ExcelHelper.ExcelToEntityListTitle<ExcelFirst>(cellheader, filePath, out errorMsg);
                    #endregion

                    #region 2.对List集合进行有效性校验

                    //#region 2.1检测必填项是否必填

                    //for (int i = 0; i < enlist.Count; i++)
                    //{
                    //    StudentExcel en = enlist[i];
                    //    string errorMsgStr = "第" + (i + 1) + "行数据检测异常：";
                    //    bool isHaveNoInputValue = false; // 是否含有未输入项
                    //    if (string.IsNullOrEmpty(en.Name))
                    //    {
                    //        errorMsgStr += "姓名列不能为空；";
                    //        isHaveNoInputValue = true;
                    //    }
                    //    if (isHaveNoInputValue) // 若必填项有值未填
                    //    {
                    //        en.IsExcelVaildateOK = false;
                    //        errorMsg.AppendLine(errorMsgStr);
                    //    }
                    //}

                    //#endregion

                    //#region 2.2检测Excel中是否有重复对象

                    //for (int i = 0; i < enlist.Count; i++)
                    //{
                    //    StudentExcel enA = enlist[i];
                    //    if (enA.IsExcelVaildateOK == false) // 上面验证不通过，不进行此步验证
                    //    {
                    //        continue;
                    //    }

                    //    for (int j = i + 1; j < enlist.Count; j++)
                    //    {
                    //        StudentExcel enB = enlist[j];
                    //        // 判断必填列是否全部重复
                    //        if (enA.Name == enB.Name)
                    //        {
                    //            enA.IsExcelVaildateOK = false;
                    //            enB.IsExcelVaildateOK = false;
                    //            errorMsg.AppendLine("第" + (i + 1) + "行与第" + (j + 1) + "行的必填列重复了");
                    //        }
                    //    }
                    //}

                    //#endregion

                    // TODO：其他检测

                    #endregion

                    // 3.TODO：对List集合进行持久化存储操作。如：存储到数据库

                    // 4.返回操作结果
                    bool isSuccess = false;
                    if (errorMsg.Length == 0)
                    {

                        isSuccess = true; // 若错误信息都为空，表示无错误信息
                        #region 依次获取导入列所对应的位置
                        int Title0 = JudgeName(enlistTitle[0].SNumber, 0);
                        int Title1 = JudgeName(enlistTitle[0].Name, 1);
                        int Title2 = JudgeName(enlistTitle[0].Account, 2);
                        if (Title0 >2 || Title1>2 || Title2>2) {
                            string a = "前三列必须为“编号”、“单位”与“名称”！";
                            a = "<script language='javascript'>alert('" + a + "');</script>";
                            Response.Write(a);
                            return;
                        }
                        int Title3 = JudgeName(Convert.ToString(enlistTitle[0].Note), 3);
                        int Title4 = JudgeName(Convert.ToString(enlistTitle[0].InstallCost), 4);
                        int Title5 = JudgeName(Convert.ToString(enlistTitle[0].DeviceCost), 5);
                        int Title6 = JudgeName(Convert.ToString(enlistTitle[0].OtherCost), 6);
                        int Title7 = JudgeName(Convert.ToString(enlistTitle[0].Total), 7);
                        int Title8 = JudgeName(Convert.ToString(enlistTitle[0].Quantity), 8);  
                        int Title9 = JudgeName(Convert.ToString(enlistTitle[0].Quota), 9);
                        #endregion

                        #region 查找层级结构
                        int pointNumber = 0;//层级结构(底层)
                        for (int i = 0; i < enlist.Count; i++) {
                            //这里还是需要数组变量，来获取正确的编号位置
                            string[] tempListData = new string[30];
                            tempListData[Title0] = Convert.ToString(enlist[i].SNumber);
                            tempListData[Title1] = Convert.ToString(enlist[i].Name);
                            tempListData[Title2] = Convert.ToString(enlist[i].Account);
                            tempListData[Title3] = Convert.ToString(enlist[i].Note);
                            tempListData[Title4] = Convert.ToString(enlist[i].InstallCost);
                            tempListData[Title5] = Convert.ToString(enlist[i].DeviceCost);
                            tempListData[Title6] = Convert.ToString(enlist[i].OtherCost);
                            tempListData[Title7] = Convert.ToString(enlist[i].Total);
                            tempListData[Title8] = Convert.ToString(enlist[i].Quantity);
                            tempListData[Title9] = Convert.ToString(enlist[i].Quota);
                            tempListData[20] = "0.01";
                            if (SubstringCount(tempListData[0], ".") > pointNumber) {
                                pointNumber = SubstringCount(tempListData[0], ".");
                            }
                        }
                        Guid[] tempParentId = new Guid[pointNumber + 2];//用来存储父节点id
                        tempParentId[0] = Guid.Parse("2a2bbee3-9883-4185-a64c-4430aa20e0cb");//默认最高parentId为资源管理系统的GUID
                        #endregion

                        #region 有限层级时需要的零时变量
                        //Guid twoLevelParentID = Guid.Parse("2a2abab3-9883-4185-a64c-4430aa20e0cb");
                        //Guid threeLevelParentID = Guid.Parse("2a2acac3-9883-4185-a64c-4430aa20e0cb");
                        //Guid fourLevelParentID = Guid.Parse("2a2aeac3-9883-4185-a64c-4430aa20e0cb");
                        //string fourLevelSNumber = "";
                        #endregion
                        //int ab = enlist.Count;//读取到表中值的行数
                        for (int i = 0; i < enlist.Count; i++)
                        {
                            #region 将取得的值放入数组中，以下标的方式检索
                            string[] tempListData = new string[30];
                            tempListData[Title0] = Convert.ToString(enlist[i].SNumber);
                            tempListData[Title1] = Convert.ToString(enlist[i].Name);
                            tempListData[Title2] = Convert.ToString(enlist[i].Account);
                            tempListData[Title3] = Convert.ToString(enlist[i].Note);
                            tempListData[Title4] = Convert.ToString(enlist[i].InstallCost);
                            tempListData[Title5] = Convert.ToString(enlist[i].DeviceCost);
                            tempListData[Title6] = Convert.ToString(enlist[i].OtherCost);
                            tempListData[Title7] = Convert.ToString(enlist[i].Total);
                            tempListData[Title8] = Convert.ToString(enlist[i].Quantity);
                            tempListData[Title9] = Convert.ToString(enlist[i].Quota);
                            tempListData[20] = "0.01";
                            

                            Directory user = new Directory();
                            Guid userID = Guid.NewGuid();
                            user.ID = userID;
                            user.SNumber = tempListData[0];
                            user.Title = tempListData[1];
                            user.Unit = tempListData[2];
                            user.ConstructionCost = Convert.ToDecimal(tempListData[3]);
                            user.InstallCost = Convert.ToDecimal(tempListData[4]);
                            user.DeviceCost = Convert.ToDecimal(tempListData[5]);
                            user.OtherCost = Convert.ToDecimal(tempListData[6]);
                            user.Quantity = Convert.ToDecimal(tempListData[8]);
                            user.Quota = Convert.ToDecimal(tempListData[9]);
                            #endregion

                            //导入数据无线层级
                            user.ParentID = tempParentId[SubstringCount(user.SNumber, ".")];
                            tempParentId[SubstringCount(user.SNumber, ".")+1] = userID;
                            #region 之前的有限层级导入                           
                            //if (user.SNumber.Length == 1) //顶级
                            //{
                            //    user.ParentID = Guid.Parse("2a2bbee3-9883-4185-a64c-4430aa20e0cb");
                            //    twoLevelParentID = userID;
                            //}
                            //else
                            //{
                            //    if (user.SNumber.Length == 3)
                            //    {
                            //        user.ParentID = twoLevelParentID;
                            //        threeLevelParentID = userID;
                            //    }
                            //    else
                            //    {
                            //        if (user.SNumber.Length == 5)
                            //        {
                            //            user.ParentID = threeLevelParentID;
                            //            fourLevelParentID = userID;
                            //            fourLevelSNumber = enlist[i].SNumber;
                            //        }
                            //        else
                            //        {
                            //            if (user.SNumber.Length == 2)
                            //            {
                            //                user.ParentID = fourLevelParentID;
                            //                user.SNumber = fourLevelSNumber + "." + enlist[i].SNumber.Substring(0, 1);
                            //            }
                            //        }
                            //    }
                            //}
                            #endregion
                            busers.Add(user);
                            
                        }
                    }

                    #region 注释
                    //var rs = new { success = isSuccess, msg = errorMsg.ToString(), data = enlist };
                    //System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
                    ////context.Response.ContentType = "text/plain";
                    ////context.Response.Write(js.Serialize(rs)); // 返回Json格式的内容
                    //string a = "";
                    //a = js.Serialize(rs);
                    //if (!String.IsNullOrEmpty(a))
                    //{
                    //    a = "<script language='javascript'>alert('" + a + "');</script>";
                    //    Response.Write(a);   //HttpContext.Current.Response.Write(a);
                    //    Response.End();
                    //}
                    #endregion
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }

        }
        ////调用名称
        public static int JudgeName(string title, int a)
        {
            int TitleNum = 20;

            switch (title)
            {
                case "编号":
                    TitleNum = 0;
                    return TitleNum;
                case "工程及费用名称":
                case "名称":
                    TitleNum = 1;
                    return TitleNum;
                case "单位":
                    TitleNum = 2;
                    return TitleNum;
                case "建筑工程费":
                case "建筑工程费（万元）":
                    TitleNum = 3;
                    return TitleNum;
                case "安装工程费":
                case "安装工程费（万元）":
                    TitleNum = 4;
                    return TitleNum;
                case "设备购置费":
                case "设备购置费（万元）":
                    TitleNum = 5;
                    return TitleNum;
                case "工程建设其他费用":
                case "工程建设其他费用（万元）":
                    TitleNum = 6;
                    return TitleNum;
                case "合计":
                case "合价":
                case "合计（万元）":
                case "合价（万元）":
                    TitleNum = 7;
                    return TitleNum;
                case "数量":
                    TitleNum = 8;
                    return TitleNum;
                case "指标":
                case "指标（万元）":
                    TitleNum = 9;
                    return TitleNum;
                default:
                    Console.WriteLine("第" + a + "列的名称有误，无法匹配格式");
                    return TitleNum;
            }
        }
        /// <summary>
        /// 计算字符串中子串出现的次数
        /// </summary>
        /// <param name="str">字符串</param>
        /// <param name="substring">子串</param>
        /// <returns>出现的次数</returns>
        static int SubstringCount(string str, string substring)
        {
            if (str.Contains(substring))
            {
                string strReplaced = str.Replace(substring, "");
                return (str.Length - strReplaced.Length) / substring.Length;
            }

            return 0;
        }
    }
}