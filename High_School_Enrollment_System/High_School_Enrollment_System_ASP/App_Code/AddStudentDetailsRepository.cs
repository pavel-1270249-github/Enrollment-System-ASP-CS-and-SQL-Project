using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace High_School_Enrollment_System_ASP.App_Code
{

    public class AddStudentDetailsRepository
    {
        SqlConnection con;
        public AddStudentDetailsRepository()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HighSchoolEnrollmentSystemDB"].ConnectionString);
        }
        public IList<AddStudentDetails> Get()
        {

            using (SqlDataAdapter da = new SqlDataAdapter("SELECT StudentDetails.DetailID, StudentDetails.StudentID, " +
                "StudentDetails.FathersName, StudentDetails.FathersOccupation, StudentDetails.MothersName, StudentDetails.MothersOccupation, " +
                "StudentDetails.GuardiansName, StudentDetails.GuardiansOccupation, StudentDetails.ParentsAddress, StudentDetails.ParentsPhone " +
                "FROM StudentDetails INNER JOIN Students ON StudentDetails.DetailID = Students.StudentID", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.AsEnumerable()
                     .Select(r => new AddStudentDetails
                     {
                         DetailID = r.Field<int>("DetailID"),
                         StudentID = r.Field<int>("StudentID"),
                         FathersName = r.Field<string>("FathersName"),
                         FathersOccupation = r.Field<string>("FathersOccupation"),
                         MothersName = r.Field<string>("MothersName"),
                         MothersOccupation = r.Field<string>("MothersOccupation"),
                         GuardiansName = r.Field<string>("GuardiansName"),
                         GuardiansOccupation = r.Field<string>("GuardiansOccupation"),
                         ParentsAddress = r.Field<string>("ParentsAddress"),
                         ParentsPhone= r.Field<string>("ParentsPhone")
                     })
                     .ToList();

            }

        }
        public void Insert(AddStudentDetails sd)
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO StudentDetails VALUES ( @s, @fn, @fo, @mn, @mo, @gn, @go, @a, @p)", con))
            {
                cmd.Parameters.AddWithValue("@s", sd.StudentID);
                cmd.Parameters.AddWithValue("@fn", sd.FathersName);
                cmd.Parameters.AddWithValue("@fo", sd.FathersOccupation);
                cmd.Parameters.AddWithValue("@mn", sd.MothersName);
                cmd.Parameters.AddWithValue("@mo", sd.MothersOccupation);
                cmd.Parameters.AddWithValue("@gn", sd.GuardiansName);
                cmd.Parameters.AddWithValue("@go", sd.GuardiansOccupation);
                cmd.Parameters.AddWithValue("@a", sd.ParentsAddress);
                cmd.Parameters.AddWithValue("@p", sd.ParentsPhone);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Update(AddStudentDetails sd)
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE StudentDetails SET  StudentID=@s, FathersName=@fn, FathersOccupation=@fo, MothersName=@mn, MothersOccupation=@mo, GuardiansName=@gn, GuardiansOccupation=@go, ParentsAddress=@a, ParentsPhone=@p Where DetailID=@d", con))
            {
                cmd.Parameters.AddWithValue("@s", sd.StudentID);
                cmd.Parameters.AddWithValue("@fn", sd.FathersName);
                cmd.Parameters.AddWithValue("@fo", sd.FathersOccupation);
                cmd.Parameters.AddWithValue("@mn", sd.MothersName);
                cmd.Parameters.AddWithValue("@mo", sd.MothersOccupation);
                cmd.Parameters.AddWithValue("@gn", sd.GuardiansName);
                cmd.Parameters.AddWithValue("@go", sd.GuardiansOccupation);
                cmd.Parameters.AddWithValue("@a", sd.ParentsAddress);
                cmd.Parameters.AddWithValue("@p", sd.ParentsPhone);
                cmd.Parameters.AddWithValue("@d", sd.DetailID);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Delete(AddStudentDetails sd)
        {
            using (SqlCommand cmd = new SqlCommand("DELETE StudentDetails Where DetailID=@d", con))
            {

                cmd.Parameters.AddWithValue("@d", sd.DetailID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}