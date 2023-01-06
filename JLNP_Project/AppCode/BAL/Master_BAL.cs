﻿using JLNP_Project.Models;
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
                        Id = Convert.ToInt32(row["Id"]),
                        Branch = Convert.ToString(row["Branch"].ToString()),
                        Year = Convert.ToString(row["_Year"].ToString()),
                        SubjectName = Convert.ToString(row["SubjectName"].ToString()),
                        SubjectCode = Convert.ToString(row["SubjectCode"].ToString()),
                        SubjectType = Convert.ToString(row["SubjectType"].ToString()),
                        TheoryMarks = Convert.ToString(row["TheoryMarks"].ToString()),
                        PracticalMarks = Convert.ToString(row["PracticalMarks"].ToString()),
                        EntryDate = Convert.ToString(row["EntryDate"].ToString())
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
                        subjects.Branch = Convert.ToString(row["Branch"].ToString());
                    subjects.Year = Convert.ToString(row["_Year"].ToString());
                    subjects.SubjectName = Convert.ToString(row["SubjectName"].ToString());
                    subjects.SubjectCode = Convert.ToString(row["SubjectCode"].ToString());
                    subjects.SubjectType = Convert.ToString(row["SubjectType"].ToString());
                    subjects.TheoryMarks = Convert.ToString(row["TheoryMarks"].ToString());
                    subjects.PracticalMarks = Convert.ToString(row["PracticalMarks"].ToString());
                    subjects.EntryDate = Convert.ToString(row["EntryDate"].ToString());
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
            var dt = msDal.EditSubjectMaster_Dal(subjectMaster);
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
