namespace JLNP_Project.Models
{
    public class ProjectReport
    {
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }
        public string Enrollment { get; set; }
        public string Branch { get; set; }
        public string Year { get; set; }
        public string StudentName { get; set; }
        public string ProjectTitle { get; set; }
        public string Techonology { get; set; }
        public string Submitiondate { get; set; }
        public int Program { get; set; }
        public string ProgramName { get; set; }
        public string Action { get; set; }
    }
    public class NotificationMaster : ResponseStatus
    {
        public int ID { get; set; }
        public string Notificationtitle { get; set; }
        public string NotificationDescription { get; set; }
        public int UserID { get; set; }
        public string EntryDate { get; set; }
        public string Action { get; set; }
        public int IsStaff { get; set; }
        public int NotifyCount { get; set; }
        public bool IsActive { get; set; }
    }
    public class SyllabusMaster:LoginInfo
    {
        public int ID { get; set; }
        public int Branch { get; set; }
        public int Program { get; set; }
        public int Subject { get; set; }
        public IFormFile File { get; set; }
        public int Year { get; set; }
        public string Filepath { get; set; }
    }
    public class SyllabusMasterRespons: SyllabusMaster
    {
        public string BranchName { get; set; }
        public string ProgramName { get; set; }
        public string SubjecName { get; set; }
        public string EntryDate { get; set; }
    }
    public class SyllabusViewModel
    {
        public SyllabusMaster SyllabusMaster { get; set; }
        public List<Branch> Branch { get; set; }
        public List<SubjectMaster> subjectMasters { get; set; }
        public List<ProgramMaster> programlst { get; set; }
    }
}
