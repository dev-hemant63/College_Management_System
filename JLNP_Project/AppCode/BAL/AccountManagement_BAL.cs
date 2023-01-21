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
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.FeesSubmition_DAL(accountManagement);
            return dt;
        }
        public List<AccountManagement> Student_Submit_Fees_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var lst = new List<AccountManagement>();
            var dt = AmaDAL.Student_Submit_Fees_DAL(accountManagement);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    AccountManagement accountmanagement = new AccountManagement
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        StudentName = Convert.ToString(dr["StudentName"].ToString()),
                        FatherName = Convert.ToString(dr["FatherName"].ToString()),
                        Branch = Convert.ToString(dr["Branch"].ToString()),
                        Year = Convert.ToString(dr["_Year"].ToString()),
                        Amount = Convert.ToString(dr["Amount"].ToString()),
                        FeesSubmitionMode = Convert.ToString(dr["FeesSubmitionMode"].ToString()),
                        EntryDate = Convert.ToString(dr["EntryDate"].ToString()),
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
                        Branch = dr["Branch_Name"].ToString(),
                        BranchCode = dr["Branch_Code"].ToString(),
                        Year = dr["_Year"].ToString(),
                        EntryDate = dr["EntryDate"].ToString(),
                        Amount = dr["Amount"].ToString()
                    };
                    lit.Add(data);
                }
            }
            return lit;
        }
        public DataTable GetFeesHeadById_BAL(AccountManagement accountManagement)
        {
            AccountManagement_DAL AmaDAL = new AccountManagement_DAL();
            var dt = AmaDAL.GetFeesHeadById_DAL(accountManagement);
            return dt;
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
    }
}
