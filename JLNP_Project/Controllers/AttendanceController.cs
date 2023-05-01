using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using JLNP_Project.AppCode.Helper;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Authorization;

namespace JLNP_Project.Controllers
{
    [Authorize]
    public class AttendanceController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly LoginInfo _lr;
        Attendance_BAL _bal = new Attendance_BAL();
        public AttendanceController(IHttpContextAccessor accessor)
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
        }
        [HttpGet("/Attendance/MarkAttendance")]
        public IActionResult Index()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
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
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
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
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
        }
    }
}
