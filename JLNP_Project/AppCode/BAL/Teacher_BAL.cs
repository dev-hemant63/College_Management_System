using JLNP_Project.Models;
using System.Data;
using JLNP_Project.AppCode.DAL;

namespace JLNP_Project.AppCode.BAL
{
    public class Teacher_BAL
    {
        public DataTable AddTeacher_BAL(Teacher teacher)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.AddTeacher_DAL(teacher);
            return dt;
        }
        public DataTable GetTeacher_BAL(string Action)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.GetTeacher_DAL(Action);
            return dt;
        }
        public DataTable GetTeacher_BALById(Teacher teacher)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.GetTeacher_DALById(teacher);
            return dt;
        }
        public DataTable UpdateTeacher_BAL(Teacher teacher)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.UpdateTeacher_DAL(teacher);
            return dt;
        }
        public DataTable DeleteTeacher(Teacher teacher)
        {
            Teacher_DAL AtDal = new Teacher_DAL();
            var dt = AtDal.DeleteTeacher(teacher);
            return dt;
        }
    }
}
