﻿using JLNP_Project.AppCode.BAL;
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
            _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
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
            var res = _accountBAL.GetFeesType(Id);
            return PartialView("Partial/_EditFeesType", res);
        }
        public IActionResult FeesHead()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult FeesHead(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "Add";
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
        public IActionResult Fees()
        {
            if (_lr.UserName != null)
            {
                return View();
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
            accountManagement.Action = "Add";
            var dt = AmDAL.FeesSubmition_BAL(accountManagement);
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
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult BranchFees(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "Get";
            var res = AmDAL.BranchFees_BAL(accountManagement);
            return PartialView("Partial/_GetBranchFees", res);
        }
        public IActionResult GetFeesHeadById(AccountManagement accountManagement)
        {
            AccountManagement_BAL AmDAL = new AccountManagement_BAL();
            accountManagement.Action = "GetById";
            ViewBag.Feeshead = AmDAL.GetFeesHeadById_BAL(accountManagement);
            return View();
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
        public IActionResult DeleteFeesHead(AccountManagement accountManagement)
        {
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
    }
}
