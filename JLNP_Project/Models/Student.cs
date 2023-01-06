namespace JLNP_Project.Models
{
    public class Student
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
        public string Address { get; set; }
        public string Gender { get; set; }
        public string Group { get; set; }
        public string EntryDate { get; set; }
        public string Action { get; set; }
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
}
