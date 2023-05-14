namespace JLNP_Project.Models
{
    public class GetResultRequest
    {
        public int BranchId { get; set; }
        public int Program { get; set; }
        public int Year { get; set; }
        public int ExamID { get; set; }
        public int SubjectId { get; set; }
    }
    public class GetStudentResult
    {
        public string ProgramName { get; set; }
        public string BranchName { get; set; }
        public string EnrollmentNo { get; set; }
        public string Subject { get; set; }
        public bool IsAttendance { get; set; }
        public int Marks { get; set; }
        public string Note { get; set; }
        public string Exam { get; set; }
    }
    public class GetStudentforresult
    {
        public string Enrollment { get; set; }
        public string Name { get; set; }
        public string Note { get; set; }
        public int Marks { get; set; }
        public bool IsAttendance { get; set; }
        public bool IsPrectical { get; set; }
    }
}
