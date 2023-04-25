using JLNP_Project.AppCode.BAL;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;

namespace JLNP_Project.Controllers
{
    public class TeacherController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();

        public TeacherController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
            _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
        }
        public IActionResult teacherlist()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult AddTeacher()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult _AddTeacher(Teacher teacher)
        {
            Teacher_BAL tBal = new Teacher_BAL();
            teacher.Action = "Add";
            var dt = tBal.AddTeacher_BAL(teacher);
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
        public IActionResult GetTeacher(string Action)
        {
            Teacher_BAL tBal = new Teacher_BAL();
            Action = "Get";
            var dt = tBal.GetTeacher_BAL(Action);
            var lst = new List<Teacher>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Teacher teacher = new Teacher
                    {
                        TeacherId = Convert.ToInt32(dr["TeacherId"]),
                        Name = Convert.ToString(dr["Name"].ToString()),
                        Fname = Convert.ToString(dr["FName"].ToString()),
                        Mobile = Convert.ToString(dr["Mobile"].ToString()),
                        Email = Convert.ToString(dr["Email"].ToString()),
                        DOB = Convert.ToString(dr["DOB"].ToString()),
                        salary = Convert.ToString(dr["salary"].ToString()),
                        Qualification = Convert.ToString(dr["Qualification"].ToString()),
                        Address = Convert.ToString(dr["Address"].ToString()),
                        Entrydate = Convert.ToString(dr["Entrydate"].ToString()),
                    };
                    lst.Add(teacher);
                }
            }
            return PartialView("Partial/_GetTeacher", lst);
        }
        public IActionResult GetTeacherById(Teacher teacher)
        {
            Teacher_BAL tBal = new Teacher_BAL();
            teacher.Action = "GetById";
            ViewBag.teacher = tBal.GetTeacher_BALById(teacher);
            return View();
        }
        [HttpPost]
        public IActionResult UpdateTeacher(Teacher teacher)
        {
            Teacher_BAL tBal = new Teacher_BAL();
            teacher.Action = "Update";
            var dt = tBal.UpdateTeacher_BAL(teacher);
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
        public IActionResult DeleteTeacher(Teacher teacher)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            Teacher_BAL tBal = new Teacher_BAL();
            teacher.Action = "Delete";
            var dt = tBal.DeleteTeacher(teacher);
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
            }
            return RedirectToAction("teacherlist");
        }
    }
}
