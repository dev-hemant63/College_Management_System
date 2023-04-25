using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;

namespace JLNP_Project.Controllers
{
    public class AdmissionController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();

        public AdmissionController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
            try
            {
                if (_accessor.HttpContext.Session.GetString("Userdata") != null)
                {
                    _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
                }
                else
                {
                    RedirectToAction("SessionExpired", "Home");
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public IActionResult AForm()
        {
            if (Request.Cookies["UserName"] != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    IMasterML ml = new MasterML();
                    var res = ml.GetProgram();
                    return View(res);
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult BindBranch()
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
            return Json(BranchList);
        }
        [HttpPost]
        public IActionResult Student_Admission(AdmissionModel admissionModel)
        {
            Admission_BAL AdBal= new Admission_BAL();
            admissionModel.Action = "Admission";
            var dt = AdBal.StudentAdmission(admissionModel);
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult StudentGetAdmissionDetails(long RegistrationNo)
        {
            Admission_BAL AdBal = new Admission_BAL();
            var res = AdBal.StudentAdmissionDetailse(RegistrationNo);
            return Json(res);
        }
        [HttpPost]
        public IActionResult BindProgramWiseBranch(int ProgramId)
        {
            IMasterML ml = new MasterML();
            var res = ml.BindProgramWiseBranch(ProgramId);
            return Json(res);
        }
    }
}
