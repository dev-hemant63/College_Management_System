using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Attendance_DAL
    {
        DBHelper _helpter = new DBHelper();
        public Attendance GetStudentList(int BranchId, int Program, int Year, string Date)
        {
            var res = new Attendance
            {
                statuscode = -1,
                Msg ="Temp Error",
                Studentlist = new List<Student>()
            };
            string Proc = "Proc_GetstudentForAttendance";
            SqlParameter[] param =
            {
                new SqlParameter("@Branch",BranchId),
                new SqlParameter("@Program",Program),
                new SqlParameter("@Year",Year),
                new SqlParameter("@Date",Date)
            };
            var dt = _helpter.ExcProc(Proc, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
                if (res.statuscode == 1)
                {
                    foreach (var item in dt.Rows)
                    {
                        var data = new Student
                        {
                            Name = Convert.ToString(dt.Rows[0]["Name"]),
                            Entrolment_No = Convert.ToString(dt.Rows[0]["EntrollmentNo"]),
                        };
                        res.Studentlist.Add(data);
                    }
                }
            }
            return res;
        }
        public List<AttendanceReq> Getattendancebydate(int BranchId, int Program, int Year, string Date)
        {
            var res = new List<AttendanceReq>();
            string Proc = "Proc_GetAttendanceByDate";
            SqlParameter[] param =
            {
                new SqlParameter("@Branch",BranchId),
                new SqlParameter("@Program",Program),
                new SqlParameter("@Year",Year),
                new SqlParameter("@Date",Date)
            };
            var dt = _helpter.ExcProc(Proc, param);
            if (dt.Rows.Count > 0)
            {
                foreach (var item in dt.Rows)
                {
                    var data = new AttendanceReq
                    {
                        Name = Convert.ToString(dt.Rows[0]["Name"]),
                        EnrollmentNO = Convert.ToString(dt.Rows[0]["EnrollmentNo"]),
                        Note = Convert.ToString(dt.Rows[0]["Note"]),
                        Ispresent = Convert.ToBoolean(dt.Rows[0]["Ispresent"]),
                        Isabsent = Convert.ToBoolean(dt.Rows[0]["Isabsent"]),
                        Islate = Convert.ToBoolean(dt.Rows[0]["Islate"]),
                        Isishalfday = Convert.ToBoolean(dt.Rows[0]["IsHalfday"]),
                    };
                    res.Add(data);
                }
            }
            return res;
        }
        public ResponseStatus MarkAttendanceDAL(AttendanceReq req)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            string Proc = "Proc_MarkAttendance";
            SqlParameter[] param =
            {
                new SqlParameter("@Enrollemnt",req.StudentEnrollment),
                new SqlParameter("@Ispresent",req.Ispresent),
                new SqlParameter("@Isabsent",req.Isabsent),
                new SqlParameter("@Islate",req.Islate),
                new SqlParameter("@Ishalfday",req.Isishalfday),
                new SqlParameter("@Note",req.Note),
                new SqlParameter("@UserID",req.UserId),
                new SqlParameter("@Dates",req.Date),
                new SqlParameter("@Program",req.Progarm),
                new SqlParameter("@Branch",req.Branch),
                new SqlParameter("@Year",req.Year)
            };
            var dt = _helpter.ExcProc(Proc, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
            }
            return res;
        }
    }
}
