﻿using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;

namespace JLNP_Project.Controllers
{
    public class ReportController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();

        public ReportController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
            _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
        }
        public IActionResult StudentReport()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult AdmissionReport()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
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
                        EntrolmentNo = Convert.ToString(row["EntrollmentNo"].ToString()),
                        Branch = Convert.ToString(row["Branch_Name"].ToString()),
                        Year = Convert.ToString(row["_Year"].ToString()),
                        Address = Convert.ToString(row["Address"].ToString()),
                        Gender = Convert.ToString(row["Gender"].ToString()),
                        Group = Convert.ToString(row["Group_Name"].ToString()),
                        AdmissionDate = Convert.ToString(row["AdmissionDate"].ToString()),
                        FeesStatus = Convert.ToString(row["Fess_Status"].ToString()),
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
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
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
                return View(resp);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult GetFilterAttandanceReport(int BranchId, int Year, int SubjectId, string Date, string Action)
        {
            Report_BAL rep = new Report_BAL();
            var resp = rep.GetFilterAttandanceReport_Bal(BranchId, Year, SubjectId, Date, Action);
            if (_lr.UserName != null)
            {
                return View("GetAttandanceReport", resp);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult Notifications()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpGet]
        public IActionResult SyllabusReport()
        {
            return View();
        }
        [HttpPost]
        public IActionResult GetSyllabusMaster(int ID = 0, string Path = "", int BranchID = 0)
        {
            IStudent ml = new StudentML();
            var response = ml.GetSyllabusMaster(ID, Path, BranchID);
            return PartialView("Partial/_GetSyllabusMaster", response);
        }
    }
}