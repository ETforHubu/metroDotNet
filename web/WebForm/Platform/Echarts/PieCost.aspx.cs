using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RoadFlow.Utility;
using RoadFlow.Data.Model;
using System.Text;

namespace WebForm.Platform.Echarts
{
    public partial class PieCost : Common.BasePage
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
                        { "Note", "建筑工程费建筑工程费（万元）" },
                        { "InstallCost", "安装工程费（万元）" },
                        { "DeviceTotalCost", "设备购置费（万元）" },
                        { "OtherCost", "工程建设其他费用（万元）" },
                        { "Total", "合计（万元）" },
                        { "Quantity", "数量" },
                        { "Quota", "指标（万元）" }
                    };

                    // 1.2解析文件，存放到一个List集合里
                    List<StudentExcel> enlist = ExcelHelper.ExcelToEntityList<StudentExcel>(cellheader, filePath, out errorMsg);

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
                        Guid twoLevelParentID = Guid.Parse("2a2abab3-9883-4185-a64c-4430aa20e0cb"); 
                        Guid threeLevelParentID = Guid.Parse("2a2acac3-9883-4185-a64c-4430aa20e0cb");
                        Guid fourLevelParentID = Guid.Parse("2a2aeac3-9883-4185-a64c-4430aa20e0cb");
                        for (int i = 0; i < enlist.Count; i++)
                        {
                            Directory user = new Directory();
                            Guid userID = Guid.NewGuid();
                            user.ID = userID;
                            user.Title = enlist[i].Name;
                            user.Quantity = Convert.ToDecimal(enlist[i].Quantity);
                            user.Unit = enlist[i].Account;
                            user.ConstructionCost = Convert.ToDecimal(enlist[i].Note);
                            user.InstallCost = Convert.ToDecimal(enlist[i].InstallCost);
                            user.DeviceCost = Convert.ToDecimal(enlist[i].DeviceCost);
                            user.OtherCost = Convert.ToDecimal(enlist[i].OtherCost);
                            if (enlist[i].SNumber.Length ==1)      //顶级
                            {              
                                user.ParentID = Guid.Parse("2a2bbee3-9883-4185-a64c-4430aa20e0cb");
                                twoLevelParentID = userID;
                            }
                            else
                            {
                                if (enlist[i].SNumber.Length == 3)
                                {
                                    user.ParentID = twoLevelParentID;
                                    threeLevelParentID = userID;
                                }
                                else {
                                    if (enlist[i].SNumber.Length == 5) {
                                        user.ParentID = threeLevelParentID;
                                        fourLevelParentID = userID;
                                    }else {
                                        if (enlist[i].SNumber.Length == 2)
                                        {
                                            user.ParentID = fourLevelParentID;
                                        }
                                    }    
                                }
                            }
                            //RoadFlow.Data.Model.Directory user = new RoadFlow.Data.Model.Directory();
                            //Guid userID = Guid.NewGuid();
                            //user.ID = userID;
                            //user.Name = enlist[i].Name;
                            //user.Quantity = Convert.ToDecimal(enlist[i].Quantity);
                            //user.Account = enlist[i].Account;
                            //user.Note = Convert.ToDecimal(enlist[i].Note);
                            //user.Password = busers.GetUserEncryptionPassword(userID.ToString(), busers.GetInitPassword());
                            //user.Sort = 1;
                            //user.Status = 0;
                            busers.Add(user);
                            string a = "导入Excel数据成功！";
                            if (!String.IsNullOrEmpty(a))
                            {
                                a = "<script language='javascript'>alert('" + a + "');</script>";
                                Response.Write(a);   //HttpContext.Current.Response.Write(a);
                                //Response.End();
                            }
                        }
                    }
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
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }

        }
    }
}