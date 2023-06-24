using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace High_School_Enrollment_System_ASP.App_Code
{
    public class Student
    {
        public int StudentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public DateTime BirthDate { get; set; }
        public string BirthPlace { get; set; }
        public string Nationality { get; set; }
        public string Religion { get; set; }
        public string StudentPhone { get; set; }
        public bool Status { get; set; }
        public string StudentImage { get; set; }
        public string Address { get; set; }

    }
}