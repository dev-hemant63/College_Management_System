using CollageERP.Models;
using Core.DAL;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Teacher_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable AddTeacher_DAL(Teacher teacher)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TeacherId", teacher.TeacherId);
            cmd.Parameters.AddWithValue("@Name", teacher.Name);
            cmd.Parameters.AddWithValue("@Fname", teacher.Fname);
            cmd.Parameters.AddWithValue("@Email", teacher.Email);
            cmd.Parameters.AddWithValue("@Mobile", teacher.Mobile);
            cmd.Parameters.AddWithValue("@DOB", teacher.DOB);
            cmd.Parameters.AddWithValue("@Address", teacher.Address);
            cmd.Parameters.AddWithValue("@salary", teacher.salary);
            cmd.Parameters.AddWithValue("@Action", teacher.Action);
            cmd.Parameters.AddWithValue("@HighSchoolMarks", teacher.HighSchoolMarks);
            cmd.Parameters.AddWithValue("@HighSchool_P", teacher.HighSchool_P);
            cmd.Parameters.AddWithValue("@HighSchool_B", teacher.HighSchool_B);
            cmd.Parameters.AddWithValue("@InterMarks", teacher.InterMarks);
            cmd.Parameters.AddWithValue("@Inter_P", teacher.Inter_P);
            cmd.Parameters.AddWithValue("@Inter_B", teacher.Inter_B);
            cmd.Parameters.AddWithValue("@UGTitle", teacher.UGTitle);
            cmd.Parameters.AddWithValue("@UGMarks", teacher.UGMarks);
            cmd.Parameters.AddWithValue("@UG_Collage", teacher.UG_Collage);
            cmd.Parameters.AddWithValue("@PGTitle", teacher.PGTitle);
            cmd.Parameters.AddWithValue("@PGMarks", teacher.PGMarks);
            cmd.Parameters.AddWithValue("@PG_Collage", teacher.PG_Collage);
            cmd.Parameters.AddWithValue("@PreviousCollage", teacher.PreviousCollage);
            cmd.Parameters.AddWithValue("@Subjects", teacher.Subjects);
            cmd.Parameters.AddWithValue("@Experiance", teacher.Experiance);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetTeacher_DAL(TeacherSearch search)
        {
            SqlCommand cmd = new SqlCommand("Proc_GetTeacher", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Mobile", search.Mobile);
            cmd.Parameters.AddWithValue("@Fromdate", search.Fromdate);
            cmd.Parameters.AddWithValue("@Todate", search.Todate);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetTeacher_DALById(int teacher)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "GetById");
            cmd.Parameters.AddWithValue("@TeacherId", teacher);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable DeleteTeacher(Teacher teacher)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", teacher.Action);
            cmd.Parameters.AddWithValue("@TeacherId", teacher.TeacherId);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
    }
}
