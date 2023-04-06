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
    }
}
