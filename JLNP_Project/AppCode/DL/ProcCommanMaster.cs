using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DL
{
    public class ProcCommanMaster
    {
        DBHelper _helper = new DBHelper();
        public ResponseStatus ProcAddAndUpdateVideoUrl(CommanMasterReq req)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "ProcAddAndUpdateVideoUrl"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",req.Id),
                new SqlParameter("@BranchId",req.BranchId),
                new SqlParameter("@Subject",req.SubjectId),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@LoginID",req.UserId),
                new SqlParameter("@VideoUrl",req.VideoUrl),
            };
            try
            {
                var dt = _helper.ExcProc(ProcName, param);
                if (dt.Rows.Count > 0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
                }
            }
            catch (Exception ex)
            {
                res.Msg = ex.Message;
            }
            return res;
        }
        public List<CommanMasterResponse> ProcGetVideoUrl(int Id)
        {
            var res = new List<CommanMasterResponse>();
            string ProcName = "ProcGetVideoUrl"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",Id),
            };
            try
            {
                var dt = _helper.ExcProc(ProcName, param);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var model = new CommanMasterResponse
                        {
                            Id = Convert.ToInt32(dr["Id"]),
                            Branch = Convert.ToString(dr["Branch_Name"]),
                            Subject = Convert.ToString(dr["SubjectName"]),
                            EntryDate = Convert.ToString(dr["EntryDate"]),
                            Year = Convert.ToInt32(dr["Year"]),
                            VideoUrl = Convert.ToString(dr["VideoUrl"]),
                        };
                        res.Add(model);
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return res;
        }
        public ResponseStatus ProcAddAndUpdateProgram(ProgramMaster req)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "ProcAddAndUpdateProgram"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",req.Id),
                new SqlParameter("@Program",req.Program),
                new SqlParameter("@ProgramType",req.ProgramType),
                new SqlParameter("@ProgramDuration",req.ProgramDuration),
                new SqlParameter("@LoginID",req.UserId)
            };
            try
            {
                var dt = _helper.ExcProc(ProcName, param);
                if (dt.Rows.Count > 0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
                }
            }
            catch (Exception ex)
            {
                res.Msg = ex.Message;
            }
            return res;
        }
        public List<ProgramMaster> ProcGetProgram()
        {
            var res = new List<ProgramMaster>();
            string ProcName = "Select * from tbl_Program order by Id Desc"; // Procedure name
            try
            {
                var dt = _helper.ExcQueryWithoutParam(ProcName);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var model = new ProgramMaster
                        {
                            Id = Convert.ToInt32(dr["Id"]),
                            Program = Convert.ToString(dr["Program"]),
                            ProgramDuration = Convert.ToString(dr["ProgramDuration"]),
                            EntryDate = Convert.ToString(dr["EntryDate"]),
                            ProgramType = Convert.ToString(dr["ProgramType"]),
                        };
                        res.Add(model);
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return res;
        }
        public ProgramMaster ProcEditProgram(int Id)
        {
            var res = new ProgramMaster();
            string ProcName = "Select * from tbl_Program Where Id = @Id"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",Id)
            };
            try
            {
                var dt = _helper.ExcQueryDT(ProcName, param);
                if (dt.Rows.Count > 0)
                {
                    var model = new ProgramMaster
                    {
                        Id = Convert.ToInt32(dt.Rows[0]["Id"]),
                        Program = Convert.ToString(dt.Rows[0]["Program"]),
                        ProgramDuration = Convert.ToString(dt.Rows[0]["ProgramDuration"]),
                        EntryDate = Convert.ToString(dt.Rows[0]["EntryDate"]),
                        ProgramType = Convert.ToString(dt.Rows[0]["ProgramType"]),
                    };
                    res = model;
                }
            }
            catch (Exception ex)
            {

            }
            return res;
        }
        public ResponseStatus ProcDeleteProgram(int Id)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "Delete from tbl_Program Where Id = @Id"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",Id)
            };
            try
            {
                var Is = _helper.ExcQuery(ProcName, param);
                if (Is)
                {
                    res.statuscode = 1;
                    res.Msg = "Program Deleted Successfully!";
                }
            }
            catch (Exception ex)
            {

            }
            return res;
        }
    }
}
