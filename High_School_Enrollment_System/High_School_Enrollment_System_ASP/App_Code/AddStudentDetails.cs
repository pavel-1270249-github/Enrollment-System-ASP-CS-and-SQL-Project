using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace High_School_Enrollment_System_ASP.App_Code
{
    public class AddStudentDetails
    {
        public int DetailID { get; set; }
        public int StudentID { get; set; }
        public string FathersName { get; set; }
        public string FathersOccupation { get; set; }
        public string MothersName { get; set; }
        public string MothersOccupation { get; set; }
        public string GuardiansName { get; set; }
        public string GuardiansOccupation { get; set; }
        public string ParentsAddress { get; set; }
        public string ParentsPhone { get; set; }

    }
}