using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;

namespace JLNP_Project.Controllers
{
    public class AccountManagementController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();
        AccountManagement_BAL _accountBAL = new AccountManagement_BAL();

        public AccountManagementController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
            try
            {
                _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
            }
            catch (Exception  ex)
            {

                throw;
            }
        }
        public IActionResult DefineFeesStructur()
        {
            if (_lr.UserName != null)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult DefineFeesStructure(DefineFeesStructureReqRes req)
        {
            var res = _accountBAL.SaveFeesType(req);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetFeesType()
        {
            var res = _accountBAL.GetFeesType();
            return PartialView("Partial/_GetFeesType", res);
        }
        [HttpPost]
        public IActionResult EditFeesType(int Id)
        {
            DefineFeesStructureViewModel res = new DefineFeesStructureViewModel();
            res.data = _accountBAL.GetFeesType(Id).FirstOrDefault();
            IMasterML ml = new MasterML();
            res.program = ml.GetProgram();
            return PartialView("Partial/_EditFeesType", res);
        }
        [HttpPost]
        public IActionResult deleteFeesType(int Id)
        {
            var res = _accountBAL.DeleteFeesType(Id);
            return Json(res);
        }
        public IActionResult FeesHead()
        {
            if (_lr.UserName != null)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult FeesHead(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            var dt = AmDAL.FeesHead_BAL(accountManagement);
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetFeesHead()
        {
            AccountManagement accountManagement = new AccountManagement();
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "Get";
            var res = AmDAL.BranchFees_BAL(accountManagement);
            return PartialView("Partial/_GetFeesHead",res);
        }
        [HttpPost]
        public IActionResult BindAmount(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            var dt = AmDAL.BindAmount_BAL(accountManagement);
            if (dt.Rows.Count > 0)
            {
                accountManagement.Amount = Convert.ToString(dt.Rows[0]["Amount"].ToString());
            }
            return Json(accountManagement);
        }
        [HttpPost]
        public IActionResult BindFeesSubmissionMode()
        {
            var res = new AccountManagement_BAL();
            var data = res.BindFeesSubmissionMode();
            return Json(data);
        }
        public IActionResult Fees()
        {
            if (_lr.UserName != null)
            {
                FeesViewModel model = new FeesViewModel();
                IMasterML ml = new MasterML();
                model.program = ml.GetProgram();
                model.RoleID = _lr.UserId;
                return View(model);
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
        public IActionResult Feessubmition(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            if (accountManagement.FeesSubmitionMode == "1" || accountManagement.FeesSubmitionMode == "2")
            {
                var dt = AmDAL.FeesSubmition_BAL(accountManagement);
                if (dt.Rows.Count > 0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                    if (res.statuscode == 1)
                    {
                        res.FeesReceiptNo = Convert.ToString(dt.Rows[0]["ReceiptNo"].ToString());
                    }
                }
            }
            else
            {
                res.statuscode = -1;
                res.Msg = "Online payment is not integrated now.";
            }
            if (res.statuscode == 1)
            {
                var receipt = AmDAL.FeesReceipt(accountManagement.EnrollmentNo);
                return PartialView("Partial/_FeesReceipt", receipt);
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult SendFeesReceipt(string Req,string email)
        {
            var ml = new SendEmail();
            string title = $"Fees Receipt";
            var res = ml.SendMail(email, title, Req);
            return Json(res);
        }
        [HttpPost]
        [Route("Getstudentdetail")]
        public IActionResult Getstudentdetail(string EnrollmentNo)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            var res = AmDAL.Getstudentdetail(EnrollmentNo);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetTransctionHistory(string EnrollmentNo)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            var res = AmDAL.GetTransctionHistory(EnrollmentNo);
            return PartialView("Partial/_GetTransctionHistory", res);
        }
        public IActionResult StudentSubmitFees()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult StudentSubmitFees(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "Get";
            var res = AmDAL.Student_Submit_Fees_BAL(accountManagement);
            return PartialView("Partial/_GetStudentSubmitFees", res);
        }
        public IActionResult BranchFees()
        {
            if (_lr.UserName != null)
            {
                AccountManagement_BAL AmDAL = new AccountManagement_BAL();
                var dt = AmDAL.FeesStructure();
                return View(dt);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [Route("BranchFeesPrint")]
        public IActionResult BranchFeesPrint()
        {
            if (_lr.UserName != null)
            {
                AccountManagement_BAL AmDAL = new AccountManagement_BAL();
                var dt = AmDAL.FeesStructure();
                return View(dt);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpGet]
        public IActionResult GetFeesHeadById(int ID)
        {
            AccountManagement accountManagement = new AccountManagement
            {
                Id = ID
            };
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            EditFeesHead model = new EditFeesHead();
            accountManagement.Action = "GetById";
            IMasterML ml = new MasterML();
            model.program = ml.GetProgram();
            model.data= AmDAL.GetFeesHeadById_BAL(accountManagement);
            return View(model);
        }
        [HttpPost]
        public IActionResult SaveFeesHead(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "Edit";
            var dt = AmDAL.EditFeesHead_BAL(accountManagement);
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult DeleteFeesHead(int ID)
        {
            AccountManagement accountManagement = new AccountManagement
            {
                Id = ID
            };
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "Delete";
            var dt = AmDAL.DeleteFeesHead_BAL(accountManagement);
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult BindfeestypeByYear(int Year, int ProgramId, int Branch)
        {
            var res = _accountBAL.BindFeesTypeByYear(Year, ProgramId, Branch);
            return Json(res);
        }
        [HttpPost]
        public IActionResult Bindfeestype(int Year,int ProgramId,int Branch, string EnrollmentNo = "")
        {
            var res = _accountBAL.BindFeesType(Year,ProgramId, Branch, EnrollmentNo);
            return Json(res);
        }
    }
}
