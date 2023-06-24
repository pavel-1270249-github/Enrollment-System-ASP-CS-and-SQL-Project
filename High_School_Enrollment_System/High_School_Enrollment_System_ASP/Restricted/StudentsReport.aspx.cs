using CrystalDecisions.Web;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace High_School_Enrollment_System_ASP.Restricted
{
    public partial class StudentsReport1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HighSchoolEnrollmentSystemDB"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Students", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Students");
                    CrystalReport1 rpt = new CrystalReport1();
                    //rpt.SetDataSource(ds);
                    CrystalReportViewer1.ReportSource = rpt;
                   CrystalReportViewer1.RefreshReport();
                }
            }
        }
    }
}