using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Student_BAL
    {
        public DataTable AddStudent_BAL(Student student)
        {
            Student_DAL StDAL = new Student_DAL();
            var dt = StDAL.AddStudent_DAL(student);
            return dt;
        }
        public DataTable GetStudent_BAL(Student student)
        {
            Student_DAL StDAL = new Student_DAL();
            var dt = StDAL.GetStudent_DAL(student);
            return dt;
        }
        public Student GetStudentById_BAL(Student student)
        {
            Student_DAL StDAL = new Student_DAL();
            var model = new Student();
            var dt = StDAL.GetStudentById_DAL(student);
            if (dt.Rows.Count>0)
            {
                try
                {
                    model.Id = Convert.ToInt32(dt.Rows[0]["Id"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["Id"]));
                    model.Name = Convert.ToString(dt.Rows[0]["Name"]);
                    model.Email = Convert.ToString(dt.Rows[0]["Email"]);
                    model.Gender = Convert.ToString(dt.Rows[0]["Gender"]);
                    model.Fname = Convert.ToString(dt.Rows[0]["Fname"]);
                    model.MotherName = Convert.ToString(dt.Rows[0]["MotherName"] is DBNull ? "": dt.Rows[0]["MotherName"].ToString());
                    model.Group = Convert.ToString(dt.Rows[0]["Group_Name"]);
                    model.FatherOccupation = Convert.ToString(dt.Rows[0]["FatherOccupation"] is DBNull ? "" : dt.Rows[0]["FatherOccupation"].ToString());
                    model.DOB = Convert.ToString(dt.Rows[0]["DOB"]);
                    model.Mobile = Convert.ToString(dt.Rows[0]["Mobile"]);
                    model.Program = Convert.ToInt32(dt.Rows[0]["Program"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["Program"]));
                    model.BranchId = Convert.ToInt32(dt.Rows[0]["Branch"]);
                    model.Address = Convert.ToString(dt.Rows[0]["Address"]);
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
            return model;
        }
        public DataTable updateStudent_BAL(Student student)
        {
            Student_DAL StDAL = new Student_DAL();
            var dt = StDAL.updateStudent_DAL(student);
            return dt;
        }
        public DataTable DeleteStudent(Student student)
        {
            Student_DAL StDAL = new Student_DAL();
            var dt = StDAL.DeleteStudent(student);
            return dt;
        }
    }
}
