namespace JLNP_Project.Models
{
    public class Examination
    {
    }
    public class ExamType
    {
        public int Id { get; set; }
        public string ExamTypes { get; set; }
        public string Entrydate { get; set; }
    }
    public class ExamGroupe
    {
        public int Id { get; set; }
        public string ExamGroupes { get; set; }
        public int ExamType { get; set; }
        public string ExamTypeName { get; set; }
        public List<ExamType> ExamTypes { get; set; }
        public string Entrydate { get; set; }
        public string Description { get; set; }
        public int UserID { get; set; }
        public int ExamCount { get; set; }
    }
    public class AddExam
    {
        public List<ExamGroupe> ExamGroup { get; set; }
        public int GroupID { get; set; }
        public string Exam { get; set; }
        public int Id { get; set; }
    }
    public class Exam
    {
        public int Id { get; set; }
        public int GroupId { get; set; }
        public int UserID { get; set; }
        public string ExamTitle { get; set; }
        public string ExamGroup { get; set; }
        public string EntryDate { get; set; }
    }
    public class AssignExam
    {
        public List<ProgramMaster> Program { get; set; }
        public int ExamID { get; set; }
        public string EnrollemntNo { get; set; }
        public int ProgramId { get; set; }
        public int Branch { get; set; }
        public int Year { get; set; }
        public bool IsAssign { get; set; }
        public int SubjectId { get; set; }
    }
    public class ExamDetail
    {
        public int Id { get; set; }
        public int ExamID { get; set; }
        public string Exam { get; set; }
        public int SubjectId { get; set; }
        public string Subjectname { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public int Duration { get; set; }
        public string RoomNo { get; set; }
        public int MinMarks { get; set; }
        public int MaxMarks { get; set; }
        public string Entrydate { get; set; }
    }
    public class ExamDetailViewModel
    {
        public List<ExamDetail> data { get; set; }
        public List<SubjectMaster> subject { get; set; }
        public int ExamID { get; set; }
    }
    public class ResultViewModel
    {
        public List<ProgramMaster> Program { get; set; }
        public List<ExamGroupe> ExamGroup { get; set; }
    }
    public class DetailsForResult
    {
        public List<StudentDetaisForResult> StudentDetais { get; set; }
        public List<SubjectForResult> Subject { get; set; }
    }
    public class StudentDetaisForResult
    {
        public int Id { get; set; }
        public int ExamId { get; set; }
        public string EnrollmentNo { get; set; }
        public string Program { get; set; }
        public string Branch { get; set; }
        public string Year { get; set; }
        public string SubjName { get; set; }
    }
    public class SubjectForResult
    {
        public int SubjectId { get; set; }
        public string SubjectName { get; set; }
    }
    public class SearchDetailsForResult
    {
        public int ExamId { get; set; }
        public int Program { get; set; }
        public int Branch { get; set; }
        public int Year { get; set; }
    }
    public class ExamMarks
    {
        public int Program { get; set; }
        public int Branch { get; set; }
        public int Year { get; set; }
        public int SubjectId { get; set; }
        public bool IsAttendance { get; set; }
        public string EnrollmentNo { get; set; }
        public string Marks { get; set; }
        public string Note { get; set; }
    }
}
