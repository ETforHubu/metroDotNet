using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.Calculator
{
    public partial class Default : Common.BasePage
    {
        protected List<RoadFlow.Data.Model.DirectoryDisplay> UserList = new List<RoadFlow.Data.Model.DirectoryDisplay>();
        protected void Page_Load(object sender, EventArgs e)
        {
            RoadFlow.Platform.Directory bou = new RoadFlow.Platform.Directory();
            string name = string.Empty;
            if (IsPostBack)
            {
                name = Request.Form["Name"];
                string sn= Request.Form["StationNumber"];
                string lg = Request.Form["Length"];
                //UserList = bou.GetAll();
                RoadFlow.Data.Model.DirectoryDisplay temp = new RoadFlow.Data.Model.DirectoryDisplay();

                //车站
                RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
                List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetByTitle();
                Guid parentID = listdirectory[0].ID;
                RoadFlow.Data.Model.Directory quota = new RoadFlow.Data.Model.Directory();
                quota = bdirectory.GetParentIDAndTitle(parentID, "车站");
                temp.SNumber = "1.1";
                temp.Title = "车站";
                temp.Unit = "m2";
                temp.Quantity = Convert.ToDecimal(sn) * 17500;
                temp.ConstructionCost = temp.Quantity * quota.Quota;
                temp.TotalCost = temp.ConstructionCost;
                temp.Quota = Math.Round(temp.TotalCost / temp.Quantity,3);
                temp.InstallCost = 0;
                temp.DeviceCost = 0;
                temp.OtherCost = 0;
                UserList.Add(temp);

                //区间
                RoadFlow.Data.Model.DirectoryDisplay temp1 = new RoadFlow.Data.Model.DirectoryDisplay();
                RoadFlow.Data.Model.Directory areas = new RoadFlow.Data.Model.Directory();
                areas = bdirectory.GetParentIDAndTitle(parentID, "区间");
                temp1.SNumber = "1.2";
                temp1.Title = "区间";
                temp1.Unit = "双线延米";
                temp1.Quantity = (Convert.ToDecimal(lg) * 1000) - (Convert.ToDecimal(sn) * 220);
                temp1.ConstructionCost = temp1.Quantity * areas.Quota;
                temp1.InstallCost = 0;
                temp1.DeviceCost = 0;
                temp1.OtherCost = 0;
                temp1.TotalCost = temp1.ConstructionCost + temp1.InstallCost + temp1.DeviceCost + temp1.OtherCost;
                temp1.Quota = Math.Round(temp1.TotalCost / temp1.Quantity,3);
                UserList.Add(temp1);

                //信号
                RoadFlow.Data.Model.DirectoryDisplay temp2 = new RoadFlow.Data.Model.DirectoryDisplay();
                RoadFlow.Data.Model.Directory signal = new RoadFlow.Data.Model.Directory();
                signal = bdirectory.GetParentIDAndTitle(parentID, "信号系统");
                temp2.SNumber = "1.3";
                temp2.Title = "信号";
                temp2.Unit = "正线公里";
                temp2.Quantity = Convert.ToDecimal(lg);
                temp2.ConstructionCost = 0;
                temp2.InstallCost = Math.Round((temp2.Quantity / 30) * signal.InstallCost,3);
                temp2.DeviceCost = Math.Round((temp2.Quantity / 30) * signal.DeviceCost,3);
                temp2.OtherCost = 0;
                temp2.TotalCost = temp2.ConstructionCost + temp2.InstallCost + temp2.DeviceCost + temp2.OtherCost;
                temp2.Quota = Math.Round(temp2.TotalCost / temp2.Quantity,3);
                UserList.Add(temp2);

                //线路
                RoadFlow.Data.Model.DirectoryDisplay temp3 = new RoadFlow.Data.Model.DirectoryDisplay();
                temp3.SNumber = "1";
                temp3.Title = name;
                temp3.Unit = "正线公里";
                temp3.Quantity = Convert.ToDecimal(lg);
                temp3.ConstructionCost = temp.ConstructionCost + temp1.ConstructionCost + temp2.ConstructionCost;
                temp3.InstallCost = temp.InstallCost + temp1.InstallCost + temp2.InstallCost;
                temp3.DeviceCost = temp.DeviceCost + temp1.DeviceCost + temp2.DeviceCost;
                temp3.OtherCost = temp.OtherCost + temp1.OtherCost + temp2.OtherCost;
                temp3.TotalCost = temp3.ConstructionCost + temp3.InstallCost + temp3.DeviceCost + temp3.OtherCost;
                temp3.Quota = Math.Round(temp3.TotalCost / temp3.Quantity,3);
                UserList.Insert(0, temp3);
            }
            else
            {
                name = Request.QueryString["Name"];
            }
           
        }
    }
}