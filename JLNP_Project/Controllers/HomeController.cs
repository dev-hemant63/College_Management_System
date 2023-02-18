using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Net;
using System.Net.Mail;

namespace JLNP_Project.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        Student_BAL StBAL = new Student_BAL();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
                return View();
        }
        [Route("teacher")]
        public IActionResult teacher()
        {
            return View();
        }
        [Route("contact")]
        public IActionResult Contact()
        {
            return View();
        }
        [Route("event-grid")]
        public IActionResult eventgrid()
        {
            return View();
        }
        [Route("course-grid")]
        public IActionResult coursegrid()
        {
            return View();
        }
        [Route("about")]
        public IActionResult about()
        {
            return View();
        }
        [Route("registration")]
        public IActionResult registration()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
        }
        [HttpPost]
        [Route("studentregistration")]
        public IActionResult _AddStudent(Student student)
        {
            student.Action = "Add";
            var dt = StBAL.AddStudent_BAL(student);
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error",
                RegistrationNo = "0"
            };
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
                res.RegistrationNo = Convert.ToString(dt.Rows[0]["RegistrationNo"].ToString());
            }
            if (res.statuscode != 0 || res.statuscode != -1)
            {
                try
                {
                    string frommail = "jlnp.mmb222503@gmail.com";
                    string frompassword = "suebgqbqjhdkxnsp";

                    MailMessage massage = new MailMessage();
                    massage.From = new MailAddress(frommail);
                    massage.Subject = "Jawahar lal Neharu Polytechnic";
                    massage.To.Add(new MailAddress(student.Email));
                    massage.Body = "<html><body><h3>Student Registration Successfully</h3><br>Your Registration Number Is: " + "  " + res.RegistrationNo + "</body></html>";
                    massage.IsBodyHtml = true;

                    var smtpclient = new SmtpClient("smtp.gmail.com")
                    {
                        Port = 587,
                        Credentials = new NetworkCredential(frommail, frompassword),
                        EnableSsl = true
                    };
                    smtpclient.Send(massage);
                }
                catch (Exception ex)
                {

                }
            }
            return Json(res);
        }
        [Route("gallery")]
        public IActionResult gallery()
        {
            return View();
        }
        [HttpPost]
        [Route("ProgramWiseBranch")]
        public IActionResult BindProgramWiseBranch(int ProgramId)
        {
            IMasterML ml = new MasterML();
            var res = ml.BindProgramWiseBranch(ProgramId);
            return Json(res);
        }
        public IActionResult Privacy()
        {
            if (Request.Cookies["UserName"] != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        [HttpGet]
        public IActionResult SwaggerClient()
        {
            return View();
        }
    }
}