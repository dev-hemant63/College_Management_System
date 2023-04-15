using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.Midlelayer
{
    public class Examination : IExamination
    {
        DBHelper _helper = new DBHelper();
        public List<ExamType> GetExamType(int id)
        {
            var res = new List<ExamType>();
            string sp = "select * from tbl_ExamType where Id = IIF(@id = 0,Id,@id) order by Id desc";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            try
            {
                var dt = _helper.ExcQueryDT(sp, param);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new ExamType
                        {
                            Id = Convert.ToInt32(item["Id"]),
                            ExamTypes = Convert.ToString(item["ExamType"]),
                            Entrydate = Convert.ToString(item["Entrydate"]),
                        };
                        res.Add(data);
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public ResponseStatus SaveExamType(ExamType req)
        {
            var res = new ResponseStatus();
            string sp = "";
            if (req.Id == 0)
            {
                sp = @"insert into tbl_ExamType(ExamType,EntryDate,EntryBy) values(@ExamType,GETDATE(),@EntryBy);";
            }
            else
            {
                sp = @"Update tbl_ExamType set ExamType = @ExamType where ID = @id;";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",req.Id),
                new SqlParameter("@ExamType",req.ExamTypes),
                new SqlParameter("@EntryBy",1),
            };
            try
            {
                var dt = _helper.ExcQuery(sp, param);
                res.statuscode = 1;
                res.Msg = "ExamType saved successfully";
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public ResponseStatus DeleteExamType(int id)
        {
            var res = new ResponseStatus();
            string sp = "";
            if (id == 0)
            {
                res.statuscode = -1;
                res.Msg = "ExamType deleted failed";
            }
            else
            {
                sp = @"Delete from tbl_ExamType where ID = @id;";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",id),
            };
            try
            {
                var dt = _helper.ExcQuery(sp, param);
                res.statuscode = 1;
                res.Msg = "ExamType deleted successfully";
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public List<ExamGroupe> GetExamGroup(int id)
        {
            var res = new List<ExamGroupe>();
            string sp = @"select t1.*,t2.ExamType ExamTypename from tbl_ExamGroup t1
                    inner join tbl_ExamType t2 on t1.ExamType = t2.Id  where t1.Id = IIF(@ExamID = 0,t1.Id,@ExamID)";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ExamID",id)
            };
            try
            {
                var dt = _helper.ExcQueryDT(sp, param);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new ExamGroupe
                        {
                            Id = Convert.ToInt32(item["Id"]),
                            ExamType = Convert.ToInt32(item["ExamType"]),
                            ExamGroupes = Convert.ToString(item["ExamGroup"]),
                            Entrydate = Convert.ToString(item["Entrydate"]),
                            Description = Convert.ToString(item["Description"]),
                            ExamTypeName = Convert.ToString(item["ExamTypename"]),
                        };
                        res.Add(data);
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public ResponseStatus SaveExamGroup(ExamGroupe req)
        {
            var res = new ResponseStatus();
            string sp = "";
            if (req.Id == 0)
            {
                sp = @"insert into tbl_ExamGroup(ExamType,ExamGroup,Description,EntryDate,EntryBy)
                        values(@ExamTypes,@ExamGroups,@Description,GETDATE(),@EntryBy)";
            }
            else
            {
                sp = @"Update tbl_ExamGroup set ExamType = @ExamType,ExamGroup = @ExamGroup.Description = @Description where ID = @id;";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",req.Id),
                new SqlParameter("@ExamTypes",req.ExamTypes),
                new SqlParameter("@EntryBy",req.UserID),
                new SqlParameter("@ExamGroups",req.ExamGroupes),
                new SqlParameter("@Description",req.Description),
            };
            try
            {
                var _is = _helper.ExcQuery(sp, param);
                if (_is)
                {
                    res.statuscode = 1;
                    res.Msg = "ExamGroup saved successfully";
                }
                else
                {
                    res.statuscode = -1;
                    res.Msg = "TempError";
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public ResponseStatus DeleteExamGroup(int id)
        {
            var res = new ResponseStatus();
            string sp = "";
            if (id == 0)
            {
                res.statuscode = -1;
                res.Msg = "Examgroup deletion failed";
            }
            else
            {
                sp = @"Delete from tbl_ExamGroup where ID = @id;";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",id),
            };
            try
            {
                var dt = _helper.ExcQuery(sp, param);
                res.statuscode = 1;
                res.Msg = "Examgroup deleted successfully";
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
    }
}
