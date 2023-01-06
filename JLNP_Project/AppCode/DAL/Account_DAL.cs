using Core.DAL;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Account_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataSet Login_DAL(Account account)
        {
            SqlCommand cmd = new SqlCommand("proc_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", account.UserId);
            cmd.Parameters.AddWithValue("@LoginTypeId", account.LoginTypeId);
            cmd.Parameters.AddWithValue("@Password", account.Password);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            con.Open();
            cmd.ExecuteNonQuery();
            sda.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable Login_DAL_V1(Account account)
        {
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", account.UserId);
            cmd.Parameters.AddWithValue("@LoginTypeId", account.LoginTypeId);
            cmd.Parameters.AddWithValue("@Password", account.Password);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            
            cmd.ExecuteNonQuery();
            sda.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable ChangePassword_DAL(Account account)
        {
            SqlCommand cmd = new SqlCommand("proc_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", account.UserId);
            cmd.Parameters.AddWithValue("@LoginTypeId", account.LoginTypeId);
            cmd.Parameters.AddWithValue("@Password", account.Password);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            con.Open();
            cmd.ExecuteNonQuery();
            sda.Fill(dt);
            con.Close();
            return dt;
        }
    }
}
