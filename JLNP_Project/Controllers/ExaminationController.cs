using JLNP_Project.AppCode.Interface;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace JLNP_Project.Controllers
{
    public class ExaminationController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly IExamination _exam;
        LoginInfo _lr = new LoginInfo();

        public ExaminationController(IHttpContextAccessor accessor, IExamination exam)
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
            _exam = exam;
        }
        #region ExamType
        public IActionResult ExamType()
        {
            var res = _exam.GetExamType(0);
            return View(res);
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
        [HttpPost]
        public IActionResult AddExam(int ExamGID)
        {
            var model = new AddExam();
            model.ExamGroup = _exam.GetExamGroup(0);
            model.GroupID = ExamGID;
            return PartialView(model);
        }
    }
}
