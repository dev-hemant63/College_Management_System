using JLNP_Project.AppCode.BAL;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using System.Data;
using Newtonsoft.Json;
using JLNP_Project.AppCode.Helper;

namespace JLNP_Project.Controllers
{
    public class AccountController : Controller
    {
        DataTable dt = new DataTable();
        SendEmail _email = new SendEmail();
        [HttpGet]
        public IActionResult UsersLogin()
        {
            if (SyatemSetting.LoginTheme == 1)
            {
                return View("UsersLogin");
            }
            if (SyatemSetting.LoginTheme == 2)
            {
                return View("UsersLogin2");
            }
            return Ok();
        }
        [HttpPost]
        public IActionResult Login(Account account)
        {
            ResponseStatus res = new ResponseStatus
            {
                LoginTypeId = -1,
            };
            Account_BAL AC_BAL = new Account_BAL();
            DataTable dt = AC_BAL.Login_BAL_V1(account);
            if (dt.Rows.Count > 0)
            {
                var sts = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                try
                {
                    if (sts == 1)
                    {
                        LoginInfo _lr = new LoginInfo();
                        CookieOptions options = new CookieOptions();
                        options.Expires = DateTime.Now.AddMinutes(30);
                        _lr.LoginTypeId = Convert.ToInt32(dt.Rows[0]["LoginTypeId"]);
                        _lr.UserName = Convert.ToString(dt.Rows[0]["Email"].ToString());
                        _lr.EMail = Convert.ToString(dt.Rows[0]["Email"].ToString());
                        _lr.Name = Convert.ToString(dt.Rows[0]["Name"].ToString());
                        _lr.Phone = Convert.ToString(dt.Rows[0]["Mobile"].ToString());
                        _lr.Adress = Convert.ToString(dt.Rows[0]["Address"].ToString());
                        _lr.DOB = Convert.ToString(dt.Rows[0]["DOB"].ToString());
                        _lr.Role = Convert.ToString(dt.Rows[0]["Role"].ToString());
                        _lr.UserId = Convert.ToInt32(dt.Rows[0]["_UId"]);
                        TempData["UserId"] = _lr.UserId;
                        res.LoginTypeId = _lr.LoginTypeId;
                        _lr.SessionExpireTime = DateTime.Now.ToString("hh:mm:ss");
                        Response.Cookies.Append("ApplicationCookies", JsonConvert.SerializeObject(_lr), options);
                        HttpContext.Session.SetString("Userdata", JsonConvert.SerializeObject(_lr));
                        var _ = AC_BAL.Saveloginsession(HttpContext.Session.Id, _lr.UserId, RequestMode.Web);
                    }
                    else
                    {
                        res.LoginTypeId = Convert.ToInt32(dt.Rows[0]["LoginTypeId"]);
                        res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                        res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                        ViewBag.msg = res.Msg;
                    }
                }
                catch (Exception ex)
                {
                    TempData["Msg"] = "Login Failed";
                }
            }
            return Json(res);
        }
        public IActionResult logout()
        {
            HttpContext.Response.Cookies.Delete("ApplicationCookies");
            HttpContext.Session.Clear();
            return RedirectToAction("UsersLogin");
        }
        [HttpPost]
        public IActionResult _ChangePassword(int UserID)
        {
            LoginInfo lr = new LoginInfo();
            lr.UserId = UserID;
            return PartialView("Partial/ChangePassoword", lr);
        }
        [HttpPost]
        public IActionResult ChangePassword(Account account)
        {
            Account_BAL AC_BAL = new Account_BAL();
            var res = AC_BAL.ChangePassword_BAL(account);
            if (res.statuscode == 1)
            {
                string title = "Password Changed Successfully";
                string Msg = res.UserId == 1 ? "Dear Admin" + "Your Password Changed Successfully.. <b />And Your Current Password Is " + "<b>" + account.Password + "</b>" : "Dear Student" + "Your Password Changed Successfully.. <b />And Your Current Password Is" + "<b>" + account.Password + "</b>";
                var _ = _email.SendMail(res.UserEmail, title, Msg);
            }
            return Json(res);
        }
        [HttpGet]
        public IActionResult ForgetPassword()
        {
            return View();
        }
        [HttpPost]
        public IActionResult ForgetPasswordPost(string Enrollment = "", string Mobile = "")
        {
            Account_BAL AC_BAL = new Account_BAL();
            var res = AC_BAL.ForgetPassword_BAL(Enrollment, Mobile);
            if (res.statuscode == 1)
            {
                string title = "Jawahar lal neharu polytechnic";
                string Msg = "Dear Student" + "Your Password Is " + "<b>" + res.password;
                var _ = _email.SendMail(res.UserEmail, title, Msg);
            }
            return Json(res);
        }
        [HttpGet]
        public IActionResult Profile()
        {
            LoginInfo lr = new LoginInfo();
            IHttpContextAccessor acc = new HttpContextAccessor();
            lr = JsonConvert.DeserializeObject<LoginInfo>(acc.HttpContext.Session.GetString("Userdata"));
            return View(lr);
        }
    }
}
