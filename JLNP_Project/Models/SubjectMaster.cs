namespace JLNP_Project.Models
{
    public class SubjectMaster: LoginInfo
    {
        public int Id { get; set; }
        public int SubjectId { get; set; }
        public int TeacherId { get; set; }
        public string Period { get; set; }
        public string TeacherName { get; set; }
        public int BranchId { get; set; }
        public string Branch { get; set; }
        public string TeacherCount { get; set; }
        public string BranchCount { get; set; }
        public string RegistrationCount { get; set; }
        public string AdmissionCount { get; set; }
        public string Year { get; set; }
        public string _Year { get; set; }
        public string SubjectName { get; set; }
        public string SubjectCode { get; set; }
        public string SubjectType { get; set; }
        public string TheoryMarks { get; set; }
        public string PracticalMarks { get; set; }
        public string Days { get; set; }
        public string Period1 { get; set; }
        public string Period2 { get; set; }
        public string Period3 { get; set; }
        public string Period4 { get; set; }
        public string Period5 { get; set; }
        public string Period6 { get; set; }
        public string EntryDate { get; set; }
        public string Action { get; set; }
        public string Assignment { get; set; }
        public int BranchYear { get; set; }
        public string LoginID { get; set; }
        public string Password { get; set; }
        public string MobileNo { get; set; }
        public string Gender { get; set; }
        public string GroupName { get; set; }
        public string Role { get; set; }
        public bool IsActive { get; set; }
        public List<SubjectMaster> Assignlist { get; set; }
        public List<SubjectMaster> Bindlist { get; set; }
    }
    public class CommanMasterReq:LoginInfo
    {
        public int Id { get; set; }
        public int BranchId { get; set; }
        public int SubjectId { get; set; }
        public int Year { get; set; }
        public string VideoUrl { get; set; }
    }
    public class CommanMasterResponse
    {
        public int Id { get; set; }
        public string Branch { get; set; }
        public string Subject { get; set; }
        public int Year { get; set; }
        public string VideoUrl { get; set; }
        public string EntryDate { get; set; }
    }
}
