﻿using JLNP_Project.AppCode.BAL;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using JLNP_Project.AppCode.Helper;
using System.Data;
using Microsoft.AspNetCore.Authorization;

namespace JLNP_Project.Controllers
{
    [Authorize]
    public class BranchController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly LoginInfo _lr;

        public BranchController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
            if (_accessor.HttpContext.Session.GetString(AppConsts.AppSession) != null)
            {
                _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString(AppConsts.AppSession));
            }
            else
            {
                RedirectToAction("SessionExpired", "Home");
            }
        }
        public IActionResult BranchMatser()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    return View();
                }                
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        public IActionResult BranchList()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        [HttpPost]
        public IActionResult _BranchMatser(Branch branch)
        {
            Branch_BAL BrBal = new Branch_BAL();
            branch.Action = "Add";
            var dt = BrBal.AddBranch_BAL(branch);
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
        public IActionResult GetBranchDetail()
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
                        TotalSheets = Convert.ToInt32(row["TotalSheet"]),
                        AvailableSheets = Convert.ToInt32(row["AvailableSheet"]),
                        TotalLetaralSheets = Convert.ToInt32(row["TotalLateralSheet"]),
                        AvailableLetaralSheets = Convert.ToInt32(row["AvailabeLateralSheet"]),
                        IsCounseling = Convert.ToBoolean(row["IsCounseling"]),
                        EntryDate = Convert.ToString(row["EntryDate"].ToString())
                    };
                    BranchList.Add(Bmodel);
                }
            }
            return PartialView("Partial/_GetBarnch", BranchList);
        }
        
        public IActionResult EditBranch(Branch branch)
        {
            Branch_BAL BrBal = new Branch_BAL();
            branch.Action = "GetById";
            var BranchList = new List<Branch>();
            var dt = BrBal.GetBranchById_BAL(branch);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    Branch Bmodel = new Branch
                    {
                        BranchId = Convert.ToInt32(row["BranchId"]),
                        BranchName = Convert.ToString(row["Branch_Name"].ToString()),
                        TotalSheets = Convert.ToInt32(row["TotalSheet"]),
                        IsCounseling = Convert.ToBoolean(row["IsCounseling"]),
                        BranchCode = Convert.ToString(row["Branch_Code"].ToString())
                    };
                    BranchList.Add(Bmodel);
                }
            }
            return PartialView("Partial/_EditBranch",BranchList);
        }
        [HttpPost]
        public IActionResult _EditBranch(Branch branch)
        {
            Branch_BAL BrBal = new Branch_BAL();
            branch.Action = "Update";
            var dt = BrBal.EditBranch_BAL(branch);
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
        public IActionResult DeleteBranch(int BranchId,string Action)
        {
            Branch_BAL BrBal = new Branch_BAL();
            Action = "Delete";
            var dt = BrBal.DeleteBranch_BAL(BranchId, Action);
            ResponseStatus res = new ResponseStatus
            {
                statuscode =-1,
                Msg = "Temp Error"
            };
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
            }
            return Json(res);
        }
    }
}
