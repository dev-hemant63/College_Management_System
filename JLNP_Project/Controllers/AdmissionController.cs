using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using JLNP_Project.AppCode.Helper;
using Newtonsoft.Json;
using System.Data;
using Microsoft.AspNetCore.Authorization;
using CollageERP.AppCode.Interface;
using CollageERP.Models;

namespace JLNP_Project.Controllers
{
    [Authorize]
    public class AdmissionController : Controller
    {
        private readonly IHttpContextAccessor _accessor;
        private readonly LoginInfo _lr;
        private readonly IUploadImageService _upload;
        private readonly IAdmissionService _admission;

        public AdmissionController(IHttpContextAccessor accessor, IUploadImageService imageService, IAdmissionService admission)
        {
            _accessor = accessor;
            _upload = imageService;
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
            _admission = admission;
        }
        public IActionResult AForm()
        {
            if (_lr.LoginTypeId == 1)
            {
                IMasterML ml = new MasterML();
                var res = ml.GetProgram();
                return View(res);
            }
            return RedirectToAction("Error", "Home");
        }
        [HttpGet(nameof(Details)+ "/{AdmissionDetails}")]
        public IActionResult Details(string AdmissionDetails)
        {
            return View(_admission.GetAdmissionDetails(AdmissionDetails));
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
        [HttpPost]
        public IActionResult Student_Admission(AdmissionModel admissionModel)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            Admission_BAL AdBal = new Admission_BAL();
            admissionModel.Action = "Admission";
            var files = new List<IFormFile>
                {
                    admissionModel.PhotoFile,
                    admissionModel.FatherAadharFile,
                    admissionModel.AadharFile,
                    admissionModel.NationalityCertificateFile,
                    admissionModel.TransferCertificateFile,
                    admissionModel.MotherAadharFile,
                    admissionModel.IncomecertificateFile,
                    admissionModel.CastCertificateFile
                };
            string[] fileProperties = {
                    admissionModel.Photo,
                    admissionModel.FatherAadhar,
                    admissionModel.Aadhar,
                    admissionModel.NationalityCertificate,
                    admissionModel.TransferCertificate,
                    admissionModel.MotherAadhar,
                    admissionModel.Incomecertificate,
                    admissionModel.CastCertificate
                };
            if (admissionModel.PhotoFile == null || admissionModel.FatherAadharFile == null || admissionModel.AadharFile == null || admissionModel.NationalityCertificateFile == null || admissionModel.TransferCertificateFile == null ||
                admissionModel.MotherAadharFile == null || admissionModel.IncomecertificateFile == null ||  admissionModel.CastCertificateFile == null)
            {
                res.Msg = "Please upload required documents!";
                res.statuscode = -1;
                goto Finish;
            }
            for (int i = 0; i < files.Count(); i++)
            {
                res = _upload.Upload(new FileUploadModel
                {
                    file = files[i],
                    FileName = DateTime.Now.ToString("ddMMyyyyhhmmss"),
                    FilePath = $"wwwroot/Admission/document/"
                });
                if (res.statuscode != 1)
                {
                    res.Msg = "Failed to upload documents!";
                    res.statuscode = -1;
                    goto Finish;
                }
                fileProperties[i] = res.Msg;
            }
            admissionModel.Photo = fileProperties[0];
            admissionModel.FatherAadhar = fileProperties[1];
            admissionModel.Aadhar = fileProperties[2];
            admissionModel.NationalityCertificate = fileProperties[3];
            admissionModel.TransferCertificate = fileProperties[4];
            admissionModel.MotherAadhar = fileProperties[5];
            admissionModel.Incomecertificate = fileProperties[6];
            admissionModel.CastCertificate = fileProperties[7];
            var dt = AdBal.StudentAdmission(admissionModel);
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
            }
        Finish:
            return Json(res);
        }
        [HttpPost]
        public IActionResult StudentGetAdmissionDetails(long RegistrationNo)
        {
            Admission_BAL AdBal = new Admission_BAL();
            var res = AdBal.StudentAdmissionDetailse(RegistrationNo);
            return Json(res);
        }
        [HttpPost]
        public IActionResult BindProgramWiseBranch(int ProgramId)
        {
            IMasterML ml = new MasterML();
            var res = ml.BindProgramWiseBranch(ProgramId);
            return Json(res);
        }
    }
}
