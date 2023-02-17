using Core.DAL;
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
            cmd.Parameters.AddWithValue("@Branch", Convert.ToInt32(accountManagement.Branch));
            cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(accountManagement.Year));
            cmd.Parameters.AddWithValue("@Program", Convert.ToInt32(accountManagement.Program));
            cmd.Parameters.AddWithValue("@FeesType", Convert.ToInt32(accountManagement.FeesType));
            cmd.Parameters.AddWithValue("@Enrollment", accountManagement.EnrollmentNo);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable FeesSubmition_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("proc_Feessubmition", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EnrolmentNo", accountManagement.EnrollmentNo);
            cmd.Parameters.AddWithValue("@StudentName", accountManagement.StudentName);
            cmd.Parameters.AddWithValue("@FatherName", accountManagement.FatherName);
            cmd.Parameters.AddWithValue("@Branch", accountManagement.Branch);
            cmd.Parameters.AddWithValue("@Program", accountManagement.Program);
            cmd.Parameters.AddWithValue("@FeesType", accountManagement.FeesType);
            cmd.Parameters.AddWithValue("@Mode", Convert.ToInt32(accountManagement.FeesSubmitionMode));
            cmd.Parameters.AddWithValue("@Year", accountManagement.Year);
            cmd.Parameters.AddWithValue("@Amount", accountManagement.Amount);
            cmd.Parameters.AddWithValue("@TotalAmount", accountManagement.TotalAmount);
            cmd.Parameters.AddWithValue("@CheckNumber", accountManagement.CheckNumber);
            cmd.Parameters.AddWithValue("@TransctionID", accountManagement.TransactionID);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable Student_Submit_Fees_DAL(AccountManagement accountManagement)
        {
            SqlCommand cmd = new SqlCommand("ProcFeesReport", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FromDate", accountManagement.Fromdate);
            cmd.Parameters.AddWithValue("@ToDate", accountManagement.Todate);
            cmd.Parameters.AddWithValue("@EnrollmentNo", accountManagement.EnrollmentNo);
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
        public List<FeesType> BindFeesType(int Year, int ProgramId, int Branch)
        {
            string Quesry = "";
            var res = new List<FeesType>();
            if (Year != 0 && ProgramId != 0 && Branch != 0)
            {
                Quesry = "declare @TotalFees numeric(18,2) select @TotalFees = SUM(CAST(tf.Amount as numeric(18, 2))) from tbl_FeesHead tf where tf.Program = @ProgramId and tf.Branch = @Branch and tf._Year = @Year select @TotalFees TotalFees, tft.FeesType,tf.Amount from tbl_FeesHead tf inner join tbl_FeesType tft on tf.FeesType = tft.id where tf.Program = @ProgramId and tf.Branch = @Branch and tf._Year = @Year group by tft.FeesType,tf.Amount";
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
                if (Year == 0 || ProgramId == 0 || Branch == 0)
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
                else
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new FeesType
                        {
                            TotalFees = Convert.ToDecimal(dr["TotalFees"]),
                            FeesTypes = Convert.ToString(dr["FeesType"].ToString()),
                            Amount = Convert.ToDecimal(dr["Amount"]),
                        };
                        res.Add(data);
                    }
                }
            }
            return res;
        }
        public List<FeesType> BindFeesTypeByYear(int Year, int ProgramId, int Branch)
        {
            string Quesry = "";
            var res = new List<FeesType>();
            if (Year != 0 && ProgramId != 0 && Branch != 0)
            {
                Quesry = "select Id,FeesType from tbl_FeesType where Program = @ProgramId and Year = @Year And Branch = @Branch";
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
        public DataTable GetFeesStructure()
        {
            string query = "Proc_FeesStructure";
            var dt = _dbhelper.ExcProcWithoutParam(query);
            return dt;
        }
        public List<FeesSubmissionMode> BindFeesSubmissionMode()
        {
            var res = new List<FeesSubmissionMode>();
            string Quesry = "select * from tbl_FeesSubmissionModes order by ID desc";
            var dt = _dbhelper.ExcQueryWithoutParam(Quesry);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    var data = new FeesSubmissionMode
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        Mode = Convert.ToString(dr["Mode"].ToString()),
                    };
                    res.Add(data);
                }
            }
            return res;
        }
        public AccountManagement Getstudentdetail(string EnrollmentNo)
        {
            var res = new AccountManagement();
            string Quesry = "select * from tbl_Student_Admission where EntrollmentNo = @EntrollmentNo ";
            SqlParameter[] param =
            {
                new SqlParameter("@EntrollmentNo",EnrollmentNo)
            };
            var dt = _dbhelper.ExcQueryDT(Quesry, param);
            if (dt.Rows.Count > 0)
            {
                res.StudentName = Convert.ToString(dt.Rows[0]["Name"]);
                res.FatherName = Convert.ToString(dt.Rows[0]["Fname"]);
            }
            return res;
        }
        public List<TransctionDetails> GetTransctionHistory(string EnrollmentNo)
        {
            var res = new List<TransctionDetails>();
            string Quesry = "Proc_TransactionHistory";
            SqlParameter[] param =
            {
                new SqlParameter("@EnrollmentNo",EnrollmentNo)
            };
            var dt = _dbhelper.ExcProc(Quesry, param);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    var data = new TransctionDetails
                    {
                        Name = Convert.ToString(dr["Name"].ToString()),
                        EnrollmentNo = Convert.ToString(dr["Enrollment"].ToString()),
                        Program = Convert.ToString(dr["Program"].ToString()),
                        Branch = Convert.ToString(dr["Branch_Name"].ToString()),
                        EntryDate = Convert.ToString(dr["EntryDate"].ToString()),
                        TotalFees = Convert.ToDecimal(dr["TotalFees"]),
                        SubmitedFees = Convert.ToDecimal(dr["TotalSubmitedFees"]),
                        DueFees = Convert.ToDecimal(dr["Totalduefees"])
                    };
                    res.Add(data);
                }
            }
            return res;
        }
        public FeesReceipt FeesReceipt(string EnrollmentNo)
        {
            var res = new FeesReceipt();
            var list = new List<FeesType>();
            string Quesry = "Proc_FeesReceipt";
            SqlParameter[] param =
            {
                new SqlParameter("@EnrollmentNo",EnrollmentNo)
            };
            var ds = _dbhelper.ExcProc_Dataset(Quesry, param);
            var dt = ds.Tables[0];
            var dtt = ds.Tables[1];
            if (dt.Rows.Count > 0)
            {
                var data = new FeesReceipt
                {
                    Name = Convert.ToString(dt.Rows[0]["Name"].ToString()),
                    EnrollmentNo = Convert.ToString(dt.Rows[0]["Enrollment"].ToString()),
                    Program = Convert.ToString(dt.Rows[0]["Program"].ToString()),
                    Branch = Convert.ToString(dt.Rows[0]["Branch_Name"].ToString()),
                    EntryDate = Convert.ToString(dt.Rows[0]["EntryDate"].ToString()),
                    TotalFees = Convert.ToDecimal(dt.Rows[0]["TotalFees"]),
                    SubmitedFees = Convert.ToDecimal(dt.Rows[0]["TotalSubmitedFees"]),
                    DueFees = Convert.ToDecimal(dt.Rows[0]["Totalduefees"]),
                    FeesReceiptNo = Convert.ToString(dt.Rows[0]["FeesReceiptNo"]),
                    Mode = Convert.ToString(dt.Rows[0]["Mode"].ToString()),
                    Mobile = Convert.ToString(dt.Rows[0]["Mobile"].ToString()),
                    Year = Convert.ToString(dt.Rows[0]["_Year"].ToString()),
                    Email = Convert.ToString(dt.Rows[0]["Email"].ToString()),
                };
                res = data;
            }
            if (dtt.Rows.Count>0)
            {
                foreach (DataRow dr in dtt.Rows)
                {
                    var response = new FeesType
                    {
                        FeesTypes = Convert.ToString(dr["FeesType"].ToString()),
                        Amount= Convert.ToDecimal(dr["Amount"].ToString()),
                        ID = 0,
                        TotalFees = 0
                    };
                    list.Add(response);
                }
                res.feestype = list;
            }
            return res;
        }
    }
}
