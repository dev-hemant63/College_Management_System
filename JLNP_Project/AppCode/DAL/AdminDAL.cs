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
        public List<SubjectMaster> BindSubjectYearWise(int Program, int BranchId, int Year)
        {
            var procanme = "Proc_Bind_Subject";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@BranchId",BranchId),
                new SqlParameter("@Program",Program),
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
                statuscode = -1,
                Msg = "Temp Error"
            };
            var procanme = "Proc_Assignment";//Procedure name
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",subjectMaster.Id),
                new SqlParameter("@Program",subjectMaster.Program),
                new SqlParameter("@BranchId",subjectMaster.BranchId),
                new SqlParameter("@Year",subjectMaster.BranchYear),
                new SqlParameter("@SubjectId",subjectMaster.SubjectId),
                new SqlParameter("@Assignment",subjectMaster.Assignment),
                new SqlParameter("@Action",subjectMaster.Action),
                new SqlParameter("@Paths",subjectMaster.Path)
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
                        ProgramName = Convert.ToString(dr["Program"].ToString()),
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
                    res.Program = Convert.ToInt32(dr["Program"]);
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
        public List<SubjectMaster> GetUser_Dal(int UserID, string UserName, string Mobile)
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
                        LoginID = Convert.ToString(dr["UserId"].ToString()),
                        UserEmail = Convert.ToString(dr["Email"].ToString()),
                        password = Convert.ToString(dr["Password"].ToString()),
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
        public ResponseStatus SaveTimeTable(TimeTable req)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };

            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ID",req.ID),
                new SqlParameter("@Program",req.Program),
                new SqlParameter("@Branch",req.Branch),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@Subject",req.Subject),
                new SqlParameter("@Teacher",req.Teacher),
                new SqlParameter("@TimeFrom",req.TimeFrom),
                new SqlParameter("@TimeTo",req.TimeTo),
                new SqlParameter("@RoomNo",req.RoomNo),
                new SqlParameter("@Day",req.Day),
            };
            var command = "Proc_SaveTimeTable"; //command
            var dt = dbh.ExcProc(command, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public ResponseStatus DeleteTimeTable(int ID)
        {
            ResponseStatus res = new ResponseStatus
            {
                statuscode = 1,
                Msg = "Temp Error"
            };

            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ID",ID)
            };
            var command = "Delete from tbl_timetable where Id = @ID;select 1 Statuscode,'Record deleted successfully!' Msg"; //command
            var dt = dbh.ExcQueryDT(command, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public List<TimeTable> GetTimeTable(int Program, int BranchId, int Year, string Day)
        {
            var res = new List<TimeTable>();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Program",Program),
                new SqlParameter("@BranchId",BranchId),
                new SqlParameter("@Year",Year),
                new SqlParameter("@Day",Day)
            };
            var command = "select * from tbl_timetable where Program = @Program and Branch = @BranchId and Year = @Year and Day = @Day"; //command
            var dt = dbh.ExcQueryDT(command, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow item in dt.Rows)
                {
                    var TimeTable = new TimeTable
                    {
                        ID = Convert.ToInt32(item["ID"]),
                        Program = Convert.ToInt32(item["Program"]),
                        Branch = Convert.ToInt32(item["Branch"]),
                        Year = Convert.ToInt32(item["Year"]),
                        Subject = Convert.ToInt32(item["Subject"]),
                        Teacher = Convert.ToInt32(item["Teacher"]),
                        TimeFrom = Convert.ToString(item["TimeFrom"].ToString()),
                        TimeTo = Convert.ToString(item["TimeTo"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                        Day = Convert.ToString(item["Day"].ToString()),
                    };
                    res.Add(TimeTable);
                }
            }
            return res;
        }
        public TimeTableReportViewModel GetTimeTableReport(int Program, int BranchId, int Year)
        {
            var res = new TimeTableReportViewModel();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Program",Program),
                new SqlParameter("@Branch",BranchId),
                new SqlParameter("@Year",Year)
            };
            var command = "Proc_TimeTableReport"; //command
            var ds = dbh.ExcProc_Dataset(command, param);
            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Monday.Add(TimeTable);
                }
            }
            if (ds.Tables[1].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[1].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Tuesday.Add(TimeTable);
                }
            }
            if (ds.Tables[2].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[2].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Wednesday.Add(TimeTable);
                }
            }
            if (ds.Tables[3].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[3].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Thursday.Add(TimeTable);
                }
            }
            if (ds.Tables[4].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[4].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Friday.Add(TimeTable);
                }
            }
            if (ds.Tables[5].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[5].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Suterday.Add(TimeTable);
                }
            }
            if (ds.Tables[6].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[6].Rows)
                {
                    var TimeTable = new TimeTableReport
                    {
                        SubjectName = Convert.ToString(item["SubjectName"].ToString()),
                        Teacher = Convert.ToString(item["Teacher"].ToString()),
                        Time = Convert.ToString(item["Time"].ToString()),
                        RoomNo = Convert.ToString(item["RoomNo"].ToString()),
                    };
                    res.Sunday.Add(TimeTable);
                }
            }
            return res;
        }
    }
}
