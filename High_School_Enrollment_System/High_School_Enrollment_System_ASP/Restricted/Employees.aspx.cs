using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace High_School_Enrollment_System_ASP.Restricted
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload fu = FormView1.FindControl("EmployeeImage") as FileUpload;
            if (fu != null)
            {
                if (fu.HasFile)
                {
                    string ext = Path.GetExtension(fu.FileName);
                    string fileName = Path.GetFileNameWithoutExtension(Path.GetRandomFileName()) + ext;
                    string savePath = Path.Combine(Server.MapPath("~/Uploads"), fileName);
                    fu.PostedFile.SaveAs(savePath);
                    e.Values["EmployeeImage"] = fileName;
                }
                else
                {
                    e.Cancel = true;
                }

            }
            else
            {
                e.Cancel = true;
            }
        }
    }
}