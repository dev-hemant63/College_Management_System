using CollageERP.AppCode.Helper;
using CollageERP.AppCode.Interface;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace CollageERP.AppCode.Midlelayer
{
    public class AdmissionService: IAdmissionService
    {
        private readonly IDBHelper _helper;
        public AdmissionService(IDBHelper dBHelper)
        {
            _helper = dBHelper;
        }
        public AdmissionModel GetAdmissionDetails(string AdmissionNo)
        {
            var response = new AdmissionModel();
            string procname = "Proc_GetAdmissionDetails";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@AdmissionNo",AdmissionNo),
            };
            var dt = _helper.ExcProc(procname, param);
            if (dt.Rows.Count > 0)
            {
                response = new AdmissionModel
                {
                    Id = Convert.ToInt32(dt.Rows[0]["Id"]),
                    Name = Convert.ToString(dt.Rows[0]["Name"].ToString()),
                    Fname = Convert.ToString(dt.Rows[0]["Fname"].ToString()),
                    Email = Convert.ToString(dt.Rows[0]["Email"].ToString()),
                    Mobile = Convert.ToString(dt.Rows[0]["Mobile"].ToString()),
                    DOB = Convert.ToString(dt.Rows[0]["DOB"].ToString()),
                    RgistrationNo = Convert.ToString(dt.Rows[0]["AdmissionNo"].ToString()),
                    Branch = Convert.ToString(dt.Rows[0]["Branch_Name"].ToString()),
                    Year = Convert.ToString(dt.Rows[0]["_Year"].ToString()),
                    Address = Convert.ToString(dt.Rows[0]["Address"].ToString()),
                    Gender = Convert.ToString(dt.Rows[0]["Gender"].ToString()),
                    AdmissionDate = Convert.ToString(dt.Rows[0]["AdmissionDate"].ToString()),
                    FeesStatus = Convert.ToString(dt.Rows[0]["Fess_Status"].ToString()),
                    MotherName = Convert.ToString(dt.Rows[0]["MotherName"].ToString()),
                    FatherOccupation = Convert.ToString(dt.Rows[0]["FatherOccupation"].ToString()),
                    Religion = Convert.ToString(dt.Rows[0]["Religion"].ToString()),
                    ProgramName = Convert.ToString(dt.Rows[0]["Program"].ToString()),
                    Photo = Convert.ToString(dt.Rows[0]["Photo"].ToString()),
                    FatherAadhar = Convert.ToString(dt.Rows[0]["FatherAadharCard"].ToString()),
                    MotherAadhar = Convert.ToString(dt.Rows[0]["MotherAadharCard"].ToString()),
                    Incomecertificate = Convert.ToString(dt.Rows[0]["IncomeCertificate"].ToString()),
                    Aadhar = Convert.ToString(dt.Rows[0]["AadharCard"].ToString()),
                    CastCertificate = Convert.ToString(dt.Rows[0]["CastCertificate"].ToString()),
                    NationalityCertificate = Convert.ToString(dt.Rows[0]["Nationalitycertificate"].ToString()),
                    BatchName = Convert.ToString(dt.Rows[0]["Batch"].ToString()),
                };
            }
            return response;
        }
    }
}
