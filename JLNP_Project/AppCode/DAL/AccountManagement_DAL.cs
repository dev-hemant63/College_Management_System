﻿using Core.DAL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class AccountManagement_DAL
    {
        DBHelper _dbhelper = new DBHelper();
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable FeesHead_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("Proc_FeesHead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", accountManagement.Id);
            cmd.Parameters.AddWithValue("@Action", accountManagement.Action);
            cmd.Parameters.AddWithValue("@Branch", accountManagement.Branch);
            cmd.Parameters.AddWithValue("@Year", accountManagement.Year);
            cmd.Parameters.AddWithValue("@Branch_Code", accountManagement.BranchCode);
            cmd.Parameters.AddWithValue("@EntryBy", accountManagement.EntryBy);
            cmd.Parameters.AddWithValue("@Program", accountManagement.Program);
            cmd.Parameters.AddWithValue("@FeesType", accountManagement.FeesType);
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
        public ResponseStatus SaveAndUpdateFeesType(DefineFeesStructureReqRes req)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string Quesry = "ProcSaveAndUpdateFeesType";
            SqlParameter[] param =
            {
                new SqlParameter("@Id",req.Id),
                new SqlParameter("@BranchId",req.Branch),
                new SqlParameter("@Program",req.Program),
                new SqlParameter("@FeesType",req.FeesType),
                new SqlParameter("@Year",req.Year)
            };
            var dt = _dbhelper.ExcProc(Quesry, param);
            if (dt.Rows.Count > 0)
            {
                res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
            }
            return res;
        }
        public ResponseStatus Deletefeestype(int ID)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string Quesry = "DELETE FROM tbl_FeesType WHERE Id = @Id";
            SqlParameter[] param =
            {
                new SqlParameter("@Id",ID),
            };
            var dt = _dbhelper.ExcQuery(Quesry, param);
            if (dt)
            {
                res.statuscode = 1;
                res.Msg = "Feestype deleted successfully..!";
            }
            return res;
        }
        public List<FeesType> BindFeesType(int Year,int ProgramId, int Branch)
        {
            string Quesry = "";
            var res = new List<FeesType>();
            if (Year != 0 && ProgramId != 0 && Branch != 0)
            {
                Quesry = "select Id,FeesType from tbl_FeesType where Program = @ProgramId and Branch = @Branch and Year = @Year";
            }
            else
            {
                Quesry = "select Id,FeesType from tbl_FeesType";
            }
            SqlParameter[] param =
            {
                new SqlParameter("@ProgramId",ProgramId),
                new SqlParameter("@Branch",Branch),
                new SqlParameter("@Year",Year)
            };
            var dt = _dbhelper.ExcQueryDT(Quesry, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    var data = new FeesType
                    {
                        ID = Convert.ToInt32(dr["Id"]),
                        FeesTypes = Convert.ToString(dr["FeesType"].ToString()),
                    };
                    res.Add(data);
                }
            }
            return res;
        }
        public List<DefineFeesStructureReqRes> GetFeesType(int Id = 0)
        {
            var res = new List<DefineFeesStructureReqRes>();
            string Quesry = "ProcGetFeesType";
            SqlParameter[] param =
            {
                new SqlParameter("@Id",Id),
            };
            var dt = _dbhelper.ExcProc(Quesry, param);
            if (dt.Rows.Count > 0)
            {
                if (Id == 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new DefineFeesStructureReqRes
                        {
                            Id = Convert.ToInt32(dr["Id"]),
                            ProgramName = Convert.ToString(dr["Program"].ToString()),
                            BranchName = Convert.ToString(dr["Branch"].ToString()),
                            Year = Convert.ToInt32(dr["Year"]),
                            FeesType = Convert.ToString(dr["FeesType"].ToString()),
                            EntryDate = Convert.ToString(dr["EntryDate"].ToString())
                        };
                        res.Add(data);
                    }
                }
                if (Id != 0)
                {
                    var data = new DefineFeesStructureReqRes();
                    data.Id = Convert.ToInt32(dt.Rows[0]["Id"]);
                    data.Year = Convert.ToInt32(dt.Rows[0]["Year"]);
                    data.FeesType = Convert.ToString(dt.Rows[0]["FeesType"].ToString());
                    data.Program = Convert.ToInt32(dt.Rows[0]["ProgramID"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["ProgramID"]));
                    data.Branch = Convert.ToInt32(dt.Rows[0]["BranchID"] is DBNull ? 0 : Convert.ToInt32(dt.Rows[0]["BranchID"]));
                    res.Add(data);
                }
            }
            return res;
        }
    }
}
