using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net;
using System.Net.Mail;

namespace JLNP_Project.Controllers
{
    public class AdminController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();
        Admin_BAL adbal = new Admin_BAL();
        public AdminController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
            try
            {
                _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public IActionResult Index()
        {
            if (_lr.UserName != null)
            {
                var res = adbal.DashboardSummary_Bal();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult TimeTable()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [Route("BindProgram")]
        public IActionResult BindProgram()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return Json(res);
        }
        public IActionResult AssignSubject()
        {
            if (_lr.UserName != null)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult Assignment()
        {
            if (_lr.UserName != null)
            {
                Admin_BAL adbal = new Admin_BAL();
                var res = adbal.GetAssignment_Bal();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult StudentFine()
        {
            if (_lr.UserName != null)
            {
                string Action = "Get";
                IStudent resq = new StudentML();
                var respons = resq.GetStudentFines(Action);
                return View(respons);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult BindSubject(int BranchId)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.BindSubject_Bal(BranchId);
            return Json(res);
        }
        [HttpPost]
        public IActionResult SaveTimetable(SubjectMaster subjectMaster)
        {
            Admin_BAL adbal = new Admin_BAL();
            subjectMaster.Action = "Add";
            var res = adbal.SaveTimetable_Bal(subjectMaster);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetTimetable()
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.GetTimetable();
            return PartialView("Partial/_GetTimetable", res);
        }
        [HttpPost]
        public IActionResult Bind_Subject(int BranchId, int Year)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Bind_Subject_Bal(BranchId, Year);
            return Json(res);
        }
        [HttpPost]
        public IActionResult Bind_Subjects()
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Bind_Subjects_Bal();
            return Json(res);
        }
        [HttpPost]
        public IActionResult Bind_teacher()
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Bind_Teacher_Bal();
            return Json(res);
        }
        [HttpPost]
        public IActionResult SaveAssignSubject(SubjectMaster obj)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.SaveAssignSubject_Bal(obj);
            return Json(res);
        }
        [HttpPost]
        public IActionResult Assignsubject_List()
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Assignsubject_List_bal();
            return PartialView("Partial/_GetAssignsubject_List", res);
        }
        [HttpPost]
        public IActionResult Edit_Assignsubject(int Id)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Edit_Assignsubject_bal(Id);
            return PartialView("Partial/_EditAssignSubject", res);
        }
        [HttpPost]
        public IActionResult Assignsubject_Edit(int Id)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Assignsubject_Edit(Id);
            return Json(res);
        }
        [HttpPost]
        public IActionResult SaveAssignment(SubjectMaster subjectMaster)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.SaveAssignment_Bal(subjectMaster);
            return Json(res);
        }
        public IActionResult GetByIdAssignment(SubjectMaster subjectMaster)
        {
            Admin_BAL adbal = new Admin_BAL();
            subjectMaster.Action = "Get";
            var res = adbal.GetByIdAssignment_Bal(subjectMaster);
            return View(res);
        }
        [HttpPost]
        public IActionResult DeleteAssignment(int Id)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.DeleteAssignment(Id);
            return Json(res);
        }
        public IActionResult GetUsers()
        {
            return View();
        }
        [HttpPost]
        public IActionResult _GetUsers(string UserName = "", string Mobile = "")
        {
            Admin_BAL adbal = new Admin_BAL();
            int UserID = _lr.UserId;
            var res = adbal.GetUser_Bal(UserID, UserName, Mobile);
            return PartialView("Partial/_GetUsers", res);
        }
        [HttpPost]
        public IActionResult UpdateUserStatus(int UserID , bool IsActive)
        {
            Admin_BAL adbal = new Admin_BAL();
            var response = adbal.UpdateUserStatus(UserID, IsActive);
            return Json(response);
        }
    }
}
