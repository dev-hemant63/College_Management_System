using Core.DAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Admission_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        DBHelper ddhh = new DBHelper();
        public DataTable Student_Admission(AdmissionModel admissionModel)
        {
            SqlCommand cmd = new SqlCommand("proc_Admission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", admissionModel.Name);
            cmd.Parameters.AddWithValue("@Fname", admissionModel.Fname);
            cmd.Parameters.AddWithValue("@Email", admissionModel.Email);
            cmd.Parameters.AddWithValue("@Mobile", admissionModel.Mobile);
            cmd.Parameters.AddWithValue("@Branch", admissionModel.Branch);
            cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(admissionModel.Year));
            cmd.Parameters.AddWithValue("@Address", admissionModel.Address);
            cmd.Parameters.AddWithValue("@Gender", admissionModel.Gender);
            cmd.Parameters.AddWithValue("@RegistrationNo", admissionModel.RgistrationNo);
            cmd.Parameters.AddWithValue("@DOB", admissionModel.DOB);
            cmd.Parameters.AddWithValue("@MotherName", admissionModel.MotherName);
            cmd.Parameters.AddWithValue("@FatherOccupation", admissionModel.FatherOccupation);
            cmd.Parameters.AddWithValue("@Program", admissionModel.Program);
            cmd.Parameters.AddWithValue("@Religion", admissionModel.Religion);
            cmd.Parameters.AddWithValue("@AdmissionType", admissionModel.AdmissionType);
            cmd.Parameters.AddWithValue("@FatherMo", admissionModel.FatherMo);
            cmd.Parameters.AddWithValue("@MotherMo", admissionModel.MotherMo);
            cmd.Parameters.AddWithValue("@MotherOccupation", admissionModel.MotherOccupation);
            cmd.Parameters.AddWithValue("@Photo", admissionModel.Photo);
            cmd.Parameters.AddWithValue("@FatherAadharCard", admissionModel.FatherAadhar);
            cmd.Parameters.AddWithValue("@AadharCard", admissionModel.Aadhar);
            cmd.Parameters.AddWithValue("@MotherAadharCard", admissionModel.MotherAadhar);
            cmd.Parameters.AddWithValue("@IncomeCertificate", admissionModel.Incomecertificate);
            cmd.Parameters.AddWithValue("@CastCertificate", admissionModel.CastCertificate);
            cmd.Parameters.AddWithValue("@Nationalitycertificate", admissionModel.NationalityCertificate);
            cmd.Parameters.AddWithValue("@TransferCertificate", admissionModel.TransferCertificate);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetStudentBranchWise_DAl(AdmissionModel admissionModel)
        {
            SqlCommand cmd = new SqlCommand("Proc_MarkAttendance", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", admissionModel.Id);
            cmd.Parameters.AddWithValue("@Year", admissionModel.Year);
            cmd.Parameters.AddWithValue("@Branch", admissionModel.Branch);
            cmd.Parameters.AddWithValue("@SubjectId", admissionModel.SubjectId);
            cmd.Parameters.AddWithValue("@Date", admissionModel.Date);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public AdmissionModel Student_AdmissionDetails(long RegistrationNo)
        {
            AdmissionModel res = new AdmissionModel();
            var procname = "Proc_GetDetailsByRes";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ResNo",RegistrationNo)
            };
            var dt = ddhh.ExcProc(procname, param);
            if (dt.Rows.Count > 0)
            {
                res.Name = Convert.ToString(dt.Rows[0]["Name"].ToString());
                res.Fname = Convert.ToString(dt.Rows[0]["Fname"].ToString());
                res.Email = Convert.ToString(dt.Rows[0]["Email"].ToString());
                res.Mobile = Convert.ToString(dt.Rows[0]["Mobile"].ToString());
                res.Address = Convert.ToString(dt.Rows[0]["Address"].ToString());
                res.Gender = Convert.ToString(dt.Rows[0]["Gender"].ToString());
                res.DOB = Convert.ToString(dt.Rows[0]["DOB"].ToString());
                res.FatherOccupation = Convert.ToString(dt.Rows[0]["FatherOccupation"].ToString());
                res.MotherName = Convert.ToString(dt.Rows[0]["MotherName"].ToString());
            }
            return res;
        }
        public object UpdateStatus(AdmissionModel admissionModel)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_MarkAttendance";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",admissionModel.Id),
                new SqlParameter("@Branch",admissionModel.BranchId),
                new SqlParameter("@SubjectId",admissionModel.SubjectId),
                new SqlParameter("@Date",admissionModel.Date),
                new SqlParameter("@Year",admissionModel.Year),
                new SqlParameter("@IsAttand",admissionModel.IsAttand),
                new SqlParameter("@IsAbsent",admissionModel.IsAbsent),
            };
            var dt = ddhh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
    }
}
