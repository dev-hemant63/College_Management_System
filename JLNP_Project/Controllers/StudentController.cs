using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using JLNP_Project.AppCode.BAL;
using System.Data;
using System.Net.Mail;
using System.Net;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using Newtonsoft.Json;

namespace JLNP_Project.Controllers
{
    public class StudentController : Controller
    {
        Student_BAL StBAL = new Student_BAL();
        Student student = new Student();
        private readonly IHttpContextAccessor _accessor;
        LoginInfo _lr = new LoginInfo();

        public StudentController(IHttpContextAccessor accessor)
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
                IStudent ml = new StudentML();
                var model = ml.GetStudentDetails(_lr.UserId);
                return View(model);
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult StudentProfile()
        {
            if (_lr.UserName != null)
            {
                IStudent ml = new StudentML();
                var model = ml.GetStudentDetails(_lr.UserId);
                return View(model);
            }
            return RedirectToAction("UsersLogin", "Account");
        }

        public IActionResult StudentList()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult AddStudent()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
        }
        [HttpPost]
        public IActionResult _AddStudent(Student student)
        {
           student.Action = "Add";
           var dt = StBAL.AddStudent_BAL(student);
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error",
                RegistrationNo="0"
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
                    massage.Body = "<html><body><h3>Student Registration Successfully</h3><br>Your Registration Number Is: "+"  "+ res.RegistrationNo + "</body></html>";
                    massage.IsBodyHtml = true;

                    var smtpclient = new SmtpClient("smtp.gmail.com")
                    {
                        Port = 587,
                        Credentials = new NetworkCredential(frommail,frompassword),
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
        [HttpPost]
        public IActionResult GetStudent(Student student)
        {
            student.Action = "Get";
            var StudentList = new List<Student>();
            var dt = StBAL.GetStudent_BAL(student);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    Student Smodel = new Student
                    {
                        Id = Convert.ToInt32(row["Id"]),
                        Name = Convert.ToString(row["Name"].ToString()),
                        Fname = Convert.ToString(row["Fname"].ToString()),
                        MotherName = Convert.ToString(row["MotherName"].ToString()),
                        FatherOccupation = Convert.ToString(row["FatherOccupation"].ToString()),
                        Email = Convert.ToString(row["Email"].ToString()),
                        Mobile = Convert.ToString(row["Mobile"].ToString()),
                        DOB = Convert.ToString(row["DOB"].ToString()),
                        Entrolment_No = Convert.ToString(row["Entrolment_No"].ToString()),
                        ProgramName = Convert.ToString(row["Program"].ToString()),
                        Branch = Convert.ToString(row["Branch"].ToString()),
                        Address = Convert.ToString(row["Address"].ToString()),
                        Gender = Convert.ToString(row["Gender"].ToString()),
                        Group = Convert.ToString(row["Group_Name"].ToString()),
                        EntryDate = Convert.ToString(row["EntryDate"].ToString()),
                    };
                    StudentList.Add(Smodel);
                }
            }
            return PartialView("Partial/_GetStudent",StudentList);
        }
        [HttpPost]
        public IActionResult BindBranch()
        {
            Branch_BAL BrBal = new Branch_BAL();
            string Action = "Get";
            var BranchList = new List<Branch>();
            var dt = BrBal.GetBranch_BAL(Action);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    Branch Bmodel = new Branch
                    {
                        BranchId = Convert.ToInt32(row["BranchId"]),
                        BranchName = Convert.ToString(row["Branch_Name"].ToString()),
                        BranchCode = Convert.ToString(row["Branch_Code"].ToString()),
                        EntryDate = Convert.ToString(row["EntryDate"].ToString())
                    };
                    BranchList.Add(Bmodel);
                }
            }
            return Json(BranchList);
        }
        public IActionResult GetStudentById(Student student)
        {
            EditStudentRegistration model = new EditStudentRegistration();
            IMasterML ml = new MasterML();
            var midlelayar = new StudentML();
            model.program = ml.GetProgram();
            model.branch = midlelayar.BindBranch();
            student.Action = "GetById";
            model.data = StBAL.GetStudentById_BAL(student);
            return View(model);
        }
        [HttpPost]
        public IActionResult _EditStudent(Student student)
        {
            student.Action = "Update";
            var dt = StBAL.updateStudent_BAL(student);
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
        public IActionResult DeleteStudent(Student student)
        {
            student.Action = "Delete";
            var dt = StBAL.DeleteStudent(student);
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
            return RedirectToAction("StudentList");
        }
        [HttpPost]
        public IActionResult SaveStudentFine(StudentFineMdl studentFineMdl)
        {
            IStudent resq = new StudentML();
            var respons = resq.SaveStudentFine(studentFineMdl);
            return Json(respons);
        }
        [HttpPost]
        public IActionResult GetStudentFineById(int Id)
        {
            IStudent resq = new StudentML();
            string Action = "Get";
            var respons = resq.GetStudentById(Action, Id);
            return PartialView("Partial/_EditStudentFine",respons);
        }
        public IActionResult DeleteStudentFine(string Action,int FineId)
        {
            IStudent resq = new StudentML();
            var respons = resq.DeleteStudentFine(Action, FineId);
            return Json(respons);
        }
        public IActionResult UpdateFineStatus(int Status, int FineId)
        {
            IStudent resq = new StudentML();
            var respons = resq.UpdateFineStatus(Status, FineId);
            return Json(respons);
        }
        [HttpPost]
        public IActionResult GetNotification()
        {
            IStudent resq = new StudentML();
            var respons = resq.GetStudentNotifications(_lr.UserId);
            return PartialView("Partial/_GetStudentNotifications", respons);
        }
        [HttpPost]
        public IActionResult GetStudentInfo()
        {
            IStudent resq = new StudentML();
            var respons = resq.GetStudentInfo(_lr.UserId);
            return Json(respons);
        }
        [HttpGet]
        public IActionResult Syllabus()
        {
            LoginInfo model = new LoginInfo();
            model.UserName = _lr.UserName;
            return View(model);
        }
        [HttpPost]
        public IActionResult GetSyllabus()
        {
            IStudent resq = new StudentML();
            var model = resq.GetStudentSyllabus(_lr.UserId);
            return PartialView("Partial/_GetStudentSyllabus", model);
        }
        [HttpGet]
        public IActionResult StudentAssignment()
        {
            LoginInfo model = new LoginInfo();
            model.UserName = _lr.UserName;
            return View(model);
        }
        [HttpGet]
        public IActionResult Videolecture()
        {
            LoginInfo model = new LoginInfo();
            model.UserName = _lr.UserName;
            return View(model);
        }
        [HttpPost]
        public IActionResult GetStudentAssignment()
        {
            IStudent ml = new StudentML();
            var model = ml.GetStudentAssignment(_lr.UserId);
            return PartialView("Partial/_GetStudentAssignment", model);
        }
    }
}
