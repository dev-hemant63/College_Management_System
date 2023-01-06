using Core.DAL;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class AccountManagement_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable FeesHead_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_FeesHead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            cmd.Parameters.AddWithValue("@Branch", accountManagement.Branch);
            cmd.Parameters.AddWithValue("@Year", accountManagement.Year);
            cmd.Parameters.AddWithValue("@Branch_Code", accountManagement.BranchCode);
            cmd.Parameters.AddWithValue("@EntryBy", accountManagement.EntryBy);
            cmd.Parameters.AddWithValue("@Amount", accountManagement.Amount);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable BindAmount_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_BindAmount", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Branch", accountManagement.Branch);
            cmd.Parameters.AddWithValue("@Year", accountManagement.Year);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable FeesSubmition_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("proc_Feessubmition", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            cmd.Parameters.AddWithValue("@StudentName", accountManagement.StudentName);
            cmd.Parameters.AddWithValue("@FatherName", accountManagement.FatherName);
            cmd.Parameters.AddWithValue("@Branch", accountManagement.Branch);
            cmd.Parameters.AddWithValue("@Year", accountManagement.Year);
            cmd.Parameters.AddWithValue("@Amount", accountManagement.Amount);
            cmd.Parameters.AddWithValue("@FeesSubmitionMode", accountManagement.FeesSubmitionMode);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable Student_Submit_Fees_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("proc_Feessubmition", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable BranchFees_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_FeesHead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetFeesHeadById_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_FeesHead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", accountManagement.Id);
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable EditFeesHead_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_FeesHead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            cmd.Parameters.AddWithValue("@Id", accountManagement.Id);
            cmd.Parameters.AddWithValue("@Branch", accountManagement.Branch);
            cmd.Parameters.AddWithValue("@Year", accountManagement.Year);
            cmd.Parameters.AddWithValue("@Branch_Code", accountManagement.BranchCode);
            cmd.Parameters.AddWithValue("@EntryBy", accountManagement.EntryBy);
            cmd.Parameters.AddWithValue("@Amount", accountManagement.Amount);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable FeesHeadDelete(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_FeesHead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", accountManagement.Id);
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
    }
}
