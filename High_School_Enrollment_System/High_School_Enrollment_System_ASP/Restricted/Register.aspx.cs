using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace High_School_Enrollment_System_ASP.Restricted
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = username.Text };

            IdentityResult result = manager.Create(user, password.Text);

            if (result.Succeeded)
            {

                Response.Redirect("/Restricted/Login.aspx");
            }
            else
            {
                alert.Visible = true;
            }
        }
    }
}