﻿namespace JLNP_Project.Models
{
    public class AccountManagement
    {
        public int Id { get; set; }
        public string StudentName { get; set; }
        public string FatherName { get; set; }
        public string Branch { get; set; }
        public string BranchCode { get; set; }
        public string Year { get; set; }
        public string Amount { get; set; }
        public string EntryDate { get; set; }
        public string EntryBy { get; set; }
        public string FeesSubmitionMode { get; set; }
        public string Action { get; set; }
        public int Program { get; set; }
        public string ProgramName { get; set; }
        public int FeesType { get; set; }
        public string FeesTypeName { get; set; }
    }
    public class DefineFeesStructureReqRes
    {
        public int Id { get; set; }
        public int Year { get; set; }
        public int Program { get; set; }
        public string ProgramName { get; set; }
        public string BranchName { get; set; }
        public string FeesType { get; set; }
        public string EntryDate { get; set; }
        public int Branch { get; set; }
    }
    public class DefineFeesStructureViewModel
    {
        public DefineFeesStructureReqRes data { get; set; }
        public List<ProgramMaster> program { get; set; }
    }
    public class FeesType
    {
        public int ID { get; set; }
        public string FeesTypes { get; set; }
    }
    public class EditFeesHead
    {
        public AccountManagement data { get; set; }
        public List<ProgramMaster> program { get; set; }
    }
    public class FeesStructure
    {
        public List<FeesType> FeesTypes { get; set; }
        public List<AccountManagement> Fees { get; set; }
    }
}
