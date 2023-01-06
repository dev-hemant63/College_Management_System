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
            SqlCommand cmd = new SqlCommand("Proc_Teacher_Crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", teacher.Name);
            cmd.Parameters.AddWithValue("@Fname", teacher.Fname);
            cmd.Parameters.AddWithValue("@Email", teacher.Email);
            cmd.Parameters.AddWithValue("@Mobile", teacher.Mobile);
            cmd.Parameters.AddWithValue("@DOB", teacher.DOB);
            cmd.Parameters.AddWithValue("@Address", teacher.Address);
            cmd.Parameters.AddWithValue("@salary", teacher.salary);
            cmd.Parameters.AddWithValue("@Qualification", teacher.Qualification);
            cmd.Parameters.AddWithValue("@Action", teacher.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetTeacher_DAL(string Action)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher_Crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetTeacher_DALById(Teacher teacher)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher_Crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", teacher.Action);
            cmd.Parameters.AddWithValue("@TeacherId", teacher.TeacherId);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable UpdateTeacher_DAL(Teacher teacher)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher_Crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TeacherId", teacher.TeacherId);
            cmd.Parameters.AddWithValue("@Name", teacher.Name);
            cmd.Parameters.AddWithValue("@Fname", teacher.Fname);
            cmd.Parameters.AddWithValue("@Email", teacher.Email);
            cmd.Parameters.AddWithValue("@Mobile", teacher.Mobile);
            cmd.Parameters.AddWithValue("@DOB", teacher.DOB);
            cmd.Parameters.AddWithValue("@Address", teacher.Address);
            cmd.Parameters.AddWithValue("@salary", teacher.salary);
            cmd.Parameters.AddWithValue("@Qualification", teacher.Qualification);
            cmd.Parameters.AddWithValue("@Action", teacher.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable DeleteTeacher(Teacher teacher)
        {
            SqlCommand cmd = new SqlCommand("Proc_Teacher_Crud", con);
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
