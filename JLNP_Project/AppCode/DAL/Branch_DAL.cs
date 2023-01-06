using Core.DAL;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Branch_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable AddBranch_DAL(Branch branch)
        {
            SqlCommand cmd = new SqlCommand("proc_Branch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BranchName", branch.BranchName);
            cmd.Parameters.AddWithValue("@BranchCode", branch.BranchCode);
            cmd.Parameters.AddWithValue("@Action", branch.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetBranch_DAL(string Action)
        {
            SqlCommand cmd = new SqlCommand("proc_Branch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetBranchById_DAL(Branch branch)
        {
            SqlCommand cmd = new SqlCommand("proc_Branch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", branch.Action);
            cmd.Parameters.AddWithValue("@BranchId", branch.BranchId);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable EditBranch_DAL(Branch branch)
        {
            SqlCommand cmd = new SqlCommand("proc_Branch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BranchId", branch.BranchId);
            cmd.Parameters.AddWithValue("@BranchName", branch.BranchName);
            cmd.Parameters.AddWithValue("@BranchCode", branch.BranchCode);
            cmd.Parameters.AddWithValue("@Action", branch.Action);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable DeleteBranch_DAL(int BranchId, string Action)
        {
            SqlCommand cmd = new SqlCommand("proc_Branch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", Action);
            cmd.Parameters.AddWithValue("@BranchId", BranchId);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
    }
}
