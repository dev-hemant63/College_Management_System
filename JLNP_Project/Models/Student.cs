namespace JLNP_Project.Models
{
    public class Student: SearchModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Fname { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string _Year { get; set; }
        public string DOB { get; set; }
        public string Entrolment_No { get; set; }
        public string Branch { get; set; }
        public int BranchId { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public string Group { get; set; }
        public string EntryDate { get; set; }
        public string FatherOccupation { get; set; }
        public string MotherName { get; set; }
        public int Program { get; set; }
        public string Action { get; set; }
        public string ProgramName { get; set; }
        public bool IsAssign { get; set; }
        public int ExamId { get; set; }
    }
    public class StudentFineMdl: Student
    {
        public int Year { get; set; }
        public int BranchId { get; set; }
        public int FineAmount { get; set; }
        public string FineResion { get; set; }
        public int FineStatus { get; set; }
    }
    public class StudentSyllabus:ResponseStatus
    {
        public string SubjectName { get; set; }
        public string Branch_Name { get; set; }
        public string Path { get; set; }
        public string SubjectCode { get; set; }
    }
    public class EditStudentRegistration
    {
        public Student data { get; set; }
        public List<ProgramMaster> program { get; set; }
        public List<Branch> branch { get; set; }
    }
    public class StudentVideolecture
    {
        public string UserName { get; set; }
        public List<CommanMasterResponse> data { get; set; }
    }
}
