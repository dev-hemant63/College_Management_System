using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DL
{
    public class Proc_StudentFine
    {
        DBHelper dbhelper = new DBHelper();
        public ResponseStatus Proc_SaveStudentFine(StudentFineMdl studentFineMdl)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            string ProcName = "Proc_Studentfine";

            SqlParameter[] param ={
                new SqlParameter("@Id",studentFineMdl.Id),
                new SqlParameter("@BranchId",studentFineMdl.BranchId),
                new SqlParameter("@Year",studentFineMdl.Year),
                new SqlParameter("@StudentName",studentFineMdl.Name),
                new SqlParameter("@EnrollmentNumber",studentFineMdl.Entrolment_No),
                new SqlParameter("@FineAmount",studentFineMdl.FineAmount),
                new SqlParameter("@FineResion",studentFineMdl.FineResion),
                new SqlParameter("@Action",studentFineMdl.Action)
            };

            var dt = dbhelper.ExcProc(ProcName, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public List<StudentFineMdl> Proc_GetStudentFine(string Action)
        {
            string ProcName = "Proc_Studentfine";
            var lststudentfine = new List<StudentFineMdl>();
            SqlParameter[] param = {
                new SqlParameter("@Action",Action)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        StudentFineMdl data = new StudentFineMdl
                        {
                            Id = Convert.ToInt32(dr["Id"]),
                            Branch = Convert.ToString(dr["Branch_Name"].ToString()),
                            Name = Convert.ToString(dr["StudentName"].ToString()),
                            Entrolment_No = Convert.ToString(dr["EnrollmentNumber"].ToString()),
                            FineAmount = Convert.ToInt32(dr["FineAmount"]),
                            FineResion = Convert.ToString(dr["FineResion"].ToString()),
                            _Year = Convert.ToString(dr["_Year"].ToString()),
                            EntryDate = Convert.ToString(dr["EntryDate"].ToString() is DBNull?"": dr["EntryDate"].ToString()),
                            FineStatus = Convert.ToInt32(dr["FineStatus"] is DBNull ? 0 : Convert.ToInt32(dr["FineStatus"]))
                        };
                        lststudentfine.Add(data);
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return lststudentfine;
        }
        public StudentFineMdl Proc_GetStudentFineById(string Action,int Id)
        {
            string ProcName = "Proc_Studentfine";
            StudentFineMdl res = new StudentFineMdl();
            SqlParameter[] param = {
                new SqlParameter("@Action",Action),
                new SqlParameter("@Id",Id)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    res.Id = Convert.ToInt32(dr["Id"]);
                    res.BranchId = Convert.ToInt32(dr["BranchId"]);
                    res.Name = Convert.ToString(dr["StudentName"].ToString());
                    res.Entrolment_No = Convert.ToString(dr["EnrollmentNumber"].ToString());
                    res.FineAmount = Convert.ToInt32(dr["FineAmount"]);
                    res.FineResion = Convert.ToString(dr["FineResion"].ToString());
                    res._Year = Convert.ToString(dr["_Year"].ToString());
                    res.Branch = Convert.ToString(dr["Branch_Name"].ToString());
                }
            }
            return res;
        }
        public ResponseStatus Proc_DeleteStudentFine(string Action, int Id)
        {
            string ProcName = "Proc_Studentfine";
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            SqlParameter[] param = {
                new SqlParameter("@Action",Action),
                new SqlParameter("@Id",Id)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            if (dt.Rows.Count > 0)
            {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public ResponseStatus Proc_UpdateFineStatus(int Status, int Id)
        {
            string ProcName = "Proc_Studentfine";
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            SqlParameter[] param = {
                new SqlParameter("@FineStatus",Status),
                new SqlParameter("@Id",Id)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["StatusCode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public StudentInfo Proc_GetStudentDetails(int UserID)
        {
            string ProcName = "Proc_GetStudentdetails";
            var statuscode = -1;
            StudentInfo res = new StudentInfo();
            SqlParameter[] param = {
                new SqlParameter("@UserID",UserID)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            if (dt.Rows.Count > 0)
            {
                statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                if (statuscode == 1)
                {
                    res.Name = Convert.ToString(dt.Rows[0]["Name"].ToString());
                    res.FatherName = Convert.ToString(dt.Rows[0]["Fname"].ToString());
                    res.EMail = Convert.ToString(dt.Rows[0]["Email"].ToString());
                    res.Phone = Convert.ToString(dt.Rows[0]["Mobile"].ToString());
                    res.Branch = Convert.ToString(dt.Rows[0]["Branch_Name"].ToString());
                    res.Gender = Convert.ToString(dt.Rows[0]["Gender"].ToString());
                    res.AdmissionDate = Convert.ToString(dt.Rows[0]["Admissiondate"].ToString());
                    res.DOB = Convert.ToString(dt.Rows[0]["DOB"].ToString());
                    res.EnrollmentNO = Convert.ToString(dt.Rows[0]["EntrollmentNo"].ToString());
                    res.Year = Convert.ToString(dt.Rows[0]["_Year"].ToString());
                    res.Adress = Convert.ToString(dt.Rows[0]["Address"].ToString());
                }
            }
            return res;
        }
    }
}
