using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace JLNP_Project.Controllers
{
    public class AttendanceController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();
        Attendance_BAL _bal = new Attendance_BAL();
        public AttendanceController(IHttpContextAccessor accessor)
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
        [HttpGet("/Attendance/MarkAttendance")]
        public IActionResult Index()
        {
            if (_lr != null)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult GetStudentDetails(int BranchId,int Program,int Year,string Date)
        {
            var res = _bal.GetStudentforAttendance(BranchId, Program, Year, Date);
            return PartialView("Partial/_MarkAttendance", res);
        }
        [HttpPost]
        public IActionResult SaveAttendance(List<AttendanceReq> req)
        {
            var res = _bal.MarkAttendance(req,_lr.UserId);
            return Json(res);
        }
        [HttpGet("/Attendance/attendencereport")]
        public IActionResult attendencereport()
        {
            if (_lr != null)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult Getattendancebydate(int BranchId, int Program, int Year, string Date)
        {
            var res = _bal.Getattendancebydate(BranchId, Program, Year, Date);
            return PartialView("Partial/_Getattendancebydate", res);
        }
        [HttpGet]
        public IActionResult ApproveLeave()
        {
            if (_lr != null)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
    }
}
