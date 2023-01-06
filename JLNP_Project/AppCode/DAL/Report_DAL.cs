using Core.DAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;
namespace JLNP_Project.AppCode.DAL
{
    public class Report_DAL
    {
        DBHelper dbh = new DBHelper();
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable GetAdmissionReport(AdmissionModel admissionModel)
        {
            SqlCommand cmd = new SqlCommand("proc_Admission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", admissionModel.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public object SaveProjectReport(ProjectReport projectReport)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_projectReport";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",projectReport.Action),
                new SqlParameter("@StudentName",projectReport.StudentName),
                new SqlParameter("@Branch",projectReport.Branch),
                new SqlParameter("@Year",projectReport.Year),
                new SqlParameter("@Enrollment",projectReport.Enrollment),
                new SqlParameter("@ProjectTitle",projectReport.ProjectTitle),
                new SqlParameter("@Techonology",projectReport.Techonology)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public List<ProjectReport> GetProjectReport_Bal(string Action)
        {
            var projectlist = new List<ProjectReport>();
            var procanme = "Proc_projectReport";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    ProjectReport projectreport = new ProjectReport
                    {
                        Enrollment = Convert.ToString(row["Enrollment"].ToString()),
                        Branch = Convert.ToString(row["Branch_Name"].ToString()),
                        Year = Convert.ToString(row["_Year"].ToString()),
                        StudentName = Convert.ToString(row["StudentName"].ToString()),
                        ProjectTitle = Convert.ToString(row["ProjectTitle"].ToString()),
                        Techonology = Convert.ToString(row["Techonology"].ToString()),
                        Submitiondate = Convert.ToString(row["Entrydate"].ToString()),
                    };
                    projectlist.Add(projectreport);
                }
            }
            return projectlist;
        }
        public List<AdmissionModel> GetAttandanceReport_Bal()
        {
            var admissionModel = new List<AdmissionModel>();
            int Id = 0;
            var procanme = "Proc_MarkAttendance";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",Id)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    AdmissionModel admissiondata = new AdmissionModel
                    {
                        IsAttand = Convert.ToInt32(row["IsAttand"]),
                        Name = Convert.ToString(row["Name"].ToString()),
                        Branch = Convert.ToString(row["Branch_Name"].ToString()),
                        Year = Convert.ToString(row["_Year"].ToString()),
                        SubjectName = Convert.ToString(row["SubjectName"].ToString()),
                        Entrydate = Convert.ToString(row["Entrydate"].ToString()),
                    };
                    admissionModel.Add(admissiondata);
                }
            }
            return admissionModel;
        }
        public List<AdmissionModel> GetFilterAttandanceReport_Bal(int BranchId, int Year, int SubjectId, string Date, string Action)
        {
            var admissionModel = new List<AdmissionModel>();
            int Id = 0;
            var procanme = "Proc_MarkAttendance";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",Id),
                new SqlParameter("@BranchId",BranchId),
                new SqlParameter("@Year",Year),
                new SqlParameter("@SubjectId",SubjectId),
                new SqlParameter("@Date",Date??""),
                new SqlParameter("@Action",Action??""),
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    AdmissionModel admissiondata = new AdmissionModel
                    {
                        IsAttand = Convert.ToInt32(row["IsAttand"]),
                        Name = Convert.ToString(row["Name"].ToString()),
                        Branch = Convert.ToString(row["Branch_Name"].ToString()),
                        Year = Convert.ToString(row["_Year"].ToString()),
                        SubjectName = Convert.ToString(row["SubjectName"].ToString()),
                        Entrydate = Convert.ToString(row["Entrydate"].ToString()),
                    };
                    admissionModel.Add(admissiondata);
                }
            }
            return admissionModel;
        }
    }
}
