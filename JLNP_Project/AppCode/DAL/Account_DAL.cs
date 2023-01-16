using Core.DAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Account_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        DBHelper _helper = new DBHelper();
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
        public ResponseStatus ChangePassword(Account req)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "Proc_ChangePassword";
            SqlParameter[] param =
            {
                new SqlParameter("@OldPassword",req.OldPassword),
                new SqlParameter("@Password",req.Password),
                new SqlParameter("@UserId",req.UserId)
            };
            var dt = _helper.ExcProc(ProcName, param);
            if (dt.Rows.Count>0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"] is DBNull ? 0 :Convert.ToInt32(dt.Rows[0]["Statuscode"]));
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"] is DBNull ? 0 : Convert.ToString(dt.Rows[0]["Msg"]));
                if (res.statuscode == 1)
                {
                    res.UserEmail = Convert.ToString(dt.Rows[0]["Email"] is DBNull ? 0 : Convert.ToString(dt.Rows[0]["Email"]));
                    res.UserId = Convert.ToInt32(dt.Rows[0]["UserId"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["UserId"]));
                }
            }
            return res;
        }
    }
}
