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
        public List<Exam> BindExam(int Groupid)
        {
            var res = new List<Exam>();
            string sp = "select t1.* from tbl_Exam t1 where t1.GroupId = IIF(@id = 0,t1.GroupId,@id) order by Id desc";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",Groupid)
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
                            ExamTitle = Convert.ToString(item["Exam"])
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
        public List<ExamDetail> GetExamdetail(int ExamId)
        {
            var res = new List<ExamDetail>();
            string sp = @"select t1.*,t2.SubjectName,t3.Exam from tbl_ExamDetail t1
                    inner join tbl_SubjectMaster t2 on t1.SubjectId = t2.Id
					inner join tbl_Exam t3 on t1.ExamID = t3.Id where t1.ExamId = @Id";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",ExamId)
            };
            try
            {
                var dt = _helper.ExcQueryDT(sp, param);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new ExamDetail
                        {
                            ExamID = Convert.ToInt32(item["ExamID"]),
                            SubjectId = Convert.ToInt32(item["SubjectId"]),
                            Exam = Convert.ToString(item["Exam"]),
                            Subjectname = Convert.ToString(item["SubjectName"]),
                            Date = Convert.ToString(item["Date"]),
                            Time = Convert.ToString(item["Time"]),
                            Duration = Convert.ToInt32(item["Duration"]),
                            RoomNo = Convert.ToString(item["RoomNo"]),
                            MinMarks = Convert.ToInt32(item["MinMarks"]),
                            MaxMarks = Convert.ToInt32(item["MaxMarks"]),
                            Entrydate = Convert.ToString(item["Entrydate"]),
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
        public ResponseStatus AddExamGrade(ExamModel req)
        {
            var res = new ResponseStatus();
            string sp = "";
            if (req.Id != 0)
            {
                sp = @"Update tbl_Grade set ExamType = @ExamType,PrecentUpto = @PrecentUpto,GradeName = @GradeName, PrecentFrom =@PrecentFrom,GradePoint=@GradePoint,Discreption=@Discreption where Id = @Id";
            }
            else
            {
                sp = @"Insert into tbl_Grade(ExamType,PrecentUpto,PrecentFrom,GradePoint,Discreption,Entrydate,GradeName)
                        Values(@ExamType,@PrecentUpto,@PrecentFrom,@GradePoint,@Discreption,GETDATE(),@GradeName)";
            }
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",req.Id),
                new SqlParameter("@GradeName",req.GradeName),
                new SqlParameter("@ExamType",req.ExamType),
                new SqlParameter("@PrecentUpto",req.PrecentUpto),
                new SqlParameter("@PrecentFrom",req.PrecentFrom),
                new SqlParameter("@GradePoint",req.GradePoint),
                new SqlParameter("@Discreption",req.Discreption??"")
            };
            try
            {
                var _is = _helper.ExcQuery(sp, param);
                if (_is)
                {
                    res.statuscode = 1;
                    res.Msg = "Exam grade saved successfully";
                }
                else
                {
                    res.statuscode = -1;
                    res.Msg = "failed";
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public List<ExamModel> GetExamgrade(int Id)
        {
            var res = new List<ExamModel>();
            string sp = @"Select t1.*,t2.ExamType as ExamTypeName from tbl_Grade t1
                            Inner join tbl_ExamType t2 on t1.ExamType = t2.Id
                            where t1.Id = IIF(@Id = 0,t1.Id,@Id);";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",Id)
            };
            try
            {
                var dt = _helper.ExcQueryDT(sp, param);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        var data = new ExamModel
                        {
                            Id = Convert.ToInt32(item["Id"]),
                            ExamType = Convert.ToInt32(item["ExamType"]),
                            ExamTypeName = Convert.ToString(item["ExamTypeName"]),
                            GradeName = Convert.ToString(item["GradeName"]),
                            PrecentFrom = Convert.ToInt32(item["PrecentFrom"]),
                            PrecentUpto = Convert.ToInt32(item["PrecentUpto"]),
                            GradePoint = Convert.ToInt32(item["GradePoint"]),
                            Entrydate = Convert.ToString(item["Entrydate"]),
                            Discreption = Convert.ToString(item["Discreption"]),
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
        public ResponseStatus DeleteExamGrade(int Id)
        {
            var res = new ResponseStatus();
            string sp = "Delete from tbl_Grade where Id =@Id";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Id",Id)
            };
            try
            {
                var _is = _helper.ExcQuery(sp, param);
                if (_is)
                {
                    res.statuscode = 1;
                    res.Msg = "Exam grade delete successfully";
                }
                else
                {
                    res.statuscode = -1;
                    res.Msg = "failed";
                }
            }
            catch (Exception)
            {

                throw;
            }
            return res;
        }
        public DetailsForResult GetDetailsForResult(SearchDetailsForResult req)
        {
            var response = new DetailsForResult();
            response.StudentDetais = new List<StudentDetaisForResult>();
            string sp = "Proc_GetDetailsforResult";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ExamId",req.ExamId),
                new SqlParameter("@Program",req.Program),
                new SqlParameter("@Branch",req.Branch),
                new SqlParameter("@Year",req.Year),
            };
            try
            {
                var ds = _helper.ExcProc_Dataset(sp, param);
                var dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new StudentDetaisForResult
                        {
                            Id = Convert.ToInt32(dr["Id"]),
                            EnrollmentNo = Convert.ToString(dr["EnrollemntNo"]),
                            Program = Convert.ToString(dr["Program"]),
                            Branch = Convert.ToString(dr["Branch"]),
                            Year = Convert.ToString(dr["Year"]),
                            SubjName = Convert.ToString(dr["SubjectName"]),
                            ExamId = Convert.ToInt32(dr["ExamID"]),
                        };
                        response.StudentDetais.Add(data);
                    }
                }
            }
            catch (Exception ex)
            {
               
            }
            return response;
        }
        public ResponseStatus SaveExamMarks(ExamMarks request)
        {
            var response = new ResponseStatus();
            string Procname = "Proc_StudentmarksEntry";
            SqlParameter[] prams = new SqlParameter[]
            {
                new SqlParameter("@Program",request.Program),
                new SqlParameter("@Branch",request.Branch),
                new SqlParameter("@Year",request.Year),
                new SqlParameter("@EnrollmentNo",request.EnrollmentNo),
                new SqlParameter("@SubjectId",request.SubjectId),
                new SqlParameter("@IsAttendance",request.IsAttendance),
                new SqlParameter("@Marks",request.Marks),
                new SqlParameter("@Note",request.Note),
                new SqlParameter("@ExamId",request.ExamID),
                new SqlParameter("@IsPrectical",request.IsPrectical),
                new SqlParameter("@IsWritten",request.IsWritten),
                new SqlParameter("@Id",request.Id)
            };
            var dt = _helper.ExcProc(Procname, prams);
            if(dt.Rows.Count > 0)
            {
                response.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                response.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
            }
            return response;
        }
        public DetailsForResult GetExamResult(SearchDetailsForResult req)
        {
            var res = new DetailsForResult();
            res.StudentDetais = new List<StudentDetaisForResult>();
            res.Precticals = new List<StudentDetaisForResult>();
            string sp = @"Proc_StudentResult";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ExamId",req.ExamId),
                new SqlParameter("@ProgramId",req.Program),
                new SqlParameter("@BranchId",req.Branch),
                new SqlParameter("@year",req.Year),
                new SqlParameter("@Enrollment",req.Enrollment)
            };
            try
            {
                var ds = _helper.ExcProc_Dataset(sp, param);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        var data = new StudentDetaisForResult
                        {
                            Exam = Convert.ToString(item["Exam"]),
                            Name = Convert.ToString(item["Name"]),
                            EnrollmentNo = Convert.ToString(item["EntrollmentNo"]),
                            Subjectname = Convert.ToString(item["Subjectname"]),
                            MinMarks = Convert.ToInt32(item["MinMarks"]),
                            MaxMarks = Convert.ToInt32(item["MaxMarks"]),
                            ObtainedMarks = Convert.ToString(item["ObtainedMarks"]),
                            Grade = Convert.ToString(item["Grade"]),
                            Status = Convert.ToString(item["Status"]),
                            Address = Convert.ToString(item["Address"]),
                            Fathername = Convert.ToString(item["Fname"]),
                            Mobile = Convert.ToString(item["Mobile"]),
                            Program = Convert.ToString(item["Program"]),
                            Branch = Convert.ToString(item["Branch_Name"]),
                        };
                        res.StudentDetais.Add(data);
                    }
                }
                if (ds.Tables[1].Rows.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[1].Rows)
                    {
                        var data = new StudentDetaisForResult
                        {
                            Exam = Convert.ToString(item["Exam"]),
                            Name = Convert.ToString(item["Name"]),
                            EnrollmentNo = Convert.ToString(item["EntrollmentNo"]),
                            Subjectname = Convert.ToString(item["Subjectname"]),
                            MinMarks = Convert.ToInt32(item["MinMarks"]),
                            MaxMarks = Convert.ToInt32(item["MaxMarks"]),
                            ObtainedMarks = Convert.ToString(item["ObtainedMarks"]),
                            Grade = Convert.ToString(item["Grade"]),
                            Status = Convert.ToString(item["Status"]),
                            Address = Convert.ToString(item["Address"]),
                            Fathername = Convert.ToString(item["Fname"]),
                            Mobile = Convert.ToString(item["Mobile"]),
                            Program = Convert.ToString(item["Program"]),
                            Branch = Convert.ToString(item["Branch_Name"]),
                        };
                        res.Precticals.Add(data);
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return res;
        }
    }
}
