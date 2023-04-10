using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace JLNP_Project.Controllers.API
{
    [Route(AppConsts.defaultRoutePrefix)]
    [ApiController]
    public class Project_APIController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetBranch()
        {
            Branch_BAL BrBal = new Branch_BAL();
            string Action = "Get";
            var BranchList = new List<Branch>();
            var dt = BrBal.GetBranch_BAL(Action);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    Branch Bmodel = new Branch
                    {
                        BranchId = Convert.ToInt32(row["BranchId"]),
                        BranchName = Convert.ToString(row["Branch_Name"].ToString()),
                        BranchCode = Convert.ToString(row["Branch_Code"].ToString()),
                        EntryDate = Convert.ToString(row["EntryDate"].ToString())
                    };
                    BranchList.Add(Bmodel);
                }
            }
            return Ok(BranchList);
        }
    }
}
