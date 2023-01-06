using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DL
{
    public class Proc_Syllabus
    {
        DBHelper dbhelper = new DBHelper();
        public ResponseStatus UploadSyllabus(SyllabusMaster req)
        {
            var response = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "Proc_Syllabus"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@ID",req.ID),
                new SqlParameter("@LoginID",req.UserId),
                new SqlParameter("@Branch",req.Branch),
                new SqlParameter("@Subject",req.Subject),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@Path",req.Filepath)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    response.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["Statuscode"]));
                    response.Msg = Convert.ToString(dt.Rows[0]["Msg"] is DBNull ? "" : Convert.ToString(dt.Rows[0]["Msg"]));
                }
            }
            catch (Exception ex)
            {
                response.Msg = ex.Message;
            }
            return response;
        }
        public List<SyllabusMasterRespons> GetSyllabus(int ID, string Filepath, int BranchID = 0)
        {
            var response = new List<SyllabusMasterRespons>();
            string ProcName = "Proc_Syllabus"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@ID",ID),
                new SqlParameter("@Branch",BranchID),
                new SqlParameter("@Path",Filepath ?? string.Empty)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new SyllabusMasterRespons
                        {
                            ID = Convert.ToInt32(dr["ID"] is DBNull ? 0 : Convert.ToInt32(dr["ID"])),
                            BranchName = Convert.ToString(dr["Branch_Name"] is DBNull ? 0 : Convert.ToString(dr["Branch_Name"])),
                            SubjecName = Convert.ToString(dr["SubjectName"] is DBNull ? 0 : Convert.ToString(dr["SubjectName"])),
                            EntryDate = Convert.ToString(dr["EntryDate"] is DBNull ? 0 : Convert.ToString(dr["EntryDate"])),
                            Year = Convert.ToInt32(dr["_Year"] is DBNull ? 0 : Convert.ToInt32(dr["_Year"])),
                            Filepath = Convert.ToString(dr["_Path"] is DBNull ? 0 : Convert.ToString(dr["_Path"]))
                        };
                        response.Add(data);
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return response;
        }
        public SyllabusMaster DeleteSyllabus(int ID = 0, string Path = "")
        {
            var response = new SyllabusMaster
            {
                Filepath = string.Empty
            };
            string ProcName = "Proc_Syllabus"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@ID",ID),
                new SqlParameter("@Path",Path ?? string.Empty)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    response.Filepath = Convert.ToString(dt.Rows[0]["Filepath"] is DBNull ? "" : Convert.ToString(dt.Rows[0]["Filepath"]));
                }
            }
            catch (Exception ex)
            {

            }
            return response;
        }
        public SyllabusMaster GetSyllabusByID(int ID = 0)
        {
            var response = new SyllabusMaster
            {
                Filepath = string.Empty
            };
            string ProcName = "Proc_GetSyllabusByID"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@ID",ID)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    response.ID = Convert.ToInt32(dt.Rows[0]["ID"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["ID"]));
                    response.Branch = Convert.ToInt32(dt.Rows[0]["BranchID"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["BranchID"]));
                    response.Subject = Convert.ToInt32(dt.Rows[0]["SubjectID"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["SubjectID"]));
                    response.Year = Convert.ToInt32(dt.Rows[0]["_Year"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["_Year"]));
                    response.Filepath = Convert.ToString(dt.Rows[0]["_Path"] is DBNull ? "" : Convert.ToString(dt.Rows[0]["_Path"]));
                }
            }
            catch (Exception ex)
            {

            }
            return response;
        }
        public ResponseStatus UpdateSyllabus(SyllabusMaster req)
        {
            var response = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "Proc_UpadteSyllabus"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@ID",req.ID),
                new SqlParameter("@LoginID",req.UserId),
                new SqlParameter("@Branch",req.Branch),
                new SqlParameter("@Subject",req.Subject),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@Path",req.Filepath)
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    response.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["Statuscode"]));
                    response.Msg = Convert.ToString(dt.Rows[0]["Msg"] is DBNull ? "" : Convert.ToString(dt.Rows[0]["Msg"]));
                }
            }
            catch (Exception ex)
            {
                response.Msg = ex.Message;
            }
            return response;
        }
        public List<StudentSyllabus> GetStudentSyllabus(int LoginID)
        {
            var response = new List<StudentSyllabus>();
            string ProcName = "Proc_studentSyllabus"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@LoginID",LoginID),
            };
            var dt = dbhelper.ExcProc(ProcName, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new StudentSyllabus
                        {
                            Branch_Name = Convert.ToString(dr["Branch_Name"] is DBNull ? "" : Convert.ToString(dr["Branch_Name"])),
                            SubjectName = Convert.ToString(dr["SubjectName"] is DBNull ? "" : Convert.ToString(dr["SubjectName"])),
                            Path = Convert.ToString(dr["_Path"] is DBNull ? "" : Convert.ToString(dr["_Path"])),
                            SubjectCode = Convert.ToString(dr["SubjectCode"] is DBNull ? "" : Convert.ToString(dr["SubjectCode"]))
                        };
                        response.Add(data);
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
