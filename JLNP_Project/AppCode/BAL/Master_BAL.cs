using JLNP_Project.Models;
using JLNP_Project.AppCode.DAL;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Master_BAL
    {
        public ResponseStatus SaveSubject_Bal(SubjectMaster subjectMaster)
        {
            Master_DAL msDal = new Master_DAL();
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            var dt = msDal.SaveSubject_Dal(subjectMaster);
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
            }
            return res;
        }
        public List<SubjectMaster> GetSubject_Bal(SubjectMaster subjectMaster)
        {
            Master_DAL msDal = new Master_DAL();
            var subjectlist = new List<SubjectMaster>();
            var dt = msDal.GetSubject_Dal(subjectMaster);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    SubjectMaster data = new SubjectMaster
                    {
                        Id = Convert.ToInt32(row["Id"] is DBNull ? 0 : row["Id"]),
                        ProgramName = Convert.ToString(row["Program"] is DBNull? "": row["Program"].ToString()),
                        Branch = Convert.ToString(row["Branch"] is DBNull?"":row["Branch"].ToString()),
                        Year = Convert.ToString(row["_Year"] is DBNull?"":row["_Year"].ToString()),
                        SubjectName = Convert.ToString(row["SubjectName"] is DBNull?"": row["SubjectName"].ToString()),
                        SubjectCode = Convert.ToString(row["SubjectCode"] is DBNull ? "": row["SubjectCode"].ToString()),
                        SubjectType = Convert.ToString(row["SubjectType"] is DBNull ? "": row["SubjectType"].ToString()),
                        TheoryMarks = Convert.ToString(row["TheoryMarks"] is DBNull ? "" : row["TheoryMarks"].ToString()),
                        PracticalMarks = Convert.ToString(row["PracticalMarks"] is DBNull ? "" : row["PracticalMarks"].ToString()),
                        PracticalPassingMarks = Convert.ToInt32(row["PrecticalPassingMarks"] is DBNull ? 0 : row["PrecticalPassingMarks"]),
                        PassingMarks = Convert.ToString(row["PassingMarks"] is DBNull ? "": row["PassingMarks"].ToString()),
                        IsPrectical = Convert.ToBoolean(row["IsPrectical"] is DBNull ? false : row["IsPrectical"]),
                        IsWritten = Convert.ToBoolean(row["Iswritten"] is DBNull ? false : row["Iswritten"]),
                        EntryDate = Convert.ToString(row["EntryDate"] is DBNull? "" : row["EntryDate"].ToString())
                    };
                    subjectlist.Add(data);
                }
            }
            return subjectlist;
        }
        public SubjectMaster GetSubject_Bal_ById(SubjectMaster subjectMaster)
        {
            Master_DAL msDal = new Master_DAL();
            var subjects = new SubjectMaster();
            var dt = msDal.GetSubject_Dal_ById(subjectMaster);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    subjects.Id = Convert.ToInt32(row["Id"]);
                    subjects.Branch = Convert.ToString(row["BranchId"].ToString());
                    subjects.Program = Convert.ToInt32(row["Program"].ToString());
                    subjects.Year = Convert.ToString(row["_Year"].ToString());
                    subjects.SubjectName = Convert.ToString(row["SubjectName"].ToString());
                    subjects.SubjectCode = Convert.ToString(row["SubjectCode"].ToString());
                    subjects.SubjectType = Convert.ToString(row["SubjectType"].ToString());
                    subjects.TheoryMarks = Convert.ToString(row["TheoryMarks"].ToString());
                    subjects.IsPrectical = Convert.ToBoolean(row["IsPrectical"]);
                    subjects.PassingMarks = Convert.ToString(row["PassingMarks"].ToString());
                    subjects.EntryDate = Convert.ToString(row["EntryDate"].ToString());
                    subjects.PracticalMarks = Convert.ToString(row["PracticalMarks"].ToString());
                    subjects.PracticalPassingMarks = Convert.ToInt32(row["PrecticalPassingMarks"]);
                }
            }
            return subjects;
        }
        public ResponseStatus EditSubjectMaster_Bal(SubjectMaster subjectMaster)
        {
            Master_DAL msDal = new Master_DAL();
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            var dt = msDal.SaveSubject_Dal(subjectMaster);
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
            }
            return res;

        }
        public ResponseStatus DeleteSubject_Bal(int Id, string Action)
        {
            Master_DAL msDal = new Master_DAL();
            ResponseStatus res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error"
            };
            var dt = msDal.DeleteSubject_Dal(Id, Action);
            if (dt.Rows.Count > 0)
            {
                res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                res.statuscode = Convert.ToInt32(dt.Rows[0]["statuscode"]);
            }
            return res;
        }
    }
}
