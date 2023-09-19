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
            SqlCommand cmd = new SqlCommand("Proc_StudentRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", student.Name);
            cmd.Parameters.AddWithValue("@Fname", student.Fname);
            cmd.Parameters.AddWithValue("@Email", student.Email);
            cmd.Parameters.AddWithValue("@Mobile", student.Mobile);
            cmd.Parameters.AddWithValue("@Branch", student.Branch);
            cmd.Parameters.AddWithValue("@Address", student.Address);
            cmd.Parameters.AddWithValue("@Gender", student.Gender);
            cmd.Parameters.AddWithValue("@Group_Name", student.Group);
            cmd.Parameters.AddWithValue("@DOB", student.DOB);
            cmd.Parameters.AddWithValue("@FatherOccupation", student.FatherOccupation);
            cmd.Parameters.AddWithValue("@MotherName", student.MotherName);
            cmd.Parameters.AddWithValue("@Program", student.Program);
            cmd.Parameters.AddWithValue("@AdmissionType", student.AdmissionType);
            cmd.Parameters.AddWithValue("@TXNMode", student.TXNMode);
            cmd.Parameters.AddWithValue("@UTR", student.UTR);
            cmd.Parameters.AddWithValue("@CheckNo", student.CheckNo);
            cmd.Parameters.AddWithValue("@loginId", student.EntryBy);
            cmd.Parameters.AddWithValue("@Amount", student.Amount);
            cmd.Parameters.AddWithValue("@Action", student.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetStudent_DAL(Student student)
        {
            SqlCommand cmd = new SqlCommand("Proc_GetRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@loginId", student.EntryBy);
            cmd.Parameters.AddWithValue("@RegistrationNo", student.RegistrationNo);
            cmd.Parameters.AddWithValue("@FromDate", student.FromDate);
            cmd.Parameters.AddWithValue("@ToDate", student.ToDate);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetStudentById_DAL(Student student)
        {
            SqlCommand cmd = new SqlCommand("Proc_StudentRegistration", con);
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
            SqlCommand cmd = new SqlCommand("Proc_StudentRegistration", con);
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
            cmd.Parameters.AddWithValue("@FatherOccupation", student.FatherOccupation);
            cmd.Parameters.AddWithValue("@MotherName", student.MotherName);
            cmd.Parameters.AddWithValue("@Program", student.Program);
            cmd.Parameters.AddWithValue("@Action", student.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable DeleteStudent(Student student)
        {
            SqlCommand cmd = new SqlCommand("Proc_StudentRegistration", con);
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
