using JLNP_Project.Models;
using System.Data.SqlClient;
using System.Data;
using Core.DAL;

namespace JLNP_Project.AppCode.DAL
{
    public class Student_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable AddStudent_DAL(Student student)
        {
            SqlCommand cmd = new SqlCommand("proc_student_crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", student.Name);
            cmd.Parameters.AddWithValue("@Fname", student.Fname);
            cmd.Parameters.AddWithValue("@Email", student.Email);
            cmd.Parameters.AddWithValue("@Mobile", student.Mobile);
            cmd.Parameters.AddWithValue("@Branch", student.Branch);
            cmd.Parameters.AddWithValue("@Address", student.Address);
            cmd.Parameters.AddWithValue("@Gender", student.Gender);
            cmd.Parameters.AddWithValue("@Group_Name", student.Group);
            //cmd.Parameters.AddWithValue("@RegistrationNo", student.Entrolment_No);
            cmd.Parameters.AddWithValue("@DOB", student.DOB);
            cmd.Parameters.AddWithValue("@Action", student.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetStudent_DAL(Student student)
        {
            SqlCommand cmd = new SqlCommand("proc_student_crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", student.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetStudentById_DAL(Student student)
        {
            SqlCommand cmd = new SqlCommand("proc_student_crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", student.Action);
            cmd.Parameters.AddWithValue("@Id", student.Id);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            con.Open();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            con.Close();
            return dt;
        }
        public DataTable updateStudent_DAL(Student student)
        {
            SqlCommand cmd = new SqlCommand("proc_student_crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", student.Id);
            cmd.Parameters.AddWithValue("@Name", student.Name);
            cmd.Parameters.AddWithValue("@Fname", student.Fname);
            cmd.Parameters.AddWithValue("@Email", student.Email);
            cmd.Parameters.AddWithValue("@Mobile", student.Mobile);
            cmd.Parameters.AddWithValue("@Branch", student.Branch);
            cmd.Parameters.AddWithValue("@Address", student.Address);
            cmd.Parameters.AddWithValue("@Gender", student.Gender);
            cmd.Parameters.AddWithValue("@Group_Name", student.Group);
            cmd.Parameters.AddWithValue("@DOB", student.DOB);
            cmd.Parameters.AddWithValue("@Action", student.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable DeleteStudent(Student student)
        {
            SqlCommand cmd = new SqlCommand("proc_student_crud", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", student.Action);
            cmd.Parameters.AddWithValue("@Id", student.Id);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            con.Open();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            con.Close();
            return dt;
        }
    }
}
