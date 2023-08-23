﻿namespace JLNP_Project.Models
{
    public class SubjectMaster : LoginInfo
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
        public string EntryDate { get; set; }
        public string Action { get; set; }
        public string Assignment { get; set; }
        public int BranchYear { get; set; }
        public string LoginID { get; set; }
        public string MobileNo { get; set; }
        public string Gender { get; set; }
        public string GroupName { get; set; }
        public string Role { get; set; }
        public bool IsActive { get; set; }
        public int Program { get; set; }
        public string ProgramName { get; set; }
        public string PassingMarks { get; set; }
        public bool IsPrectical { get; set; }
        public bool IsWritten { get; set; }
        public int PracticalPassingMarks { get; set; }
        public List<SubjectMaster> Assignlist { get; set; }
        public List<SubjectMaster> Bindlist { get; set; }
        public IFormFile Files { get; set; }
        public string Path { get; set; }
    }
    public class CommanMasterReq : LoginInfo
    {
        public int Id { get; set; }
        public int BranchId { get; set; }
        public int Program { get; set; }
        public int SubjectId { get; set; }
        public int Year { get; set; }
        public string VideoUrl { get; set; }
        public string Enrollementno { get; set; }
    }
    public class CommanMasterResponse
    {
        public int Id { get; set; }
        public string Branch { get; set; }
        public string ProgramName { get; set; }
        public string Subject { get; set; }
        public int Year { get; set; }
        public string VideoUrl { get; set; }
        public string EntryDate { get; set; }
    }
    public class EditVideoLectureViewModel
    {
        public CommanMasterReq data { get; set; }
        public List<Branch> branch { get; set; }
        public List<SubjectMaster> subject { get; set; }
        public List<ProgramMaster> program { get; set; }
    }
    public class EditSubjectViewModel
    {
        public SubjectMaster data { get; set; }
        public List<ProgramMaster> programs { get; set; }
    }
    public class StudentResult : SubjectMaster
    {
        public int TotalMarks { get; set; }
        public int ObtainMarks { get; set; }
    }
    public class AssignSubjectViewModel
    {
        public List<ProgramMaster> ProgramMasters { get; set; }
        public List<SubjectMaster> Teachers { get; set; }
    }
    public class EditAssignSubjectViewModel
    {
        public List<SubjectMaster> Teachers { get; set; }
        public SubjectMaster data { get; set; }
    }
    public class RegistrationMaster
    {
        public string Startdate { get; set; } = "";
        public string Enddate { get; set; } = "";
        public string Entrydate { get; set; } = "";
        public int Program { get; set; } = 0;
        public string ProgramName { get; set; } = "";
        public int Branch { get; set; } = 0;
        public string BranchName { get; set; } = "";
        public int ID { get; set; } = 0;
        public bool IsEdit { get; set; } = false;
        public bool IsOpen { get; set; } = false;
        public bool IsAdmission { get; set; } = false;
        public int Year { get; set; } = 0;
        public int AdmissionType { get; set; } = 0;
        public string AdmissionTypeName { get; set; } = "";

    }
    public class RegistrationViewModel
    {
        public List<RegistrationMaster> data { get; set; }
        public List<ProgramMaster> ProgramMasters { get; set; }
    }
}