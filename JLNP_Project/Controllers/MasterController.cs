using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
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
            try
            {
                if (_accessor.HttpContext.Session.GetString("Userdata") != null)
                {
                    _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString("Userdata"));
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
        }
        public IActionResult SubjectMaster()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    IMasterML ml = new MasterML();
                    var res = ml.GetProgram();
                    return View(res);
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        public IActionResult SubjectMasterList()
        {
            if (_lr.UserName != null)
            {
                if (_lr.LoginTypeId == 1)
                {
                    IMasterML ml = new MasterML();
                    var res = ml.GetProgram();
                    return View(res);
                }
                return RedirectToAction("Error", "Home");
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
        [HttpPost]
        public IActionResult ChangeSubjectStatus(int SubId, string Action, bool Status)
        {
            Master_BAL msdal = new Master_BAL();
            var req = new SubjectMaster
            {
                Action = Action,
                SubjectId = SubId,
                IsPrectical = Status,
                IsWritten = Status,
            };
            var res = msdal.SaveSubject_Bal(req);
            return Json(res);
        }
        public IActionResult GetSubjectMaster_ById(SubjectMaster subjectMaster)
        {
            if (_lr.LoginTypeId == 1)
            {
                EditSubjectViewModel obj = new EditSubjectViewModel();
                Master_BAL msdal = new Master_BAL();
                IMasterML ml = new MasterML();
                obj.programs = ml.GetProgram();
                subjectMaster.Action = "GetById";
                obj.data = msdal.GetSubject_Bal_ById(subjectMaster);
                return View(obj);
            }
            return RedirectToAction("Error", "Home");
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
        public IActionResult DeleteSubject(int Id)
        {
            Master_BAL msdal = new Master_BAL();
            string Action = "Delete";
            var res = msdal.DeleteSubject_Bal(Id, Action);
            return Json(res);
        }
        [HttpGet]
        public IActionResult NotificationMaster()
        {
            if (_lr.LoginTypeId != 3)
            {
                return View();
            }
            return RedirectToAction("Error", "Home");
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
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult SyllabusMaster(IFormFile Files, int Branch, int Subject, int Year, int Program)
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
                    string filepath = @"Syllabus\" + Program;
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
                        Program = Program,
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
            IMasterML mll = new MasterML();
            res.programlst = mll.GetProgram();
            res.Branch = midlelayar.BindBranch();
            res.SyllabusMaster = ml.GetSyllabusByID(ID);
            res.subjectMasters = adbal.Bind_Subjects_Bal();
            return PartialView("Partial/_EditSyllabus", res);
        }
        [HttpPost]
        public IActionResult UpdateSyllabusMaster(IFormFile Files, int Branch, int Subject, int Year, int ID, int Program)
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
                        Program = Program,
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
            if (_lr.LoginTypeId == 1 || _lr.LoginTypeId == 2)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult SaveAndUpdateVideoLecture(CommanMasterReq request)
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
        [HttpPost]
        public IActionResult EditVideoLecture(int ID = 0)
        {
            EditVideoLectureViewModel model = new EditVideoLectureViewModel();
            IMasterML ml = new MasterML();
            var midlelayar = new StudentML();
            Admin_BAL adbal = new Admin_BAL();
            model.data = ml.EditVideoUrl(ID);
            model.program = ml.GetProgram();
            model.subject = adbal.BindSubject_Bal(model.data.BranchId);
            model.branch = ml.BindProgramWiseBranch(model.data.Program); ;
            return PartialView("Partial/_EditVideoLecture", model);
        }
        [HttpPost]
        public IActionResult DeleteVideoLecture(int ID = 0)
        {
            IMasterML ml = new MasterML();
            var res = ml.DeleteVideoUrl(ID);
            return Json(res);
        }
        [HttpGet]
        public IActionResult ProgramMaster()
        {
            if (_lr.LoginTypeId == 1)
            {
                return View();
            }
            return RedirectToAction("Error", "Home");
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
            if (_lr.LoginTypeId ==1)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("Error", "Home");
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
            model.data = ml.EditProgramBranchMapping(ID);
            model.batch = ml.GetBatch();
            return PartialView("Partial/_EditProgramBranchMapping", model);
        }
        [HttpPost]
        public IActionResult DeleteProgramBranchMapping(int ID)
        {
            IMasterML ml = new MasterML();
            var res = ml.DeleteProgramBranchMapping(ID);
            return Json(res);
        }
        [HttpGet]
        public IActionResult BatchMaster()
        {
            if (_lr.LoginTypeId == 1)
            {
                return View();
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpPost]
        public IActionResult AddBatchMaster(int Id = 0)
        {
            IMasterML ml = new MasterML();
            var response = ml.GetBatchByID(Id);
            return PartialView("Partial/_AddBatchMaster", response);
        }
        [HttpPost]
        public IActionResult SaveAndBatchMaster(BatchMasterReqRes req)
        {
            IMasterML ml = new MasterML();
            var response = ml.SaveAndUpdateBatch(req);
            return Json(response);
        }
        [HttpPost]
        public IActionResult GetBatchMaster()
        {
            IMasterML ml = new MasterML();
            var response = ml.GetBatch();
            return PartialView("Partial/_GetBatchMaster", response);
        }
        [HttpPost]
        public IActionResult DeleteBatchMaster(int Id)
        {
            IMasterML ml = new MasterML();
            var response = ml.DeleteBatch(Id);
            return Json(response);
        }
        [HttpPost]
        public IActionResult BindBatch()
        {
            IMasterML ml = new MasterML();
            var res = ml.GetBatch();
            return Json(res);
        }
        [HttpGet]
        public IActionResult EnterMarks(string Enrollment = "")
        {
            if (Enrollment != "")
            {
                return PartialView("Partial/_EnterMarks");
            }
            else
            {
                if (_lr.LoginTypeId ==1)
                {
                    return View();
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpGet]
        public IActionResult RegistartionMaster(int Id = 0)
        {
            if (_lr.UserName != null)
            {
                if(_lr.LoginTypeId == 1)
                {
                    bool IsAdmission = false;
                    var mdl = new RegistrationViewModel();
                    IMasterML ml = new MasterML();
                    if (Id != 0)
                    {
                        mdl.data = ml.GetRegistrationMaster(IsAdmission, Id);
                    }
                    else
                    {
                        mdl.data = new List<RegistrationMaster>();
                    }
                    mdl.ProgramMasters = ml.GetProgram();
                    return View(mdl);
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult GetRegistartionMaster()
        {
            IMasterML ml = new MasterML();
            var mdl = new RegistrationViewModel();
            bool IsAdmission = false;
            mdl.data = ml.GetRegistrationMaster(IsAdmission, 0);
            mdl.ProgramMasters = ml.GetProgram();
            return PartialView("Partial/_GetRegistartionMaster", mdl);
        }
        [HttpPost]
        public IActionResult GetAdmissionMaster()
        {
            IMasterML ml = new MasterML();
            var mdl = new RegistrationViewModel();
            bool IsAdmission = true;
            mdl.data = ml.GetRegistrationMaster(IsAdmission, 0);
            mdl.ProgramMasters = ml.GetProgram();
            return PartialView("Partial/_GetAddmissionMaster", mdl);
        }
        [HttpPost]
        public IActionResult SaveRegistartionMaster(RegistrationMaster req)
        {
            IMasterML ml = new MasterML();
            var res = ml.SaveRegistrationMaster(req);
            return Json(res);
        }
        [HttpPost]
        public IActionResult UpdateRegistartionMasterType(int ID, bool Is, int Program = 0, int Branch = 0, int Year = 0)
        {
            IMasterML ml = new MasterML();
            var req = new RegistrationMaster
            {
                Program = Program,
                Branch = Branch,
                IsOpen = Is,
                Year = Year,
                ID= ID
            };
            var res = ml.UpdateRegistrationMaster(req);
            return Json(res);
        }
        [HttpGet]
        public IActionResult AdmissionMaster(int Id = 0)
        {
            if (_lr.UserName != null)
            {
                if(_lr.LoginTypeId ==1 )
                {
                    bool IsAdmission = true;
                    var mdl = new RegistrationViewModel();
                    if (Id != 0)
                    {
                        IMasterML ml = new MasterML();
                        mdl.data = ml.GetRegistrationMaster(IsAdmission, Id);
                        mdl.ProgramMasters = ml.GetProgram();
                        return View(mdl);
                    }
                    else
                    {
                        IMasterML ml = new MasterML();
                        mdl.data = new List<RegistrationMaster>();
                        mdl.ProgramMasters = ml.GetProgram();
                        return View(mdl);
                    }
                }
                return RedirectToAction("Error", "Home");
            }
            return RedirectToAction("UsersLogin", "Account");
        }
        [HttpPost]
        public IActionResult UpdateAdmissionMasterType(int ID,bool Is, int Program = 0, int Branch = 0, int Year = 0)
        {
            IMasterML ml = new MasterML();
            var req = new RegistrationMaster
            {
                Program = Program,
                Branch = Branch,
                IsOpen = Is,
                Year = Year,
                ID= ID
            };
            req.IsAdmission = true;
            var res = ml.UpdateRegistrationMaster(req);
            return Json(res);
        }
    }
}