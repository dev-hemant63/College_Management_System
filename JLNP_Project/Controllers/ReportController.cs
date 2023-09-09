﻿using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;

namespace JLNP_Project.Controllers
{
    [Authorize]
    public class ReportController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly LoginInfo _lr;

        public ReportController(IHttpContextAccessor accessor)
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
        public IActionResult StudentReport()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId ==1 || _lr.LoginTypeId == 2)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        public IActionResult AdmissionReport()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        public IActionResult _AdmissionReport(AdmissionModel admissionModel)
        {
            Report_BAL AdBal = new Report_BAL();
            var lt = new List<AdmissionModel>();
            admissionModel.Action = "AdmissionReport";
            var dt = AdBal.GetAdmissionReport(admissionModel);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    AdmissionModel model = new AdmissionModel
                    {
                        Id = Convert.ToInt32(row["Id"]),
                        Name = Convert.ToString(row["Name"].ToString()),
                        Fname = Convert.ToString(row["Fname"].ToString()),
                        Email = Convert.ToString(row["Email"].ToString()),
                        Mobile = Convert.ToString(row["Mobile"].ToString()),
                        DOB = Convert.ToString(row["DOB"].ToString()),
                        RgistrationNo = Convert.ToString(row["AdmissionNo"].ToString()),
                        Branch = Convert.ToString(row["Branch_Name"].ToString()),
                        Year = Convert.ToString(row["_Year"].ToString()),
                        Address = Convert.ToString(row["Address"].ToString()),
                        Gender = Convert.ToString(row["Gender"].ToString()),
                        AdmissionDate = Convert.ToString(row["AdmissionDate"].ToString()),
                        FeesStatus = Convert.ToString(row["Fess_Status"].ToString()),
                        MotherName = Convert.ToString(row["MotherName"].ToString()),
                        FatherOccupation = Convert.ToString(row["FatherOccupation"].ToString()),
                        Religion = Convert.ToString(row["Religion"].ToString()),
                        ProgramName = Convert.ToString(row["Program"].ToString()),
                        Photo = Convert.ToString(row["Photo"].ToString()),
                        FatherAadhar = Convert.ToString(row["FatherAadharCard"].ToString()),
                        MotherAadhar = Convert.ToString(row["MotherAadharCard"].ToString()),
                        Incomecertificate = Convert.ToString(row["IncomeCertificate"].ToString()),
                        Aadhar = Convert.ToString(row["AadharCard"].ToString()),
                        CastCertificate = Convert.ToString(row["CastCertificate"].ToString()),
                        NationalityCertificate = Convert.ToString(row["Nationalitycertificate"].ToString()),
                        BatchName = Convert.ToString(row["Batch"].ToString()),
                    };
                    lt.Add(model);
                }
            }
            return PartialView("Partial/_GetAdmissionReport", lt);
        }
        public IActionResult ProjectReport()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
                {
                    IMasterML ml = new MasterML();
                    var res = ml.GetProgram();
                    return View(res);
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        [HttpPost]
        public IActionResult SaveProjectReport(ProjectReport projectReport)
        {
            Report_BAL rep = new Report_BAL();
            projectReport.Action = "Add";
            var resp = rep.SaveProjectReport_Bal(projectReport);
            return Json(resp);
        }
        [HttpPost]
        public IActionResult GetProjectReport(string Action)
        {
            Report_BAL rep = new Report_BAL();
            Action = "Get";
            var resp = rep.GetProjectReport_Bal(Action);
            return PartialView("Partial/_GetProjectReport", resp);
        }
        public IActionResult GetAttandanceReport()
        {
            Report_BAL rep = new Report_BAL();
            var resp = rep.GetAttandanceReport_Bal();
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    return View(resp);
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        public IActionResult GetFilterAttandanceReport(int BranchId, int Year, int SubjectId, string Date, string Action)
        {
            Report_BAL rep = new Report_BAL();
            var resp = rep.GetFilterAttandanceReport_Bal(BranchId, Year, SubjectId, Date, Action);
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    return View("GetAttandanceReport", resp);
                }                
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        public IActionResult Notifications()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId ==1)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Login", "Account");
        }
        [HttpGet]
        public IActionResult SyllabusReport()
        {
            if (_lr.LoginTypeId == 1)
            {
                return View();
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult GetSyllabusMaster(int ID = 0, string Path = "", int BranchID = 0)
        {
            IStudent ml = new StudentML();
            var response = ml.GetSyllabusMaster(ID, Path, BranchID);
            return PartialView("Partial/_GetSyllabusMaster", response);
        }
        [HttpGet]
        public IActionResult FeesTransctionReport()
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
    }
}
