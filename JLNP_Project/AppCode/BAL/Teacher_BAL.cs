using JLNP_Project.Models;
using System.Data;
using JLNP_Project.AppCode.DAL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Helper;
using CollageERP.Models;

namespace JLNP_Project.AppCode.BAL
{
    public class Teacher_BAL
    {
        private readonly ISendEmail _sendEmail;
        public Teacher_BAL(ISendEmail sendEmail)
        {
            _sendEmail = sendEmail;
        }
        public DataTable AddTeacher_BAL(Teacher teacher)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.AddTeacher_DAL(teacher);
            return dt;
        }
        public DataTable GetTeacher_BAL(TeacherSearch search)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.GetTeacher_DAL(search);
            return dt;
        }
        public TeacherDetails GetTeacher_BALById(int teacher)
        {
            var res = new TeacherDetails();
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.GetTeacher_DALById(teacher);
            if (dt.Rows.Count > 0)
            {
                res.TeacherId = Convert.ToInt32(dt.Rows[0]["TeacherId"]);
                res.Name = Convert.ToString(dt.Rows[0]["Name"]);
                res.Fname = Convert.ToString(dt.Rows[0]["Fname"]);
                res.Email = Convert.ToString(dt.Rows[0]["Email"]);
                res.Mobile = Convert.ToString(dt.Rows[0]["Mobile"]);
                res.DOB = Convert.ToString(dt.Rows[0]["DOB"]);
                res.Address = Convert.ToString(dt.Rows[0]["Address"]);
                res.salary = Convert.ToString(dt.Rows[0]["salary"]);
                res.EntryDate = Convert.ToString(dt.Rows[0]["EntryDate"]);
                res.HighSchoolMarks = Convert.ToString(dt.Rows[0]["HighSchoolMarks"]);
                res.HighSchool_P = Convert.ToString(dt.Rows[0]["HighSchool_P"]);
                res.HighSchool_B = Convert.ToString(dt.Rows[0]["HighSchool_B"]);
                res.InterMarks = Convert.ToString(dt.Rows[0]["InterMarks"]);
                res.Inter_P = Convert.ToString(dt.Rows[0]["Inter_P"]);
                res.Inter_B = Convert.ToString(dt.Rows[0]["Inter_B"]);
                res.UGTitle = Convert.ToString(dt.Rows[0]["UGTitle"]);
                res.UGMarks = Convert.ToString(dt.Rows[0]["UGMarks"]);
                res.UG_Collage = Convert.ToString(dt.Rows[0]["UG_Collage"]);
                res.PGTitle = Convert.ToString(dt.Rows[0]["PGTitle"]);
                res.PGMarks = Convert.ToString(dt.Rows[0]["PGMarks"]);
                res.PG_Collage = Convert.ToString(dt.Rows[0]["PG_Collage"]);
                res.PreviousCollage = Convert.ToString(dt.Rows[0]["PreviousCollage"]);
                res.Subjects = Convert.ToString(dt.Rows[0]["Subjects"]);
                res.Experiance = Convert.ToInt16(dt.Rows[0]["Experiance"]);
            }
            return res;
        }
        public DataTable DeleteTeacher(Teacher teacher)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.DeleteTeacher(teacher);
            return dt;
        }
        public ResponseStatus SendPass(int Id)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.GetTeacher_DALById(Id);
            string Email = Convert.ToString(dt.Rows[0]["Email"]);
            string Mobile = Convert.ToString(dt.Rows[0]["Mobile"]);
            string Password = Convert.ToString(dt.Rows[0]["Password"]);
            var msg = EmailTemplate.AccountDetails.Replace("{Name}", Convert.ToString(dt.Rows[0]["Name"]));
            msg = msg.Replace("{Post}","Teacher");
            msg = msg.Replace("{UserId}", Mobile);
            msg = msg.Replace("{Pass}", Password);
            msg = msg.Replace("{Collage}", "Collage Name");
            var res = _sendEmail.SendMail(Email,"Account Details", msg);
            return res;
        }
    }
}
