using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;

namespace JLNP_Project.AppCode.BAL
{
    public class Attendance_BAL
    {
        Attendance_DAL _dal = new Attendance_DAL();
        public Attendance GetStudentforAttendance(int BranchId, int Program, int Year, string Date)
        {
            var res = _dal.GetStudentList(BranchId, Program, Year, Date);
            return res;
        }
        public List<AttendanceReq> Getattendancebydate(int BranchId, int Program, int Year, string Date)
        {
            var res = _dal.Getattendancebydate(BranchId, Program, Year, Date);
            return res;
        }
        public ResponseStatus MarkAttendance(List<AttendanceReq> req,int UserID)
        {
            var res = new ResponseStatus();
            foreach (var attendance in req)
            {
                if (attendance.Status == 1)
                {
                   attendance.Ispresent = true;
                }
                if (attendance.Status == 2)
                {
                    attendance.Isabsent = true;
                }
                if (attendance.Status == 3)
                {
                    attendance.Islate = true;
                }
                if (attendance.Status == 4)
                {
                    attendance.Isishalfday = true;
                }
                res = _dal.MarkAttendanceDAL(new AttendanceReq
                {
                    StudentEnrollment = attendance.StudentEnrollment,
                    Ispresent = attendance.Ispresent,
                    Isabsent = attendance.Isabsent,
                    Islate = attendance.Islate,
                    Isishalfday = attendance.Isishalfday,
                    Note = attendance.Note,
                    UserId = UserID,
                    Date = attendance.Date,
                    Progarm = attendance.Progarm,
                    Branch = attendance.Branch,
                    Year = attendance.Year,
                });
            }
            return res;
        }
    }
}
