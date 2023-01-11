using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;
using System.IO;
using System.Text;

namespace JLNP_Project.Controllers
{
    public class MasterController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly IWebHostEnvironment _webHostEnvironment;
        LoginInfo _lr = new LoginInfo();

        public MasterController(IHttpContextAccessor accessor, IWebHostEnvironment webHostEnvironment)
        {
            _accessor = accessor;
            _webHostEnvironment = webHostEnvironment;
            _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
        }
        public IActionResult SubjectMaster()
        {
            if (_lr.UserName != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult SaveSubjectMaster(SubjectMaster subjectMaster)
        {
            Master_BAL msdal = new Master_BAL();
            subjectMaster.Action = "Add";
            var res = msdal.SaveSubject_Bal(subjectMaster);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetSubjectMaster(SubjectMaster subjectMaster)
        {
            Master_BAL msdal = new Master_BAL();
            subjectMaster.Action = "Get";
            var res = msdal.GetSubject_Bal(subjectMaster);
            return PartialView("Partial/_GetSubjectMaster", res);
        }
        public IActionResult GetSubjectMaster_ById(SubjectMaster subjectMaster)
        {
            Master_BAL msdal = new Master_BAL();
            subjectMaster.Action = "GetById";
            var res = msdal.GetSubject_Bal_ById(subjectMaster);
            return View(res);
        }
        [HttpPost]
        public IActionResult EditSubjectMaster(SubjectMaster subjectMaster)
        {
            Master_BAL msdal = new Master_BAL();
            subjectMaster.Action = "Edit";
            var res = msdal.EditSubjectMaster_Bal(subjectMaster);
            return Json(res);
        }
        [HttpPost]
        public IActionResult DeleteSubject(int Id, string Action)
        {
            Master_BAL msdal = new Master_BAL();
            Action = "Delete";
            var res = msdal.DeleteSubject_Bal(Id, Action);
            return Json(res);
        }
        [HttpGet]
        public IActionResult NotificationMaster()
        {
            return View();
        }
        [HttpPost]
        public IActionResult NotificationMaster(NotificationMaster model)
        {
            model.UserID = _lr.LoginTypeId;
            model.Action = "Add";
            IStudent ml = new StudentML();
            var res = ml.SaveNotifications(model);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetNotificationMaster()
        {
            var model = new NotificationMaster
            {
                UserID = _lr.LoginTypeId,
                Action = "Get"
            };
            IStudent ml = new StudentML();
            var res = ml.GetNotifications(model);
            return PartialView("Partial/_GetNotifications", res);
        }
        [HttpPost]
        public IActionResult EditNotificationMaster(int ID)
        {
            var model = new NotificationMaster
            {
                UserID = _lr.LoginTypeId,
                Action = "Get",
                ID = ID
            };
            IStudent ml = new StudentML();
            var res = ml.GetNotifications(model);
            return PartialView("Partial/_EditNotifications", res.FirstOrDefault());
        }
        [HttpPost]
        public IActionResult DeleteNotificationMaster(int ID)
        {
            var model = new NotificationMaster
            {
                UserID = _lr.LoginTypeId,
                Action = "Delete",
                ID = ID
            };
            IStudent ml = new StudentML();
            var res = ml.DeleteNotifications(model);
            return Json(res);
        }
        [HttpPost]
        public IActionResult UpdateNotificationtype(int ID, int IsStaff)
        {
            var model = new NotificationMaster
            {
                UserID = _lr.LoginTypeId,
                Action = "UpdateType",
                ID = ID,
                IsStaff = IsStaff
            };
            IStudent ml = new StudentML();
            var res = ml.DeleteNotifications(model);
            return Json(res);
        }
        [HttpGet]
        public IActionResult SyllabusMaster()
        {
            return View();
        }
        [HttpPost]
        public IActionResult SyllabusMaster(IFormFile Files, int Branch, int Subject, int Year)
        {
            var rse = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            if (Files != null)
            {
                try
                {
                    string filepath = @"Syllabus\" + Year;
                    StringBuilder uploadsFolder = new StringBuilder(Path.Combine(_webHostEnvironment.WebRootPath, filepath));
                    if (!Directory.Exists(uploadsFolder.ToString()))
                        Directory.CreateDirectory(uploadsFolder.ToString());
                    uploadsFolder.Append(Path.Combine(@"\", Files.FileName.ToString()));
                    using (FileStream fs = System.IO.File.Create(uploadsFolder.ToString()))
                    {
                        Files.CopyTo(fs);
                        fs.Flush();
                    }
                    var req = new SyllabusMaster
                    {
                        Branch = Branch,
                        Subject = Subject,
                        Year = Year,
                        Filepath = @"\" + filepath + @"\" + Files.FileName,
                        UserId = _lr.UserId
                    };
                    IStudent ml = new StudentML();
                    var response = ml.UploadSyllabus(req);
                    rse.statuscode = response.statuscode;
                    rse.Msg = response.Msg;
                }
                catch (Exception ex)
                {
                    rse.Msg = ex.Message;
                }
            }
            else
            {
                rse.Msg = "Please Upload Image!";
            }
            return Json(rse);
        }
        [HttpPost]
        public IActionResult DeleteSyllabus(int ID)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            IStudent ml = new StudentML();
            var response = ml.DeleteSyllabus(ID);
            if (response != null)
            {
                string path = _webHostEnvironment.WebRootPath + response.Filepath;
                FileInfo file = new FileInfo(path);
                if (file.Exists)//check file exsit or not
                {
                    file.Delete();
                    res.Msg = " Syllabus deleted successfully!";
                    res.statuscode = 1;
                }
                else
                {
                    res.Msg = " Syllabus not Exists!";
                    res.statuscode = 1;
                }
            }
            return Json(res);
        }
        
        [HttpPost]
        public IActionResult EditSyllabus(int ID)
        {
            var res = new SyllabusViewModel();
            var midlelayar = new StudentML();
            Admin_BAL adbal = new Admin_BAL();
            IStudent ml = new StudentML();
            res.Branch = midlelayar.BindBranch();
            res.SyllabusMaster = ml.GetSyllabusByID(ID);
            res.subjectMasters = adbal.Bind_Subjects_Bal();
            return PartialView("Partial/_EditSyllabus", res);
        }
        [HttpPost]
        public IActionResult UpdateSyllabusMaster(IFormFile Files, int Branch, int Subject, int Year,int ID)
        {
            var rse = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            if (Files != null)
            {
                try
                {
                    string filepath = @"Syllabus\" + Year;
                    StringBuilder uploadsFolder = new StringBuilder(Path.Combine(_webHostEnvironment.WebRootPath, filepath));
                    if (!Directory.Exists(uploadsFolder.ToString()))
                        Directory.CreateDirectory(uploadsFolder.ToString());
                    uploadsFolder.Append(Path.Combine(@"\", Files.FileName.ToString()));
                    var req = new SyllabusMaster
                    {
                        Branch = Branch,
                        Subject = Subject,
                        Year = Year,
                        Filepath = @"\" + filepath + @"\" + Files.FileName,
                        UserId = _lr.UserId,
                        ID = ID
                    };
                    IStudent ml = new StudentML();
                    var response = ml.UpdateSyllabus(req);
                    rse.statuscode = response.statuscode;
                    if (rse.statuscode == 1)
                    {
                        using (FileStream fs = System.IO.File.Create(uploadsFolder.ToString()))
                        {
                            Files.CopyTo(fs);
                            fs.Flush();
                        }
                    }
                    rse.Msg = response.Msg;
                }
                catch (Exception ex)
                {
                    rse.Msg = ex.Message;
                }
            }
            else
            {
                rse.Msg = "Please Upload Image!";
            }
            return Json(rse);
        }
        [HttpGet]
        public IActionResult VideoLecture()
        {
            return View();
        }
        [HttpPost]
        public IActionResult SaveAndVideoLecture(CommanMasterReq request)
        {
            IMasterML ml = new MasterML();
            request.UserId = _lr.UserId;
            var res = ml.SaveAndUpdateVideoUrl(request);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetVideoLecture()
        {
            IMasterML ml = new MasterML();
            int Id = 0;
            var res = ml.GetVideoUrl(Id);
            return PartialView("Partial/_GetVideoLecture", res);
        }
        [HttpGet]
        public IActionResult ProgramMaster()
        {
            return View();
        }
        [HttpPost]
        public IActionResult AddAndUpdateProgram(ProgramMaster programMaster)
        {
            IMasterML ml = new MasterML();
            programMaster.UserId = _lr.UserId;
            var res = ml.SaveAndUpdateProgram(programMaster);
            return Json(res);
        }
        [HttpPost]
        public IActionResult GetProgramMaster()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return PartialView("Partial/_GetProgramMaster", res);
        }
        [HttpPost]
        public IActionResult DeleteProgramMaster(int Id)
        {
            IMasterML ml = new MasterML();
            var res = ml.DeleteProgram(Id);
            return Json(res);
        }
        [HttpPost]
        public IActionResult EditProgramMaster(int Id)
        {
            IMasterML ml = new MasterML();
            var res = ml.EditProgram(Id);
            return PartialView("Partial/_EditProgram", res);
        }
        [HttpGet]
        public IActionResult ProgramBranchMapping()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetProgram();
            return View(res);
        }
        [HttpPost]
        public IActionResult SaveProgramBranchMapping(ProgramBranchMapping req)
        {
            IMasterML ml = new MasterML();
            req.UserId = _lr.UserId;
            var response = ml.SaveProgramBranchMapping(req);
            return Json(response);
        }
        [HttpPost]
        public IActionResult GetProgramBranchMapping()
        {
            IMasterML ml = new MasterML();
            var response = ml.GetProgramBranchMapping();
            return PartialView("Partial/_GetProgramBranchMapping", response);
        }
        [HttpPost]
        public IActionResult EditProgramBranchMapping(int ID)
        {
            ProgramBranchMappingViewModel model = new ProgramBranchMappingViewModel();
            IMasterML ml = new MasterML();
            var midlelayar = new StudentML();
            model.program = ml.GetProgram();
            model.branch = midlelayar.BindBranch();
            model.data= ml.EditProgramBranchMapping(ID);
            return PartialView("Partial/_EditProgramBranchMapping", model);
        }
        [HttpPost]
        public IActionResult DeleteProgramBranchMapping(int ID)
        {
            IMasterML ml = new MasterML();
            var res = ml.DeleteProgramBranchMapping(ID);
            return PartialView("Partial/_EditProgramBranchMapping", res);
        }
    }
}

