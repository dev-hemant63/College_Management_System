using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Attendance_DAL
    {
        DBHelper _helpter = new DBHelper();
        public Attendance GetStudentList(int BranchId, int Program, int Year, string Date,int ExamId = 0)
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
                new SqlParameter("@Date",Date),
                new SqlParameter("@examId",ExamId)
            };
            var dt = _helpter.ExcProc(Proc, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
                if (res.statuscode == 1)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new Student
                        {
                            Name = Convert.ToString(item["Name"]),
                            Entrolment_No = Convert.ToString(item["EntrollmentNo"]),
                            IsAssign = Convert.ToBoolean(item["IsAssign"]),
                            ExamId = Convert.ToInt16(item["ExamID"]),
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
                foreach (DataRow item in dt.Rows)
                {
                    var data = new AttendanceReq
                    {
                        Name = Convert.ToString(item["Name"]),
                        EnrollmentNO = Convert.ToString(item["EnrollmentNo"]),
                        Note = Convert.ToString(item["Note"]),
                        Ispresent = Convert.ToBoolean(item["Ispresent"]),
                        Isabsent = Convert.ToBoolean(item["Isabsent"]),
                        Islate = Convert.ToBoolean(item["Islate"]),
                        Isishalfday = Convert.ToBoolean(item["IsHalfday"]),
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
        public Attendance GetStudentresult(GetResultRequest req)
        {
            var res = new Attendance
            {
                statuscode = -1,
                Msg = "Temp Error",
                Studentlistforresult = new List<GetStudentforresult>()
            };
            string Proc = @"Select ISNULL(t2.IsPrectical,0) IsPrectical,ISNULL(t2.Marks,0) Marks,ISNULL(t2.Note,'') Note,ISNULL(t2.IsAttendance,0) IsAttendance,t3.Name,t3.EntrollmentNo EnrollemntNo from tbl_AssignExam t1 left Join tbl_StudentMarks t2 on t1.EnrollemntNo = t2.EnrollmentNo
                            Inner join tbl_Student_Admission t3 on t1.EnrollemntNo = t3.EntrollmentNo
							where (ISNULL(t2.Program,0)= @ProgramID or ISNULL(t2.Program,0) = ISNULL(t2.Program,0))
							and (ISNULL(t2.Branch,0) = @BranchId or ISNULL(t2.Branch,0) = ISNULL(t2.Branch,0))
							and (ISNULL(t2.Year,0) = @Year or ISNULL(t2.Year,0) = ISNULL(t2.Year,0))
							and (ISNULL(t2.SubjectId ,0)= @Subject or ISNULL(t2.SubjectId ,0) =  ISNULL(t2.SubjectId ,0))
							and (ISNULL(t2.ExamID,0)=@exam or ISNULL(t2.ExamID,0)=ISNULL(t2.ExamID,0))";
            SqlParameter[] param =
            {
                new SqlParameter("@BranchId",req.BranchId),
                new SqlParameter("@ProgramID",req.Program),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@Subject",req.SubjectId),
                new SqlParameter("@exam",req.ExamID)
            };
            var dt = _helpter.ExcQueryDT(Proc, param);
            if (dt.Rows.Count > 0)
            {
                try
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new GetStudentforresult
                        {
                            Name = Convert.ToString(item["Name"]),
                            Enrollment = Convert.ToString(item["EnrollemntNo"]),
                            Marks = Convert.ToInt32(item["Marks"]),
                            Note = Convert.ToString(item["Note"]),
                            IsAttendance = Convert.ToBoolean(item["IsAttendance"]),
                            IsPrectical = Convert.ToBoolean(item["IsPrectical"])
                        };
                        res.Studentlistforresult.Add(data);
                    }
                }
                catch (Exception ex)
                {
                    res.Msg = ex.Message;
                }
            }
            return res;
        }
    }
}
