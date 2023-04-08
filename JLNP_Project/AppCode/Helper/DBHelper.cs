using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Core.DAL;
using Microsoft.Extensions.Configuration;

namespace JLNP_Project.AppCode.Helper
{
    public class DBHelper
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable ExcProc(string Procname,SqlParameter[] prams)
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Procname, con);
                cmd.CommandType = CommandType.StoredProcedure;
                for (int i = 0; i < prams.Length; i++)
                {
                    cmd.Parameters.Add(prams[i]);
                }
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                cmd.Parameters.Clear();
            }
            catch(Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return dt;
        }
        public DataSet ExcProc_Dataset(string Procname, SqlParameter[] prams)
        {
            DataSet ds = new DataSet();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Procname, con);
                cmd.CommandType = CommandType.StoredProcedure;
                for (int i = 0; i < prams.Length; i++)
                {
                    cmd.Parameters.Add(prams[i]);
                }
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return ds;
        }
        public bool ExcQuery(string Command, SqlParameter[] prams)
        {
            bool Is = false;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Command, con);
                cmd.CommandType = CommandType.Text;
                for (int i = 0; i < prams.Length; i++)
                {
                    cmd.Parameters.Add(prams[i]);
                }
                cmd.ExecuteNonQuery();
                Is = true;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return Is;
        }
        public DataTable ExcQueryDT(string Command, SqlParameter[] prams)
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Command, con);
                cmd.CommandType = CommandType.Text;
                for (int i = 0; i < prams.Length; i++)
                {
                    cmd.Parameters.Add(prams[i]);
                }
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                cmd.Parameters.Clear();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return dt;
        }
        public DataTable ExcProcWithoutParam(string Procname)
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Procname, con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return dt;
        }
        public DataTable ExcQueryWithoutParam(string Procname)
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Procname, con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return dt;
        }
        public DataSet ExcProcWithoutParamDS(string Procname)
        {
            DataSet ds = new DataSet();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(Procname, con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return ds;
        }
    }
}
