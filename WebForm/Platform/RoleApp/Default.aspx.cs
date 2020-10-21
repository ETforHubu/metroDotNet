using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.RoleApp
{
    public partial class Default : Common.BasePage
    {
        protected List<RoadFlow.Data.Model.Role> RoleList = new List<RoadFlow.Data.Model.Role>();
        protected int RoleLength;
        protected string DefaultRoleID;
        protected void Page_Load(object sender, EventArgs e)
        {
            RoleList = new RoadFlow.Platform.Role().GetAll();
     
            if (IsPostBack && !Request.Form["Search"].IsNullOrEmpty())
            {
                string name = Request.Form["Name"];
                if (!name.IsNullOrEmpty())
                {
                    RoleList = RoleList.Where(p => p.Name.Contains(name)).ToList();
                }
            }
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
    }
}