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
        public CommanMasterReq ProcEditVideoUrl(int Id)
        {
            var res = new CommanMasterReq();
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
                    res.Id = Convert.ToInt32(dt.Rows[0]["Id"]);
                    res.BranchId = Convert.ToInt32(dt.Rows[0]["BranchId"]);
                    res.SubjectId = Convert.ToInt32(dt.Rows[0]["SubjectId"]);
                    res.Year = Convert.ToInt32(dt.Rows[0]["Year"]);
                    res.VideoUrl = Convert.ToString(dt.Rows[0]["VideoUrl"]);
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
        public ResponseStatus ProcSaveProgramBranchMapping(ProgramBranchMapping req)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "ProcSaveProgramBranchMapping"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",req.Id),
                new SqlParameter("@ProgramId",req.ProgramId),
                new SqlParameter("@BranchId",req.BranchId),
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
        public List<ProgramBranchMapping> ProcGetProgramBranchMapping()
        {
            var res = new List<ProgramBranchMapping>();
            string ProcName = "select tpb.Id,tb.Branch_Name,tp.Program,tpb.EntryDate from tbl_ProgramBranchMapping tpb inner join tbl_Program tp on tpb.ProgramId = tp.Id inner join tbl_Branch tb on tpb.BranchId = tb.BranchId order by Id Desc"; // Procedure name
            try
            {
                var dt = _helper.ExcQueryWithoutParam(ProcName);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var model = new ProgramBranchMapping
                        {
                            ProgramId = Convert.ToInt32(dr["Id"]),
                            ProgramName = Convert.ToString(dr["Program"]),
                            BranchName = Convert.ToString(dr["Branch_Name"]),
                            EntryDate = Convert.ToString(dr["EntryDate"])
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
        public ProgramBranchMapping ProcEditProgramBranchMapping(int Id)
        {
            var res = new ProgramBranchMapping();
            string ProcName = "select * from tbl_ProgramBranchMapping where Id = @ID"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",Id)
            };
            try
            {
                var dt = _helper.ExcQueryDT(ProcName, param);
                if (dt.Rows.Count > 0)
                {
                    var model = new ProgramBranchMapping
                    {
                        Id = Convert.ToInt32(dt.Rows[0]["Id"]),
                        ProgramId = Convert.ToInt32(dt.Rows[0]["ProgramId"]),
                        BranchId = Convert.ToInt32(dt.Rows[0]["BranchId"])
                    };
                    res = model;
                }
            }
            catch (Exception ex)
            {

            }
            return res;
        }
        public ResponseStatus ProcDeleteProgramBranchMapping(int Id)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string ProcName = "Delete from tbl_ProgramBranchMapping where Id = @Id;Select 1 Statuscode,'Record Deleted Succefully!' Msg"; // Procedure name
            SqlParameter[] param =
            {
                new SqlParameter("@Id",Id)
            };
            try
            {
                var dt = _helper.ExcQueryDT(ProcName, param);
                if (dt.Rows.Count > 0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
                }
            }
            catch (Exception ex)
            {

            }
            return res;
        }
    }
}
