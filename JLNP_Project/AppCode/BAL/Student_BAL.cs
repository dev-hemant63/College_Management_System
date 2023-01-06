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
        public DataTable GetStudentById_BAL(Student student)
        {
            Student_DAL StDAL = new Student_DAL();
            var dt = StDAL.GetStudentById_DAL(student);
            return dt;
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
