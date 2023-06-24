using High_School_Enrollment_System_ASP.Restricted;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace High_School_Enrollment_System_ASP.App_Code
{
    public class StudentsRepository
    {
        SqlConnection con;
        public StudentsRepository()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HighSchoolEnrollmentSystemDB"].ConnectionString);
        }
        public IList<Student> Get()
        {

            using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Students", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.AsEnumerable()
                     .Select(r => new Student
                     {
                         StudentID = r.Field<int>("StudentID"),
                         FirstName = r.Field<string>("FirstName"),
                         LastName = r.Field<string>("LastName"),
                         Age = r.Field<int>("Age"),
                         Gender = r.Field<string>("Gender"),
                         BirthDate = r.Field<DateTime>("BirthDate"),
                         BirthPlace = r.Field<string>("BirthPlace"),
                         Nationality = r.Field<string>("Nationality"),
                         Religion = r.Field<string>("Religion"),
                         StudentPhone = r.Field<string>("StudentPhone"),
                         Status = r.Field<bool>("Status"),
                         StudentImage = r.Field<string>("StudentImage"),
                         Address = r.Field<string>("Address")
                     })
                     .ToList();
            }
        }
        public void Insert(Student s)
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO Students VALUES (@fn, @ln, @a, @g, @bd, @bp, @n, @r, @sp, @s, @si, @ad)", con))
            {
                cmd.Parameters.AddWithValue("@fn", s.FirstName);
                cmd.Parameters.AddWithValue("@ln", s.LastName);
                cmd.Parameters.AddWithValue("@a", s.Age);
                cmd.Parameters.AddWithValue("@g", s.Gender);
                cmd.Parameters.AddWithValue("@bd", s.BirthDate);
                cmd.Parameters.AddWithValue("@bp", s.BirthPlace);
                cmd.Parameters.AddWithValue("@n", s.Nationality);
                cmd.Parameters.AddWithValue("@r", s.Religion);
                cmd.Parameters.AddWithValue("@sp", s.StudentPhone);
                cmd.Parameters.AddWithValue("@s", s.Status);
                cmd.Parameters.AddWithValue("@si", s.StudentImage);
                cmd.Parameters.AddWithValue("@ad", s.Address);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Update(Student s)
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE StudentDetails SET  FirstName=@fn, LastName=@ln, Age=@a, Gender=@g, BirthDate=@bd, BirthPlace=@bp, Nationality=@n, StudentPhone=@sp, Status=@s, StudentImage=@si, Address=@ad   Where StudentID=@i", con))
            {

                cmd.Parameters.AddWithValue("@fn", s.FirstName);
                cmd.Parameters.AddWithValue("@ln", s.LastName);
                cmd.Parameters.AddWithValue("@a", s.Age);
                cmd.Parameters.AddWithValue("@g", s.Gender);
                cmd.Parameters.AddWithValue("@bd", s.BirthDate);
                cmd.Parameters.AddWithValue("@bp", s.BirthPlace);
                cmd.Parameters.AddWithValue("@n", s.Nationality);
                cmd.Parameters.AddWithValue("@r", s.Religion);
                cmd.Parameters.AddWithValue("@sp", s.StudentPhone);
                cmd.Parameters.AddWithValue("@s", s.Status);
                cmd.Parameters.AddWithValue("@si", s.StudentImage);
                cmd.Parameters.AddWithValue("@ad", s.Address);
                cmd.Parameters.AddWithValue("@i", s.StudentID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Delete(Student st)
        {
            using (SqlCommand cmd = new SqlCommand("DELETE Students Where StudentID=@i", con))
            {
                cmd.Parameters.AddWithValue("@i", st.StudentID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}