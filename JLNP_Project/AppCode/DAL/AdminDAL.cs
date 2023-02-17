using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class AdminDAL
    {
        DBHelper dbh = new DBHelper();
        SubjectMaster subjectMaster = new SubjectMaster();
        public SubjectMaster DashboardSummary(string Action)
        {
            var procanme = "Proc_DashboardSummay";//Procedure name''
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action)
            };
            var ds = dbh.ExcProc(procanme, param);
            if (ds.Rows.Count > 0)
            {
                subjectMaster.TeacherCount = Convert.ToString(ds.Rows[0]["Teacher_Count"].ToString());
                subjectMaster.BranchCount = Convert.ToString(ds.Rows[0]["Branch_Count"].ToString());
                subjectMaster.RegistrationCount = Convert.ToString(ds.Rows[0]["Registration_Count"].ToString());
                subjectMaster.AdmissionCount = Convert.ToString(ds.Rows[0]["Admission_Count"].ToString());
            }
            return subjectMaster;
        }
        public List<SubjectMaster> BindSubject_Dal(int Id)
        {
            var procanme = "Proc_BindSubject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@BranchId",Id)
            };
            var dt = dbh.ExcProc(procanme, param);
            var subjectlst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster res = new SubjectMaster
                    {
                        SubjectId = Convert.ToInt32(dr["Id"]),
                        SubjectName = dr["SubjectName"] is DBNull ? string.Empty : Convert.ToString(dr["SubjectName"])
                    };
                    subjectlst.Add(res);
                }
            }
            return subjectlst;
        }
        public object SaveTimetable_Dal(SubjectMaster req)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_TimeTable";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@BranchId",req.Branch),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@SubjectId",req.SubjectId),
                new SqlParameter("@Day",req.Days),
                new SqlParameter("@Period",req.Period),
                new SqlParameter("@Action",req.Action),
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = dt.Rows[0]["msg"] is DBNull ? string.Empty : Convert.ToString(dt.Rows[0]["msg"]);
            }
            return res;
        }
        public List<SubjectMaster> GetTimetable(string Action)
        {
            var procanme = "Proc_TimeTable";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action)
            };
            var dt = dbh.ExcProc(procanme, param);
            var timetablelst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster res = new SubjectMaster
                    {
                        Days = dr["Day"] is DBNull ? string.Empty : Convert.ToString(dr["Day"]),
                        Branch = dr["Branch_Name"] is DBNull ? string.Empty : Convert.ToString(dr["Branch_Name"]),
                        Year = Convert.ToString(dr["Year"].ToString()),
                        Period1 = dr["Period1"] is DBNull ? string.Empty : Convert.ToString(dr["Period1"]),
                        Period2 = dr["Period2"] is DBNull ? string.Empty : Convert.ToString(dr["Period2"]),
                        Period3 = dr["Period3"] is DBNull ? string.Empty : Convert.ToString(dr["Period3"]),
                        Period4 = dr["Period4"] is DBNull ? string.Empty : Convert.ToString(dr["Period4"]),
                        Period5 = dr["Period5"] is DBNull ? string.Empty : Convert.ToString(dr["Period5"]),
                        Period6 = dr["Period6"] is DBNull ? string.Empty : Convert.ToString(dr["Period6"]),
                    };
                    timetablelst.Add(res);
                }
            }
            return timetablelst;
        }
        public List<SubjectMaster> BindSubjectYearWise(int BranchId, int Year)
        {
            var procanme = "Proc_Bind_Subject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@BranchId",BranchId),
                new SqlParameter("@Year",Year)
            };
            var dt = dbh.ExcProc(procanme, param);
            var subjectlst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster res = new SubjectMaster
                    {
                        SubjectId = Convert.ToInt32(dr["Id"]),
                        SubjectName = dr["SubjectName"] is DBNull ? string.Empty : Convert.ToString(dr["SubjectName"])
                    };
                    subjectlst.Add(res);
                }
            }
            return subjectlst;
        }
        public List<SubjectMaster> Bind_Teacher()
        {
            var procanme = "Proc_BindTeacher";//Procedure name
            int TeacherId = 0;
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",TeacherId)
            };
            var dt = dbh.ExcProc(procanme, param);
            var techerlst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster res = new SubjectMaster
                    {
                        TeacherId = Convert.ToInt32(dr["TeacherId"]),
                        TeacherName = dr["Name"] is DBNull ? string.Empty : Convert.ToString(dr["Name"])
                    };
                    techerlst.Add(res);
                }
            }
            return techerlst;
        }
        public object SaveAssignSubject(SubjectMaster req)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_AssignSubject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",req.Id),
                new SqlParameter("@BranchId",req.BranchId),
                new SqlParameter("@ProgramId",req.Program),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@SubjectId",req.SubjectId),
                new SqlParameter("@TeacherId",req.TeacherId),
                new SqlParameter("@Action",req.Action),
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = dt.Rows[0]["Msg"] is DBNull ? string.Empty : Convert.ToString(dt.Rows[0]["Msg"]);
            }
            return res;
        }
        public List<SubjectMaster> Assignsubject_List(string Action, int Id = 0)
        {
            var procanme = "Proc_AssignSubject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action),
                new SqlParameter("@Id",Id)
            };
            var dt = dbh.ExcProc(procanme, param);
            var assignlst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster res = new SubjectMaster
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        Branch = dr["Branch_Name"] is DBNull ? string.Empty : Convert.ToString(dr["Branch_Name"]),
                        SubjectName = dr["SubjectName"] is DBNull ? string.Empty : Convert.ToString(dr["SubjectName"]),
                        TeacherName = dr["Name"] is DBNull ? string.Empty : Convert.ToString(dr["Name"]),
                        Year = dr["Year"] is DBNull ? string.Empty : Convert.ToString(dr["Year"]),
                        EntryDate = dr["Entrydate"] is DBNull ? string.Empty : Convert.ToString(dr["Entrydate"]),
                        ProgramName = dr["Program"] is DBNull ? string.Empty : Convert.ToString(dr["Program"]),
                    };
                    assignlst.Add(res);
                }
            }
            return assignlst;
        }
        public SubjectMaster Assignsubject_List_byId(string Action, int Id = 0)
        {
            SubjectMaster data = new SubjectMaster();
            var procanme = "Proc_AssignSubject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action),
                new SqlParameter("@Id",Id)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                data.Id = Convert.ToInt32(dt.Rows[0]["Id"]);
                data.BranchId = Convert.ToInt32(dt.Rows[0]["BranchId"]);
                data.Year = Convert.ToString(dt.Rows[0]["Year"].ToString());
                data.SubjectId = Convert.ToInt32(dt.Rows[0]["SubjectId"]);
                data.TeacherId = Convert.ToInt32(dt.Rows[0]["TeacherId"]);
                data.Program = Convert.ToInt32(dt.Rows[0]["ProgramId"]);
            }
            return data;
        }
        public object Assignsubject_Edit(string Action, int Id = 0)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_AssignSubject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action),
                new SqlParameter("@Id",Id)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public object Assignment_Dal(SubjectMaster subjectMaster)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_Assignment";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",subjectMaster.Id),
                new SqlParameter("@BranchId",subjectMaster.BranchId),
                new SqlParameter("@Year",subjectMaster.BranchYear),
                new SqlParameter("@SubjectId",subjectMaster.SubjectId),
                new SqlParameter("@Assignment",subjectMaster.Assignment),
                new SqlParameter("@Action",subjectMaster.Action)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public List<SubjectMaster> GetAssignment_Dal(SubjectMaster subjectMaster)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_Assignment";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",subjectMaster.Id),
                new SqlParameter("@Action",subjectMaster.Action)
            };
            var dt = dbh.ExcProc(procanme, param);
            var lst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster data = new SubjectMaster
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        Year = Convert.ToString(dr["Year"].ToString()),
                        SubjectName = Convert.ToString(dr["SubjectName"].ToString()),
                        Assignment = Convert.ToString(dr["Assignment"].ToString()),
                        EntryDate = Convert.ToString(dr["EntryDate"].ToString()),
                        Branch = Convert.ToString(dr["Branch_Name"].ToString()),
                    };
                    lst.Add(data);
                }
            }
            return lst;
        }
        public SubjectMaster GetByidAssignment_Dal(SubjectMaster subjectMaster)
        {
            var procanme = "Proc_Assignment";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",subjectMaster.Id),
                new SqlParameter("@Action",subjectMaster.Action)
            };
            var dt = dbh.ExcProc(procanme, param);
            SubjectMaster res = new SubjectMaster();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    res.Id = Convert.ToInt32(dr["Id"]);
                    res.Year = Convert.ToString(dr["Year"].ToString());
                    res._Year = Convert.ToString(dr["_Year"].ToString());
                    res.SubjectName = Convert.ToString(dr["SubjectName"].ToString());
                    res.SubjectId = Convert.ToInt32(dr["SubjectId"]);
                    res.Assignment = Convert.ToString(dr["Assignment"].ToString());
                    res.EntryDate = Convert.ToString(dr["EntryDate"].ToString());
                    res.Branch = Convert.ToString(dr["Branch_Name"].ToString());
                    res.BranchId = Convert.ToInt32(dr["BranchId"]);
                }
            }
            return res;
        }
        public object DeleteAssign_Dal(string Action, int Id = 0)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_Assignment";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Action",Action),
                new SqlParameter("@Id",Id)
            };
            var dt = dbh.ExcProc(procanme, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public List<SubjectMaster> GetUser_Dal(int UserID,string UserName,string Mobile)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_GetUsers";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@LoginID",UserID),
                new SqlParameter("@UserName",UserName),
                new SqlParameter("@Mobile",Mobile),
            };
            var dt = dbh.ExcProc(procanme, param);
            var lst = new List<SubjectMaster>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SubjectMaster data = new SubjectMaster
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        UserName = Convert.ToString(dr["Name"].ToString()),
                        LoginID= Convert.ToString(dr["UserId"].ToString()),
                        UserEmail= Convert.ToString(dr["Email"].ToString()),
                        Password = Convert.ToString(dr["Password"].ToString()),
                        MobileNo = Convert.ToString(dr["Mobile"].ToString()),
                        Branch = Convert.ToString(dr["Branch_Name"].ToString()),
                        GroupName = Convert.ToString(dr["Group_Name"].ToString()),
                        Role = Convert.ToString(dr["Role"].ToString()),
                        IsActive = Convert.ToBoolean(dr["IsActive"]),
                    };
                    lst.Add(data);
                }
            }
            return lst;
        }
        public ResponseStatus UpdateUserStatus(int UserID, bool IsActive)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };
            
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@LoginID",UserID),
                new SqlParameter("@IsActive",IsActive),
            };
            var command = "Update tbl_login set IsActive = @IsActive where _UId = @LoginID"; //command
            var _Is = dbh.ExcQuery(command, param);
            if (_Is)
            {
                res.statuscode = 1;
                res.Msg = IsActive == true ? "User actived successfully!" : "User inactived successfully!";
            }
            return res;
        }
    }
}
