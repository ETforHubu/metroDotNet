using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using RoadFlow.Utility;
using System.Data.SqlClient;

namespace WebForm.Platform.DirectoryCost
{
    public partial class DirectoriesBody : Common.BasePage
    {
        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        RoadFlow.Data.Model.Directory directory = null;
        SqlHelper sqlHelper = new SqlHelper();
        string id;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                BindRepeaterData(id);
            }
            ////获得当前的ID
            //string a = "";
            //string psw = id;  //需要显示的变量
            //a = "<script language='javascript'>alert('" + psw + "');</script>";
            //Response.Write(a);
            //Response.End();


            //this.Code.Attributes.Add("validate_url", "CheckCode.ashx?id=" + id);
            if (id.IsGuid())
            {
                directory = bdirectory.Get(id.ToGuid());
            }
            if (directory == null)
            {
                directory = bdirectory.GetRoot();
            }
            if (IsPostBack && directory != null)
            {
                string refreshID = directory.ParentID == Guid.Empty ? directory.ID.ToString() : directory.ParentID.ToString();
                //删除
                if (!Request.Form["Delete"].IsNullOrEmpty())
                {
                    if (directory.ParentID.ToString() != "00000000-0000-0000-0000-000000000000")
                    {
                        //string values = Request.Form["Values"].Replace("\\", "/");
                        //string newvalue = Server.MapPath("/") + values + "/";
                        int i = bdirectory.DeleteAndAllChilds(directory.ID);
                        //string sql = "DELETE FROM [dbo].[FileModel] WHERE path like '%" + values + "%'";
                        //sqlHelper.executeNonQuery(sql);
                        //bdirectory.RefreshCache();
                        //if (Directory.Exists(newvalue))
                        //{
                        //    Directory.Delete(newvalue, true);
                        //}
                        //if (File.Exists(newvalue))
                        //{
                        //    Directory.Delete(newvalue, true);
                        //}
                        RoadFlow.Platform.Log.Add("删除了树形目录及其下级共" + i.ToString() + "项", directory.Serialize(), RoadFlow.Platform.Log.Types.存储目录);
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('删除成功!');parent.frames[0].reLoad('" + refreshID + "');window.location='DirectoriesBody.aspx?id=" + directory.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('不能删除该目录!');parent.frames[0].reLoad('" + refreshID + "');window.location='DirectoriesBody.aspx?id=" + directory.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';", true);
                    }                   
                }
                //保存
                if (!Request.Form["Save"].IsNullOrEmpty())
                {

                    int pointNumber = 0;//层级结构(底层)
                    int pointMin = 100;//层级结构（顶层）
                    
                    //查找层级结构
                    foreach (RepeaterItem dlItem in repList.Items) {
                        HiddenField hSnumber = (HiddenField)dlItem.FindControl("HiddenField4");
                        if (SubstringCount(hSnumber.Value, ".")> pointNumber) {
                            pointNumber = SubstringCount(hSnumber.Value, ".");
                        }
                        if (SubstringCount(hSnumber.Value, ".")< pointMin)
                        {
                            pointMin = SubstringCount(hSnumber.Value, ".");
                        }
                    }

                    decimal[] tempConstructionCost = new decimal[pointNumber+1];//定义每级建筑工程费用零时变量
                    decimal[] tempDeviceCost = new decimal[pointNumber + 1];//定义每级设备费用零时变量
                    decimal[] tempInstallCost = new decimal[pointNumber + 1];//定义每级安装费用零时变量
                    decimal[] tempOtherCost = new decimal[pointNumber + 1];//定义每级其他费用零时变量
                    string previousSnumber = "";//记录上一个编号

                    for (int i= repList.Items.Count-1;i>=0;i--)
                    {
                        RoadFlow.Data.Model.Directory newDirectory = new RoadFlow.Data.Model.Directory();
                        HiddenField hid = (HiddenField)repList.Items[i].FindControl("HiddenField1");//取ID
                        HiddenField hParentID = (HiddenField)repList.Items[i].FindControl("HiddenField2");//取ParentID
                        HiddenField hTitle = (HiddenField)repList.Items[i].FindControl("HiddenField3");//取ParentID
                        HiddenField hSnumber = (HiddenField)repList.Items[i].FindControl("HiddenField4");

                        TextBox tbUnit = new TextBox();
                        tbUnit = (TextBox)repList.Items[i].FindControl("txtUnit");
                        TextBox tbConstructionCost = new TextBox();
                        TextBox tbDeviceCost = new TextBox();
                        TextBox tbInstallCost = new TextBox();
                        TextBox tbOtherCost = new TextBox();
                        TextBox tbQuantity = new TextBox();
                        tbConstructionCost = (TextBox)repList.Items[i].FindControl("txtConstructionCost");
                        tbDeviceCost = (TextBox)repList.Items[i].FindControl("txtDeviceCost");
                        tbInstallCost = (TextBox)repList.Items[i].FindControl("txtInstallCost");
                        tbOtherCost = (TextBox)repList.Items[i].FindControl("txtOtherCost");
                        tbQuantity = (TextBox)repList.Items[i].FindControl("txtQuantity");
                        newDirectory.ID = new Guid(hid.Value);
                        newDirectory.Title = hTitle.Value;
                        newDirectory.Unit = tbUnit.Text;
                        newDirectory.ParentID = new Guid(hParentID.Value);
                        if (!tbQuantity.Text.IsNullOrEmpty())
                            newDirectory.Quantity = Convert.ToDecimal(tbQuantity.Text);
                        if (!tbConstructionCost.Text.IsNullOrEmpty())
                            newDirectory.ConstructionCost = Convert.ToDecimal(tbConstructionCost.Text);
                        if (!tbDeviceCost.Text.IsNullOrEmpty())
                            newDirectory.DeviceCost = Convert.ToDecimal(tbDeviceCost.Text);
                        if (!tbInstallCost.Text.IsNullOrEmpty())
                            newDirectory.InstallCost = Convert.ToDecimal(tbInstallCost.Text);
                        if (!tbOtherCost.Text.IsNullOrEmpty())
                            newDirectory.OtherCost = Convert.ToDecimal(tbOtherCost.Text);

                        # region 无限级的数据更新
                        //判断是否位于底层
                        if (SubstringCount(hSnumber.Value, ".") == pointNumber) {
                            tempConstructionCost[0] += newDirectory.ConstructionCost;
                            tempDeviceCost[0] += newDirectory.DeviceCost;
                            tempInstallCost[0] += newDirectory.InstallCost;
                            tempOtherCost[0] += newDirectory.OtherCost;
                            bdirectory.Update(newDirectory);
                            previousSnumber = hSnumber.Value;
                        }
                        else {
                            int currentLevel = pointNumber - SubstringCount(hSnumber.Value, ".");
                            if (previousSnumber == "" || (SubstringCount(previousSnumber, ".") != SubstringCount(hSnumber.Value, ".") + 1))
                            {
                                tempConstructionCost[currentLevel] += newDirectory.ConstructionCost;
                                tempDeviceCost[currentLevel] += newDirectory.DeviceCost;
                                tempInstallCost[currentLevel] += newDirectory.InstallCost;
                                tempOtherCost[currentLevel] += newDirectory.OtherCost;
                            }
                            else {
                                tempConstructionCost[currentLevel] += tempConstructionCost[currentLevel - 1];
                                tempDeviceCost[currentLevel] += tempDeviceCost[currentLevel - 1];
                                tempInstallCost[currentLevel] += tempInstallCost[currentLevel - 1];
                                tempOtherCost[currentLevel] += tempOtherCost[currentLevel - 1];
                                newDirectory.ConstructionCost = tempConstructionCost[currentLevel - 1];
                                newDirectory.DeviceCost = tempDeviceCost[currentLevel - 1];
                                newDirectory.InstallCost = tempInstallCost[currentLevel - 1];
                                newDirectory.OtherCost = tempOtherCost[currentLevel - 1];
                            }
                            bdirectory.Update(newDirectory);
                            tempConstructionCost[currentLevel - 1] = 0;
                            tempDeviceCost[currentLevel - 1] = 0;
                            tempInstallCost[currentLevel - 1] = 0;
                            tempOtherCost[currentLevel - 1] = 0;
                            previousSnumber = hSnumber.Value;
                            if (SubstringCount(hSnumber.Value, ".") == pointMin)
                            {
                                updateParentNodes(newDirectory.ParentID);
                            }
                        }


                        #endregion
                        #region 有限级的数据更新
                        //if (SubstringCount(hSnumber.Value, ".") == pointNumber)
                        //{
                        //    tempConstructionCost[0] += newDirectory.ConstructionCost;
                        //    tempDeviceCost[0] += newDirectory.DeviceCost;
                        //    tempInstallCost[0] += newDirectory.InstallCost;
                        //    tempOtherCost[0] += newDirectory.OtherCost;
                        //    bdirectory.Update(newDirectory);
                        //}
                        //else
                        //{
                        //    if (SubstringCount(hSnumber.Value, ".") == pointNumber - 1)
                        //    {
                        //        tempConstructionCost[1] += tempConstructionCost[0];
                        //        tempDeviceCost[1] += tempDeviceCost[0];
                        //        tempInstallCost[1] += tempInstallCost[0];
                        //        tempOtherCost[1] += tempOtherCost[0];
                        //        newDirectory.ConstructionCost = tempConstructionCost[0];
                        //        newDirectory.DeviceCost = tempDeviceCost[0];
                        //        newDirectory.InstallCost = tempInstallCost[0];
                        //        newDirectory.OtherCost = tempOtherCost[0];
                        //        bdirectory.Update(newDirectory);
                        //        tempConstructionCost[0] = 0;
                        //        tempDeviceCost[0] = 0;
                        //        tempInstallCost[0] = 0;
                        //        tempOtherCost[0] = 0;
                        //        if (SubstringCount(hSnumber.Value, ".") == pointMin)
                        //        {
                        //            updateParentNodes(newDirectory.ParentID);
                        //        }
                        //    }
                        //    else {
                        //        if (SubstringCount(hSnumber.Value, ".") == pointNumber - 2)
                        //        {
                        //            tempConstructionCost[2] += tempConstructionCost[1];
                        //            tempDeviceCost[2] += tempDeviceCost[1];
                        //            tempInstallCost[2] += tempInstallCost[1];
                        //            tempOtherCost[2] += tempOtherCost[1];
                        //            newDirectory.ConstructionCost = tempConstructionCost[1];
                        //            newDirectory.DeviceCost = tempDeviceCost[1];
                        //            newDirectory.InstallCost = tempInstallCost[1];
                        //            newDirectory.OtherCost = tempOtherCost[1];
                        //            bdirectory.Update(newDirectory);
                        //            tempConstructionCost[1] = 0;
                        //            tempDeviceCost[1] = 0;
                        //            tempInstallCost[1] = 0;
                        //            tempOtherCost[1] = 0;
                        //            if (SubstringCount(hSnumber.Value, ".") == pointMin)
                        //            {
                        //                updateParentNodes(newDirectory.ParentID);
                        //            }
                        //        }
                        //        else {
                        //            if (SubstringCount(hSnumber.Value, ".") == pointNumber - 3)
                        //            {
                        //                tempConstructionCost[3] += tempConstructionCost[2];
                        //                tempDeviceCost[3] += tempDeviceCost[2];
                        //                tempInstallCost[3] += tempInstallCost[2];
                        //                tempOtherCost[3] += tempOtherCost[2];
                        //                newDirectory.ConstructionCost = tempConstructionCost[2];
                        //                newDirectory.DeviceCost = tempDeviceCost[2];
                        //                newDirectory.InstallCost = tempInstallCost[2];
                        //                newDirectory.OtherCost = tempOtherCost[2];
                        //                tempConstructionCost[2] = 0;
                        //                tempDeviceCost[2] = 0;
                        //                tempInstallCost[2] = 0;
                        //                tempOtherCost[2] = 0;
                        //                bdirectory.Update(newDirectory);
                        //                if (SubstringCount(hSnumber.Value, ".") == pointMin)
                        //                {
                        //                    updateParentNodes(newDirectory.ParentID);
                        //                }
                        //            }

                        //        }
                        //    }
                        //}
                        #endregion
                    }
                    BindRepeaterData(id);

                }
            }
            if (directory != null)
            {
                this.Title1.Value = directory.Title;
                this.costID.Value = directory.ID.ToString();
                this.SN.Value = directory.SNumber;
            }
        }

        private void BindRepeaterData(string costID)
        {
            try
            {
                List<RoadFlow.Data.Model.DirectoryDisplay> listDirectoryDisplay = new List<RoadFlow.Data.Model.DirectoryDisplay>();
                List<RoadFlow.Data.Model.Directory> listDirectory = new List<RoadFlow.Data.Model.Directory>();
                RoadFlow.Data.Model.Directory self = new RoadFlow.Data.Model.Directory();
                RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
                Guid id = new Guid(costID);
                self = bdirectory.Get(id);
                listDirectory = bdirectory.GetAllChilds(id);
                listDirectory.Insert(0,self);
  
                for (int i = 0; i<listDirectory.Count;i++)
                {
                    RoadFlow.Data.Model.DirectoryDisplay temp = new RoadFlow.Data.Model.DirectoryDisplay();
                    temp.ID = listDirectory[i].ID;
                    temp.Unit = listDirectory[i].Unit;
                    temp.ParentID = listDirectory[i].ParentID;
                    temp.Title = listDirectory[i].Title;
                    temp.Quantity = listDirectory[i].Quantity;
                    temp.ConstructionCost = listDirectory[i].ConstructionCost;
                    temp.InstallCost = listDirectory[i].InstallCost;
                    temp.DeviceCost = listDirectory[i].DeviceCost;
                    temp.OtherCost = listDirectory[i].OtherCost;
                    temp.TotalCost = temp.ConstructionCost + temp.InstallCost + temp.DeviceCost+ temp.OtherCost;
                    if (temp.Quantity != 0)
                        temp.Quota = Math.Round(temp.TotalCost / temp.Quantity,3);
                    else
                        temp.Quota = 0;
                    temp.SNumber = listDirectory[i].SNumber;
                    temp.Code = listDirectory[i].Code;
                    temp.Value = listDirectory[i].Value;
                    temp.Sort = listDirectory[i].Sort;
                    listDirectoryDisplay.Add(temp);
                }

                repList.DataSource = listDirectoryDisplay;
                repList.DataBind();            
            }
            catch (Exception ex)
            {
                string a = "数据加载失败！" + ex.Message;
                if (!String.IsNullOrEmpty(a))
                {
                    a = "<script language='javascript'>alert('" + a + "');</script>";
                    Response.Write(a);   //HttpContext.Current.Response.Write(a);
                    //Response.End();
                }
            }
        }

        public void updateParentNodes(Guid id)
        {
            if (id != new Guid("2A2BBEE3-9883-4185-A64C-4430AA20E0CB"))
            {
                RoadFlow.Data.Model.Directory directory = new RoadFlow.Data.Model.Directory();
                RoadFlow.Data.Model.Directory directoryOld = new RoadFlow.Data.Model.Directory();
                List<RoadFlow.Data.Model.Directory> listDirectory = new List<RoadFlow.Data.Model.Directory>();
                RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
                directoryOld = bdirectory.Get(id);
                directory = directoryOld;
                listDirectory = bdirectory.GetFirstChilds(id);
                decimal constructionCost = 0;
                decimal deviceCost = 0;
                decimal installCost = 0;
                decimal otherCost = 0;
                for (int i = 0; i < listDirectory.Count; i++)
                {
                    constructionCost = constructionCost + listDirectory[i].ConstructionCost;
                    deviceCost = deviceCost + listDirectory[i].DeviceCost;
                    installCost = installCost + listDirectory[i].InstallCost;
                    otherCost = otherCost + listDirectory[i].OtherCost;
                }
                directory.ConstructionCost = constructionCost;
                directory.DeviceCost = deviceCost;
                directory.InstallCost = installCost;
                directory.OtherCost = otherCost;
                bdirectory.Update(directory);
                updateParentNodes(directory.ParentID);
            }
            else
            {
                return;
            }
        }

        protected void repList_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

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