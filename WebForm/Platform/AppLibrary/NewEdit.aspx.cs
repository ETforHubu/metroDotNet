using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Platform.AppLibrary
{
    public partial class NewEdit :Common.BasePage
    {
        protected int RoleLength;
        protected string DefaultRoleID;
        RoadFlow.Platform.AppLibrary bappLibrary = new RoadFlow.Platform.AppLibrary();
        RoadFlow.Data.Model.AppLibrary appLibrary = null;
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

            string editID = Request.QueryString["id"];
            string type = Request.QueryString["typeid"];
            if (editID.IsGuid())
            {
                appLibrary = bappLibrary.Get(editID.ToGuid());
            }
            if (!IsPostBack)
            {
                if (appLibrary != null)
                {
                    this.Title1.Value = appLibrary.Title;
                    this.Address.Value = appLibrary.Address;
                    this.TypeOptions.Text = new RoadFlow.Platform.AppLibrary().GetTypeOptions(appLibrary.Type.ToString());
                    this.OpenModelOptions.Text = new RoadFlow.Platform.Dictionary().GetOptionsByCode("appopenmodel", value: appLibrary.OpenMode.ToString());
                    this.Params.Value = appLibrary.Params;
                    this.Width.Value = appLibrary.Width.ToString();
                    this.Height.Value = appLibrary.Height.ToString();
                    this.UseMember.Value = appLibrary.UseMember;
                    this.Note.Value = appLibrary.Note;
                }
                else
                {
                    this.TypeOptions.Text = new RoadFlow.Platform.AppLibrary().GetTypeOptions("");
                    this.OpenModelOptions.Text = new RoadFlow.Platform.Dictionary().GetOptionsByCode("appopenmodel");
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = Request.Form["title1"];
            string address = Request.Form["address"];
            string openModel = Request.Form["openModel"];
            string width = Request.Form["width"];
            string height = Request.Form["height"];
            string params1 = Request.Form["Params"];
            string note = Request.Form["note"];
            string useMember = Request.Form["UseMember"];
            string type = Request.Form["type"];

            bool isAdd = false;
            string oldXML = string.Empty;
            if (appLibrary == null)
            {
                isAdd = true;
                appLibrary = new RoadFlow.Data.Model.AppLibrary();
                appLibrary.ID = Guid.NewGuid();
            }
            else
            {
                oldXML = appLibrary.Serialize();
            }
            appLibrary.Address = address.Trim();
            appLibrary.Height = height.ToIntOrNull();
            appLibrary.Note = note;
            appLibrary.OpenMode = openModel.ToInt();
            appLibrary.Params = params1;
            appLibrary.Title = title;
            appLibrary.Type = type.ToGuid();
            appLibrary.Width = width.ToIntOrNull();

            if (!useMember.IsNullOrEmpty())
            {
                appLibrary.UseMember = useMember;
            }
            else
            {
                appLibrary.UseMember = null;
            }
            if (isAdd)
            {
                bappLibrary.Add(appLibrary);
                RoadFlow.Platform.Log.Add("添加了应用程序库", appLibrary.Serialize(), RoadFlow.Platform.Log.Types.角色应用);
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('添加成功!');new RoadUI.Window().reloadOpener();new RoadUI.Window().close();", true);
            }
            else
            {
                bappLibrary.Update(appLibrary);
                RoadFlow.Platform.Log.Add("修改了应用程序库", "", RoadFlow.Platform.Log.Types.角色应用, oldXML, appLibrary.Serialize());
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "ok", "alert('修改成功!');new RoadUI.Window().reloadOpener();new RoadUI.Window().close();", true);
            }
            bappLibrary.UpdateUseMemberCache(appLibrary.ID);
            bappLibrary.ClearCache();
            new RoadFlow.Platform.RoleApp().ClearAllDataTableCache();
        }
        protected override bool CheckUrl(bool isEnd = true)
        {
            return true;
        }

        protected override bool CheckLogin(bool isRedirect = true)
        {
            return true;
        }

    }
    }
