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
            string sp = @"select t1.*,ISNULL(t1.ExamCount,0) ExamCount,t2.ExamType ExamTypename from tbl_ExamGroup t1
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
                            ExamCount = Convert.ToInt32(item["ExamCount"] is DBNull ? 0: item["ExamCount"]),
                        };
                        res.Add(data);
                    }
                }
            }
            catch (Exception ex)
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
                sp = @"Update tbl_ExamGroup set ExamType = @ExamTypes,ExamGroup = @ExamGroups, Description = @Description where ID = @id;";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",req.Id),
                new SqlParameter("@ExamTypes",req.ExamType),
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
        public ResponseStatus AddExam(Exam req)
        {
            var res = new ResponseStatus();
            string sp = "";
            if (req.Id == 0)
            {
                sp = @"insert into tbl_Exam (Exam,GroupId,EntryDate,EntryBy) values(@Exam,@GroupId,GETDATE(),@EntryBy)
                    Update tbl_ExamGroup set ExamCount = (ISNULL(ExamCount,0) + 1) where Id = @GroupId";
            }
            else
            {
                sp = @"Update tbl_Exam set Exam = @Exam,GroupId = @GroupId,EntryBy= @EntryBy where Id = @id;";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",req.Id),
                new SqlParameter("@Exam",req.ExamTitle),
                new SqlParameter("@GroupId",req.GroupId),
                new SqlParameter("@EntryBy",req.UserID)
            };
            try
            {
                var dt = _helper.ExcQuery(sp, param);
                res.statuscode = 1;
                res.Msg = "Record saved successfully";
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public List<Exam> GetExam(int id)
        {
            var res = new List<Exam>();
            string sp = "select t1.*,t2.ExamGroup from tbl_Exam t1 inner join tbl_ExamGroup t2 on t1.GroupId = t2.id where t1.Id = IIF(@id = 0,t1.Id,@id) order by Id desc";
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
                        var data = new Exam
                        {
                            Id = Convert.ToInt32(item["Id"]),
                            ExamTitle = Convert.ToString(item["Exam"]),
                            ExamGroup= Convert.ToString(item["ExamGroup"]),
                            EntryDate= Convert.ToString(item["EntryDate"]),
                            GroupId= Convert.ToInt32(item["GroupId"]),
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
        public ResponseStatus DeleteExam(int id)
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
                sp = @"Delete from tbl_Exam where Id = @id;";
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
        public ResponseStatus AssignExam(AssignExam req)
        {
            var res = new ResponseStatus();
            string sp = @"if Exists(select 1 from tbl_AssignExam where EnrollemntNo = @EnrollemntNo and ExamID = @ExamID )
                                begin Update tbl_AssignExam set ExamID = @ExamID,Program =@Program,Branch=@Branch,Year=@Year,IsAssign=@IsAssign where EnrollemntNo = @EnrollemntNo and ExamID = @ExamID end
                                else begin Insert into tbl_AssignExam(EnrollemntNo,ExamID,Program,Branch,Year,EntryDate,IsAssign) values(@EnrollemntNo,@ExamID,@Program,@Branch,@Year,GETDATE(),@IsAssign) end";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@EnrollemntNo",req.EnrollemntNo),
                new SqlParameter("@ExamID",req.ExamID),
                new SqlParameter("@Program",req.ProgramId),
                new SqlParameter("@Branch",req.Branch),
                new SqlParameter("@Year",req.Year),
                new SqlParameter("@IsAssign",req.IsAssign),
            };
            try
            {
                var _is = _helper.ExcQuery(sp, param);
                if (_is)
                {
                    res.statuscode = 1;
                    res.Msg = "Exam assigned successfully";
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public List<SubjectMaster> GetSubject()
        {
            var res = new List<SubjectMaster>();
            string sp = "select * from tbl_SubjectMaster order by SubjectName";
            try
            {
                var dt = _helper.ExcQueryWithoutParam(sp);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new SubjectMaster
                        {
                            SubjectId = Convert.ToInt32(item["Id"]),
                            SubjectName = Convert.ToString(item["SubjectName"]),
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
        public ResponseStatus AddExamDetail(ExamDetail req)
        {
            var res = new ResponseStatus();
            string sp = @"if Exists(select 1 from tbl_ExamDetail where ExamID = @ExamID and SubjectId = @SubjectId) begin Update tbl_ExamDetail set ExamID = @ExamID,SubjectId=@SubjectId,Date=@Date,Time = @Time,Duration = @Duration,RoomNo = @RoomNo,
                            MinMarks=@MinMarks,MaxMarks = @MaxMarks where ExamID = @ExamId and SubjectId = @SubjectId end else begin insert into tbl_ExamDetail(ExamID,SubjectId,Date,Time,Duration,RoomNo,MinMarks,MaxMarks,Entrydate)
                                values(@ExamID,@SubjectId,@Date,@Time,@Duration,@RoomNo,@MinMarks,@MaxMarks,GETDATE()) end";
            
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ExamID",req.ExamID),
                new SqlParameter("@SubjectId",req.SubjectId),
                new SqlParameter("@Date",req.Date),
                new SqlParameter("@Time",req.Time),
                new SqlParameter("@Duration",req.Duration),
                new SqlParameter("@RoomNo",req.RoomNo),
                new SqlParameter("@MinMarks",req.MinMarks),
                new SqlParameter("@MaxMarks",req.MaxMarks)
            };
            try
            {
                var _is = _helper.ExcQuery(sp, param);
                if (_is)
                {
                    res.statuscode = 1;
                    res.Msg = "Exam detail saved successfully";
                }
                else
                {
                    res.statuscode = -1;
                    res.Msg = "Exam detail saved failed";
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
    }
}
