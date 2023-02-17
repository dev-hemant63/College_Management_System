namespace JLNP_Project.Models
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
        public int FeesStatus { get; set; }
        public string FeesTypeName { get; set; }
        public string EnrollmentNo { get; set; }
        public string CheckNumber { get; set; }
        public int TransactionID { get; set; }
        public decimal TotalAmount { get; set; }
        public string Fromdate { get; set; }
        public string Todate { get; set; }
        public string Email { get; set; }
    }
    public class FeesViewModel
    {
        public List<ProgramMaster> program { get; set; }
        public int RoleID { get; set; }
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
        public decimal TotalFees { get; set; }
        public decimal Amount { get; set; }
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
    public class FeesSubmissionMode
    {
        public int ID { get; set; }
        public string Mode { get; set; }
    }
    public class TransctionDetails
    {
        public string Name { get; set; }
        public string EnrollmentNo { get; set; }
        public string Program { get; set; }
        public string Branch { get; set; }
        public string EntryDate { get; set; }
        public string Mode { get; set; }
        public decimal TotalFees { get; set; }
        public decimal SubmitedFees { get; set; }
        public decimal DueFees { get; set; }
    }
    public class FeesReceipt
    {
        public string Name { get; set; }
        public string EnrollmentNo { get; set; }
        public string Program { get; set; }
        public string Branch { get; set; }
        public decimal TotalFees { get; set; }
        public decimal SubmitedFees { get; set; }
        public decimal DueFees { get; set; }
        public string Mode { get; set; }
        public string EntryDate { get; set; }
        public string FeesReceiptNo { get; set; }
        public string City { get; set; } = "Lucknow";
        public string State { get; set; } = "Uttar Pradesh";
        public string Pincode { get; set; } = "226010";
        public string Country { get; set; } = "India";
        public string Mobile { get; set; }
        public string Year { get; set; }
        public string Email { get; set; }
        public List<FeesType> feestype { get; set; }
    }
    public class FeesReport
    {
        public string Name { get; set; }
        public string Fathername { get; set; }
        public string Program { get; set; }
        public string _Year { get; set; }
        public string Email { get; set; }
        public int Fess_Status { get; set; }
        public string Address { get; set; }
        public string Branch_Name { get; set; }
        public string EntrollmentNo { get; set; }
        public string ReceiptNo { get; set; }
        public string Mode { get; set; }
        public decimal TotalbranchFees { get; set; }
        public decimal TotalFees { get; set; }
        public decimal SubmitedFees { get; set; }
        public decimal DueFees { get; set; }
        public string Entrydate { get; set; }
    }
}
