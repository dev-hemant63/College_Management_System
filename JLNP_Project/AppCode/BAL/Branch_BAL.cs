using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Branch_BAL
    {
        public DataTable AddBranch_BAL(Branch branch)
        {
            Branch_DAL AdDal = new Branch_DAL();
            var dt = AdDal.AddBranch_DAL(branch);
            return dt;
        }
        public DataTable GetBranch_BAL(string Action)
        {
            Branch_DAL AdDal = new Branch_DAL();
            var dt = AdDal.GetBranch_DAL(Action);
            return dt;
        }
        public DataTable GetBranchById_BAL(Branch branch)
        {
            Branch_DAL AdDal = new Branch_DAL();
            var dt = AdDal.GetBranchById_DAL(branch);
            return dt;
        }
        public DataTable EditBranch_BAL(Branch branch)
        {
            Branch_DAL AdDal = new Branch_DAL();
            var dt = AdDal.EditBranch_DAL(branch);
            return dt;
        }
        public DataTable DeleteBranch_BAL(int BranchId, string Action)
        {
            Branch_DAL AdDal = new Branch_DAL();
            var dt = AdDal.DeleteBranch_DAL(BranchId, Action);
            return dt;
        }
    }
}
