using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace JLNP_Project.Controllers
{
    [Authorize]
    public class ExaminationController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly IExamination _exam;
        private readonly LoginInfo _lr;
        public ExaminationController(IHttpContextAccessor accessor, IExamination exam)
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
            _exam = exam;
        }
        #region ExamType
        public IActionResult ExamType()
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var res = _exam.GetExamType(0);
                return View(res);
            }
            return RedirectToAction("Error", "Home");
        }
        public IActionResult AddExamType(int ID)
        {
            if (ID != 0)
            {
                var res = _exam.GetExamType(ID);
                return PartialView(res.FirstOrDefault());
            }
            return PartialView();
        }
        public IActionResult SaveExamType(ExamType req)
        {
            var res = _exam.SaveExamType(req);
            return Json(res);
        }
        public IActionResult DeleteExamType(int ID)
        {
            var res = _exam.DeleteExamType(ID);
            return Json(res);
        }
        #endregion
        #region ExamGroup
        [HttpPost]
        public IActionResult GetExamGroup()
        {
            var res = _exam.GetExamGroup(0);
            return PartialView(res);
        }
        public IActionResult AddExamGroup(int ID)
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var model = new ExamGroupe();
                model.ExamTypes = _exam.GetExamType(0);
                if (ID != 0)
                {
                    var res = _exam.GetExamGroup(ID);
                    model = res.FirstOrDefault();
                    model.ExamTypes = _exam.GetExamType(0);
                }
                return View(model);
            }
            return RedirectToAction("Error", "Home");
        }
        public IActionResult DeleteExamGroup(int ID)
        {
            var res = _exam.DeleteExamGroup(ID);
            var model = new ExamGroupe();
            model.ExamTypes = _exam.GetExamType(0);
            return View("AddExamGroup", model);
        }
        public IActionResult SaveExamGroup(ExamGroupe req)
        {
            req.UserID = _lr.UserId;
            var res = _exam.SaveExamGroup(req);
            return Json(res);
        }
        #endregion
        #region Exam
        [HttpPost]
        public IActionResult AddExam(int ExamGID = 0, int Id = 0)
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var model = new AddExam();
                model.ExamGroup = _exam.GetExamGroup(0);
                if (Id != 0)
                {
                    var res = _exam.GetExam(Id).FirstOrDefault();
                    model.GroupID = res.GroupId;
                    model.Exam = res.ExamTitle;
                    model.Id = res.Id;
                }
                else
                {
                    model.GroupID = ExamGID;
                }
                return PartialView(model);
            }
            return RedirectToAction("SessionExpired", "Home");
        }
        [HttpPost]
        public IActionResult SaveExam(Exam req)
        {
            req.UserID = _lr.UserId;
            var res = _exam.AddExam(req);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetExam(Exam req)
        {
            var res = _exam.GetExam(0);
            return PartialView(res);
        }
        [HttpPost]
        public IActionResult GetExams()
        {
            var res = _exam.GetExam(0);
            return PartialView("GetExam", res);
        }
        [HttpPost]
        public IActionResult ExamMarks(int ExamId,int SubjectId)
        {
            var res = new AssignExam();
            res.ExamID = ExamId;
            Master_BAL msdal = new Master_BAL();
            IMasterML ml = new MasterML();
            res.Program = ml.GetProgram();
            var subjectDetails = msdal.GetSubject_Bal_ById(new SubjectMaster
            {
                Action = "GetById",
                Id = SubjectId
            });
            res.IsThoery = subjectDetails.IsWritten;
            res.IsPrectical = subjectDetails.IsPrectical;
            res.SubjectId = SubjectId;
            return PartialView(res);
        }
        [HttpPost]
        public IActionResult ExamSubjects(int ExamId)
        {
            var res = _exam.GetExamdetail(ExamId);
            return PartialView(res);
        }
        [HttpPost]
        public IActionResult DeleteExams(int Id)
        {
            var res = _exam.DeleteExam(Id);
            return Json(res);
        }
        [HttpGet]
        public IActionResult Exam()
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                return View();
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult AssignExam(int Id)
        {
            var res = new AssignExam();
            res.ExamID = Id;
            IMasterML ml = new MasterML();
            res.Program = ml.GetProgram();
            return PartialView(res);
        }
        [HttpPost]
        public IActionResult GetStudent(int BranchId, int Program, int Year, int ExamID, bool IsMarks,bool IsWritten,bool IsPrectical, int SID = 0)
        {
            Attendance_BAL _bal = new Attendance_BAL();
            var res = _bal.GetStudentforAttendance(BranchId, Program, Year, "", ExamID,IsMarks, SID);
            res.IsMarks = IsMarks;
            res.SubjectID = SID;
            res.ExamID = ExamID;
            if (IsMarks)
            {
                res.IsPrectical = IsPrectical;
                res.IsWritten = IsWritten;
                return PartialView("GetStudentForResult", res);
            }
            else
            {
                return PartialView(res);
            }
        }
        [HttpPost]
        public IActionResult SaveAssignExam(List<AssignExam> req)
        {
            var res = new ResponseStatus();
            foreach (var item in req)
            {
                res = _exam.AssignExam(item);
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult AddExamSubject(int Id)
        {
            var res = new ExamDetailViewModel();
            res.subject = _exam.GetSubject();
            res.data = _exam.GetExamdetail(Id);
            res.ExamID = Id;
            return PartialView(res);
        }
        [HttpPost]
        public IActionResult GetSubject()
        {
            var res = _exam.GetSubject();
            return Json(res);
        }
        [HttpPost]
        public IActionResult SaveExamDetail(List<ExamDetail> req)
        {
            var res = new ResponseStatus();
            foreach (var item in req)
            {
                res = _exam.AddExamDetail(item);
            }
            return Json(res);
        }
        [HttpGet]
        public IActionResult ExamSchedule()
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var res = _exam.GetExamGroup(0);
                return View(res);
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult GetExamSchedule(int ExamId)
        {
            var res = _exam.GetExamdetail(ExamId);
            return PartialView(res);
        }
        [HttpPost]
        public IActionResult BindExam(int Groupid)
        {
            var res = _exam.BindExam(Groupid);
            return Json(res);
        }
        #endregion
        #region ExamGrade
        [HttpGet]
        public IActionResult ExamGrade()
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var res = _exam.GetExamgrade(0);
                return View(res);
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult AddExamGrade(int Id)
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var model = new GradeViewModel();
                if (Id != 0)
                {
                    model.data = _exam.GetExamgrade(Id).FirstOrDefault();
                }
                model.type = _exam.GetExamType(0);
                return PartialView(model);
            }
            return RedirectToAction("SessionExpired", "Home");
        }
        [HttpPost]
        public IActionResult SaveExamGrade(ExamModel req)
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var res = _exam.AddExamGrade(req);
                return Json(res);
            }
            return RedirectToAction("SessionExpired", "Home");
        }
        [HttpPost]
        public IActionResult DeleteExamGrade(int Id)
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var res = _exam.DeleteExamGrade(Id);
                return Json(res);
            }
            return RedirectToAction("SessionExpired", "Home");
        }
        #endregion
        #region Exam Result
        [HttpGet("Examination/ExamResults")]
        public IActionResult ExamResult()
        {
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                var mdl = new ResultViewModel();
                IMasterML ml = new MasterML();
                mdl.ExamGroup = _exam.GetExamGroup(0);
                mdl.Program = ml.GetProgram();
                return View(mdl);
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult DetailsForResult(SearchDetailsForResult req)
        {
            var res = _exam.GetDetailsForResult(req);
            return Json(res);
        }
        [HttpPost]
        public IActionResult SaveExamMarks(List<ExamMarks> req)
        {
            var res = new ResponseStatus();
            foreach (var item in req)
            {
                res = _exam.SaveExamMarks(item);
            }
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetExamResult(SearchDetailsForResult req)
        {
            var res = _exam.GetExamResult(req);
            return PartialView(res);
        }
        [HttpGet]
        public IActionResult MarkSheet(int Program,int Branch,int Year,string Enrollment,int ExamId)
        {
            var req = new SearchDetailsForResult
            {
                Program = Program,
                Branch = Branch,
                Year = Year,
                Enrollment = Enrollment,
                ExamId = ExamId
            };
            var res = _exam.GetExamResult(req);
            return View(res);
        }
        #endregion
    }
}
