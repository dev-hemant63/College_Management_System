using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DL
{
    public class Proc_StudentAssignment
    {
        DBHelper dbhelper = new DBHelper();
        public List<AssignmentModel> Proc_GetStudentAssignment(int LoginID)
        {
            var response = new List<AssignmentModel>();
            string ProcName = "ProcGetStudentAssignment"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@StudentID",LoginID)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    int sts = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                    if (sts == 1)
                    {
                        foreach (DataRow dr in dt.Rows)
                        {
                            var model = new AssignmentModel
                            {
                                Subject = Convert.ToString(dr["SubjectName"]),
                                Assignment = Convert.ToString(dr["Assignment"])
                            };
                            response.Add(model);
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return response;
        }
        public List<CommanMasterResponse> Proc_GetStudentvideolecture(int LoginID)
        {
            var response = new List<CommanMasterResponse>();
            string ProcName = "Proc_GetVideoTransaction"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@UserID",LoginID),
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var model = new CommanMasterResponse
                        {
                            Subject = Convert.ToString(dr["SubjectName"]),
                            VideoUrl = Convert.ToString(dr["VideoUrl"])
                        };
                        response.Add(model);
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return response;
        }
    }
}
