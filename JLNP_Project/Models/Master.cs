﻿namespace JLNP_Project.Models
{
    public class Master
    {
    }
    public class ProgramMaster : LoginInfo
    {
        public int Id { get; set; }
        public string Program { get; set; }
        public string ProgramType { get; set; }
        public string ProgramDuration { get; set; }
        public string EntryDate { get; set; }
    }
    public class ProgramBranchMapping : LoginInfo
    {
        public int Id { get; set; }
        public int ProgramId { get; set; }
        public int BranchId { get; set; }
        public string ProgramName { get; set; }
        public string BranchName { get; set; }
        public string EntryDate { get; set; }
    }
    public class ProgramBranchMappingViewModel
    {
        public ProgramBranchMapping data { get; set; }
        public List<ProgramMaster> program { get; set; }
        public List<Branch> branch { get; set; }
    }
}
