namespace JLNP_Project.Models
{
    public class Attendance:ResponseStatus
    {
        public List<Student> Studentlist { get; set; }
        public List<GetStudentforresult> Studentlistforresult { get; set; }
        public List<GetStudentforresult> Studentlistforresultwithprectical { get; set; }
        public bool IsMarks { get; set; }
        public int SubjectID { get; set; }
        public int ExamID { get; set; }
        public bool IsWritten { get; set; }
        public bool IsPrectical { get; set; }
    }
    public class AttendanceReq:LoginInfo
    {
        public int Status { get; set; }
        public string StudentEnrollment { get; set; }
        public string Note { get; set; }
        public string Date { get; set; }
        public bool Ispresent { get; set; }
        public bool Isabsent { get; set; }
        public bool Islate { get; set; }
        public bool Isishalfday { get; set; }
        public int Progarm { get; set; }
        public int Branch { get; set; }
        public int Year { get; set; }
    }
}
