using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class AccountManagement_BAL
    {
        AccountManagement_DAL _accountDAL = new AccountManagement_DAL();
        public DataTable FeesHead_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.FeesHead_DAL(accountManagement);
            return dt;
        }
        public DataTable BindAmount_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.BindAmount_DAL(accountManagement);
            return dt;
        }
        public DataTable FeesSubmition_BAL(AccountManagement accountManagement)
        {
            DataTable dt = new DataTable();
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            if (accountManagement.FeesSubmitionMode == "1" || accountManagement.FeesSubmitionMode == "2")
            {
                dt = AmaDAL.FeesSubmition_DAL(accountManagement);
            }
            return dt;
        }
        public List<FeesReport> Student_Submit_Fees_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var lst = new List<FeesReport>();
            var dt = AmaDAL.Student_Submit_Fees_DAL(accountManagement);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    FeesReport accountmanagement = new FeesReport
                    {
                        Fess_Status = Convert.ToInt32(dr["Fess_Status"]),
                        Name = Convert.ToString(dr["Name"].ToString()),
                        Email = Convert.ToString(dr["Email"].ToString()),
                        Address = Convert.ToString(dr["Address"].ToString()),
                        Fathername = Convert.ToString(dr["Fname"].ToString()),
                        EntrollmentNo = Convert.ToString(dr["EntrollmentNo"].ToString()),
                        ReceiptNo = Convert.ToString(dr["ReceiptNo"].ToString()),
                        Program = Convert.ToString(dr["Program"].ToString()),
                        Branch_Name = Convert.ToString(dr["Branch"].ToString()),
                        _Year = Convert.ToString(dr["_Year"].ToString()),
                        TotalFees = Convert.ToDecimal(dr["TotalbranchFees"]),
                        SubmitedFees = Convert.ToDecimal(dr["SubmitedFees"]),
                        DueFees = Convert.ToDecimal(dr["DueFees"]),
                        Mode = Convert.ToString(dr["Mode"].ToString()),
                        Entrydate = Convert.ToString(dr["EntryDate"].ToString()),
                    };
                    lst.Add(accountmanagement);
                }
            }
            return lst;
        }
        public List<AccountManagement> BranchFees_BAL(AccountManagement accountManagement)
        {
            var lit = new List<AccountManagement>();
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.BranchFees_DAL(accountManagement);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    AccountManagement data = new AccountManagement
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        ProgramName = dr["Program"].ToString(),
                        Branch = dr["Branch_Name"].ToString(),
                        Year = dr["_Year"].ToString(),
                        FeesTypeName = dr["FeesType"].ToString(),
                        Amount = dr["Amount"].ToString(),
                        EntryDate = dr["EntryDate"].ToString()
                    };
                    lit.Add(data);
                }
            }
            return lit;
        }
        public AccountManagement GetFeesHeadById_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var res = new AccountManagement();
            var dt = AmaDAL.GetFeesHeadById_DAL(accountManagement);
            if (dt.Rows.Count > 0)
            {
                res.Id = Convert.ToInt32(dt.Rows[0]["Id"]);
                res.Branch = Convert.ToString(dt.Rows[0]["Branch"]);
                res.Year = Convert.ToString(dt.Rows[0]["_Year"]);
                res.Amount = Convert.ToString(dt.Rows[0]["Amount"]);
                res.Program = Convert.ToInt32(dt.Rows[0]["Program"]);
                res.FeesType = Convert.ToInt32(dt.Rows[0]["FeesType"]);
            }
            return res;
        }
        public DataTable EditFeesHead_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.EditFeesHead_DAL(accountManagement);
            return dt;
        }
        public DataTable DeleteFeesHead_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.FeesHeadDelete(accountManagement);
            return dt;
        }
        public ResponseStatus SaveFeesType(DefineFeesStructureReqRes req)
        {
            var res = _accountDAL.SaveAndUpdateFeesType(req);
            return res;
        }
        public List<DefineFeesStructureReqRes> GetFeesType(int Id = 0)
        {
            var res = _accountDAL.GetFeesType(Id);
            return res;
        }
        public ResponseStatus DeleteFeesType(int Id = 0)
        {
            var res = _accountDAL.Deletefeestype(Id);
            return res;
        }
        public List<FeesType> BindFeesType(int Year = 0, int ProgramId = 0, int Branch = 0)
        {
            var res = _accountDAL.BindFeesType(Year, ProgramId, Branch);
            return res;
        }
        public List<FeesType> BindFeesTypeByYear(int Year = 0, int ProgramId = 0, int Branch = 0)
        {
            var res = _accountDAL.BindFeesTypeByYear(Year, ProgramId, Branch);
            return res;
        }
        public DataTable FeesStructure()
        {
            var res = _accountDAL.GetFeesStructure();
            return res;
        }
        public List<FeesSubmissionMode> BindFeesSubmissionMode()
        {
            var res = _accountDAL.BindFeesSubmissionMode();
            return res;
        }
        public AccountManagement Getstudentdetail(string EnrollmentNo)
        {
            var res = _accountDAL.Getstudentdetail(EnrollmentNo);
            return res;
        }
        public List<TransctionDetails> GetTransctionHistory(string EnrollmentNo = "")
        {
            var res = _accountDAL.GetTransctionHistory(EnrollmentNo);
            return res;
        }
        public FeesReceipt FeesReceipt(string EnrollmentNo)
        {
            var res = _accountDAL.FeesReceipt(EnrollmentNo);
            return res;
        }
    }
}
