using JLNP_Project.AppCode.BAL;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using System.Data;
using Newtonsoft.Json;

namespace JLNP_Project.Controllers
{
    public class AccountController : Controller
    {
        DataTable dt = new DataTable();
        public IActionResult UsersLogin()
        {
            return View();
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
                    if(sts == 1)
                    {
                        LoginInfo _lr = new LoginInfo();
                        CookieOptions options = new CookieOptions();
                        options.Expires = DateTime.Now.AddMinutes(30);

                        _lr.LoginTypeId = Convert.ToInt32(dt.Rows[0]["LoginTypeId"]);
                        _lr.UserName = Convert.ToString(dt.Rows[0]["Name"].ToString());
                        _lr.UserId = Convert.ToInt32(dt.Rows[0]["_UId"]);

                        Response.Cookies.Append("Role", _lr.LoginTypeId.ToString(), options);
                        Response.Cookies.Append("UserName", _lr.UserName.ToString(),options);
                        HttpContext.Session.SetString("Userdata", JsonConvert.SerializeObject(_lr));
                        res.LoginTypeId = _lr.LoginTypeId;
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
            Response.Cookies.Delete("UserName");
            HttpContext.Session.Clear();
            return RedirectToAction("UsersLogin");
        }
        [HttpPost]
        public IActionResult ChangePassword(Account account)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error",
                LoginTypeId = -1
            };
            Account_BAL AC_BAL = new Account_BAL();
            DataTable dt = AC_BAL.ChangePassword_BAL(account);
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
            }
            return Json(res);
        }
    }
}
