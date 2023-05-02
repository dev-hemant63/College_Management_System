using JLNP_Project.AppCode.BAL;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using System.Data;
using Newtonsoft.Json;
using JLNP_Project.AppCode.Helper;
using System.Text;
using JLNP_Project.AppCode.AppUtilty;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;

namespace JLNP_Project.Controllers
{
    public class AccountController : Controller
    {
        DataTable dt = new DataTable();
        SendEmail _email = new SendEmail();
        private readonly IHttpContextAccessor _accessor;
        public AccountController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
        }
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Login(Account account)
        {
            var res = await DoLoginAsync(account);
            if(account.RequestMode == RequestMode.Web)
            {
                if (res.LoginTypeId > 0)
                {
                    if (res.LoginTypeId == 1)
                    {
                        if (account.ReturnUrl == null || account.ReturnUrl == "/")
                        {
                            return RedirectToAction("Index", "Admin");
                        }
                        else
                        {
                            return Redirect(account.ReturnUrl);
                        }
                    }
                    else if (res.LoginTypeId == 2)
                    {
                        if (account.ReturnUrl == null || account.ReturnUrl == "/")
                        {
                            return RedirectToAction("TeacherDash", "Admin");
                        }
                        else
                        {
                            return Redirect(account.ReturnUrl);
                        }
                    }
                    else
                    {
                        if (account.ReturnUrl == null || account.ReturnUrl == "/")
                        {
                            return RedirectToAction("Index", "Student");
                        }
                        else
                        {
                            return Redirect(account.ReturnUrl);
                        }
                    }
                }
                else
                {
                    TempData["ErrMsg"] = res.Msg;
                }
                return View();
            }
            else
            {
                if(res.LoginTypeId > 0)
                {
                    res.statuscode = 1;
                    return Json(res);
                }
            }
            return View();
        }
        public IActionResult logout()
        {
            HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            HttpContext.Response.Cookies.Delete(AppConsts.AppCookies);
            HttpContext.Response.Cookies.Delete(AppConsts.AppToken);
            HttpContext.Response.Cookies.Delete(AppConsts.AppSession);
            HttpContext.Session.Clear();
            HttpContext.Response.Cookies.Delete(".AspNetCore.Cookies");
            HttpContext.Response.Cookies.Delete(".AspNetCore.Identity.Application");
            return RedirectToAction("Login");
        }
        [HttpPost]
        public IActionResult _ChangePassword(int UserID)
        {
            LoginInfo lr = new LoginInfo();
            lr.UserId = UserID;
            return PartialView("Partial/ChangePassoword", lr);
        }
        [HttpPost]
        [Authorize]
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
            lr = JsonConvert.DeserializeObject<LoginInfo>(acc.HttpContext.Session.GetString(AppConsts.AppSession));
            return View(lr);
        }
        [HttpGet("ExpiresAt")]
        public IActionResult ExpiresAt()
        {
            var res = HttpContext.Session.GetInt32("Timeout") ?? 0;
            var lr = JsonConvert.DeserializeObject<LoginInfo>(HttpContext.Session.GetString(AppConsts.AppSession));
            return Ok(new
            {
                Expiresat = res,
                UserId = lr.UserName,
                Password = lr.password,
                LoginTypeId = lr.LoginTypeId,
            });
        }
        [HttpGet("DecryptToken")]
        public IActionResult DecryptToken(string p)
        {
            var encrypted = Encreption.EncryptStringAES(p);
            return Ok(encrypted);
        }
        private async Task<ResponseStatus> DoLoginAsync(Account account)
        {
            var res = new ResponseStatus
            {
                LoginTypeId = -1,
            };
            #region DBTomodel
            Account_BAL AC_BAL = new Account_BAL();
            LoginInfo _lr = new LoginInfo();
            CookieOptions options = new CookieOptions();
            DataTable dt = AC_BAL.Login_BAL_V1(account);
            #endregion
            if (dt.Rows.Count > 0)
            {
                var sts = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                try
                {
                    if (sts == 1)
                    {
                        #region DBToModel
                        options.Expires = DateTime.Now.AddMinutes(AppConsts.SessionTime);
                        _lr.LoginTypeId = Convert.ToInt32(dt.Rows[0]["LoginTypeId"]);
                        _lr.UserName = Convert.ToString(dt.Rows[0]["Email"].ToString());
                        _lr.EMail = Convert.ToString(dt.Rows[0]["Email"].ToString());
                        _lr.Name = Convert.ToString(dt.Rows[0]["Name"].ToString());
                        _lr.Phone = Convert.ToString(dt.Rows[0]["Mobile"].ToString());
                        _lr.Adress = Convert.ToString(dt.Rows[0]["Address"].ToString());
                        _lr.DOB = Convert.ToString(dt.Rows[0]["DOB"].ToString());
                        _lr.Role = Convert.ToString(dt.Rows[0]["Role"].ToString());
                        _lr.password = Convert.ToString(dt.Rows[0]["Password"].ToString());
                        _lr.UserId = Convert.ToInt32(dt.Rows[0]["_UId"]);
                        TempData["UserId"] = _lr.UserId;
                        res.LoginTypeId = _lr.LoginTypeId;
                        _lr.SessionExpireTime = DateTime.Now.ToString("hh:mm:ss");
                        #endregion

                        #region SetIddentity
                        // Identity login
                        var claim = new List<Claim>
                        {
                            new Claim(ClaimTypes.Name,_lr.Name),
                            new Claim(ClaimTypes.Sid,Convert.ToString(_lr.LoginTypeId)),
                            new Claim(ClaimTypes.Email,_lr.EMail),
                            new Claim(ClaimTypes.UserData,_lr.UserName),
                            new Claim(ClaimTypes.MobilePhone,_lr.Phone),
                            new Claim(ClaimTypes.StreetAddress,_lr.Adress),
                            new Claim(ClaimTypes.Role,_lr.Role.ToString()),
                            new Claim(ClaimTypes.SerialNumber,_lr.UserId.ToString()),
                        };
                        var identity = new ClaimsIdentity(claim, CookieAuthenticationDefaults.AuthenticationScheme);
                        var AuthProps = new AuthenticationProperties
                        {
                            AllowRefresh = true,
                            IsPersistent = true,
                            ExpiresUtc = DateTime.UtcNow.AddMinutes(AppConsts.SessionTime)
                        };
                        await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(identity), AuthProps);
                        #endregion

                        #region SetCookies
                        // Cookies And Session

                        Response.Cookies.Append(AppConsts.AppCookies, JsonConvert.SerializeObject(_lr), options);
                        HttpContext.Session.SetString(AppConsts.AppSession, JsonConvert.SerializeObject(_lr));
                        HttpContext.Session.SetInt32("Timeout", AppConsts.SessionTime * 60);
                        var _ = AC_BAL.Saveloginsession(HttpContext.Session.Id, _lr.UserId, RequestMode.Web);
                        var session = _accessor.HttpContext.Session.Get(AppConsts.AppSession);
                        var token = Encoding.UTF8.GetString(session);
                        var encrypted = Encreption.EncryptStringAES(token.ToString());
                        Response.Cookies.Append(AppConsts.AppToken, encrypted);
                        #endregion
                    }
                    else
                    {
                        #region InvalidUser
                        res.LoginTypeId = Convert.ToInt32(dt.Rows[0]["LoginTypeId"]);
                        res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                        res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                        ViewBag.msg = res.Msg;
                        #endregion
                    }
                }
                catch (Exception ex)
                {
                    TempData["Msg"] = "Login Failed";
                }
            }
            return res;
        }
    }
}
