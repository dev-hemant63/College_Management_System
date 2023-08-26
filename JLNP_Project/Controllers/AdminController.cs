using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace JLNP_Project.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly LoginInfo _lr;
        Admin_BAL adbal = new Admin_BAL();
        public AdminController(IHttpContextAccessor accessor, IWebHostEnvironment webHostEnvironment)
        {
            _accessor = accessor;
            try
            {
                if (_accessor.HttpContext.Session.GetString(AppConsts.AppSession) != null)
                {
                    _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString(AppConsts.AppSession));
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
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Index()
        {
            var res = adbal.DashboardSummary_Bal();
            return View(res);
        }
        public IActionResult TimeTable()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
        }
        public IActionResult GetTimeTable(int Program, int BranchId, int Year, string Day)
        {
            Admin_BAL adbal = new Admin_BAL();
            TimeTableViewModel model = new TimeTableViewModel();
            model.SubjectList = adbal.Bind_Subject_Bal(Program, BranchId, Year);
            model.TeacherList = adbal.Bind_Teacher_Bal();
            model.Timetable = adbal.GetTimeTable(Program, BranchId, Year, Day.Replace("tbl", ""));
            return PartialView("Partial/TimeTable/_AddTimeTable", model);
        }
        [HttpPost]
        public IActionResult GetTimetableByday(int Program, int BranchId, int Year, string Day)
        {
            Admin_BAL adbal = new Admin_BAL();
            TimeTableViewModel model = new TimeTableViewModel();
            model.SubjectList = adbal.Bind_Subject_Bal(Program, BranchId, Year);
            model.TeacherList = adbal.Bind_Teacher_Bal();
            model.Timetable = adbal.GetTimeTable(Program, BranchId, Year, Day.Replace("tbl", ""));
            switch (Day.Replace("tbl", ""))
            {
                case "Monday":
                    return PartialView("Partial/TimeTable/_Monday", model);
                    break;
                case "Tuesday":
                    return PartialView("Partial/TimeTable/_Tuesday", model);
                    break;
                case "Wednesday":
                    return PartialView("Partial/TimeTable/_Wednesday", model);
                    break;
                case "Thursday":
                    return PartialView("Partial/TimeTable/_Thursday", model);
                    break;
                case "Friday":
                    return PartialView("Partial/TimeTable/_Friday", model);
                    break;
                case "Suterday":
                    return PartialView("Partial/TimeTable/_Suterday", model);
                    break;
                case "Sunday":
                    return PartialView("Partial/TimeTable/_Sunday", model);
                    break;
                default:
                    break;
            }
            return Ok();
        }
        [HttpPost]
        public IActionResult SaveTimetable(List<TimeTable> req)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.SaveTimeTable(req);
            return Json(res);
        }
        [HttpPost]
        public IActionResult DeleteTimeTable(int ID)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.DeleteTimeTable(ID);
            return Json(res);
        }
        [HttpGet]
        public IActionResult TimetableRepot()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
        }
        [HttpPost]
        public IActionResult GetTimeTableReport(int Program, int BranchId, int Year)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.GetTimeTableReport(Program, BranchId, Year);
            return PartialView("Partial/TimeTable/_GetTimetableReport", res);
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
            AssignSubjectViewModel model = new AssignSubjectViewModel();
            IMasterML ml = new MasterML();
            Admin_BAL adbal = new Admin_BAL();
            model.Teachers = adbal.Bind_Teacher_Bal();
            model.ProgramMasters = ml.GetProgram();
            return View(model);
        }
        public IActionResult Assignment()
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.GetAssignment_Bal();
            return View(res);
        }
        public IActionResult StudentFine()
        {
            string Action = "Get";
            IStudent resq = new StudentML();
            var respons = resq.GetStudentFines(Action);
            return View(respons);
        }
        [HttpPost]
        public IActionResult BindSubject(int BranchId)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.BindSubject_Bal(BranchId);
            return Json(res);
        }
        public IActionResult Bind_Subject(int Program, int BranchId, int Year)
        {
            Admin_BAL adbal = new Admin_BAL();
            var res = adbal.Bind_Subject_Bal(Program, BranchId, Year);
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
            EditAssignSubjectViewModel model = new EditAssignSubjectViewModel();
            Admin_BAL adbal = new Admin_BAL();
            model.data = adbal.Edit_Assignsubject_bal(Id);
            model.Teachers = adbal.Bind_Teacher_Bal();
            return PartialView("Partial/_EditAssignSubject", model);
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
            string filepath = string.Empty;
            if (subjectMaster.Files != null)
            {
                try
                {
                    filepath = @"Assignment\" + subjectMaster.Program;
                    StringBuilder uploadsFolder = new StringBuilder(Path.Combine(_webHostEnvironment.WebRootPath, filepath));
                    if (!Directory.Exists(uploadsFolder.ToString()))
                        Directory.CreateDirectory(uploadsFolder.ToString());
                    uploadsFolder.Append(Path.Combine(@"\", subjectMaster.Files.FileName.ToString()));
                    using (FileStream fs = System.IO.File.Create(uploadsFolder.ToString()))
                    {
                        subjectMaster.Files.CopyTo(fs);
                        fs.Flush();
                    }
                }
                catch (Exception ex)
                {

                }
                subjectMaster.Path = filepath + @"\" + subjectMaster.Files.FileName;
            }
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
            res = res.Where(x => x.Role.ToLower().Equals("student")).ToList();
            return PartialView("Partial/_GetUsers", res);
        }
        [HttpPost]
        public IActionResult UpdateUserStatus(int UserID, bool IsActive)
        {
            Admin_BAL adbal = new Admin_BAL();
            var response = adbal.UpdateUserStatus(UserID, IsActive);
            return Json(response);
        }
        [HttpGet]
        public IActionResult TeacherDash()
        {
            var res = adbal.DashboardSummary_Bal();
            return View(res);
        }
    }
}
