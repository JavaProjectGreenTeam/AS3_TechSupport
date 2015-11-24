using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cuwRegister_CreatingUser(object sender, LoginCancelEventArgs e) {
            if (cuwRegister.UserName !="") {
                DropDownList role = (DropDownList)cuwRegister.CreateUserStep.ContentTemplateContainer.FindControl("ddlRoles");
                Roles.AddUserToRole(cuwRegister.UserName, role.SelectedItem.Text);
            }
        }
    }
}