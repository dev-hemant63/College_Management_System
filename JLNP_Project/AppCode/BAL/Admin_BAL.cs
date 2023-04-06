﻿using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Admin_BAL
    {
        public SubjectMaster DashboardSummary_Bal()
        {
            string Action = "Get";
            AdminDAL adDAL = new AdminDAL();
            var res = adDAL.DashboardSummary(Action);
            return res;
        }
        public List<SubjectMaster> BindSubject_Bal(int SubjectId)
        {
            AdminDAL addal = new AdminDAL();
            var subjectlist = addal.BindSubject_Dal(SubjectId);
            return subjectlist;
        }
        public List<SubjectMaster> Bind_Subject_Bal(int Program,int BranchId, int Year)
        {
            AdminDAL addal = new AdminDAL();
            var sublst = addal.BindSubjectYearWise(Program,BranchId, Year);
            return sublst;
        }
        public List<SubjectMaster> Bind_Subjects_Bal()
        {
            AdminDAL addal = new AdminDAL();
            int SubjectId = 0;
            var sublst = addal.BindSubject_Dal(SubjectId);
            return sublst;
        }
        public List<SubjectMaster> Bind_Teacher_Bal()
        {
            AdminDAL addal = new AdminDAL();
            var sublst = addal.Bind_Teacher();
            return sublst;
        }
        public object SaveAssignSubject_Bal(SubjectMaster obj)
        {
            AdminDAL addal = new AdminDAL();
            obj.Action = "Add";
            var sublst = addal.SaveAssignSubject(obj);
            return sublst;
        }
        public List<SubjectMaster> Assignsubject_List_bal()
        {
            AdminDAL addal = new AdminDAL();
            string Action = "Get";
            var sublst = addal.Assignsubject_List(Action);
            return sublst;
        }
        public SubjectMaster Edit_Assignsubject_bal(int Id)
        {
            AdminDAL addal = new AdminDAL();
            string Action = "GetById";
            var sublst = addal.Assignsubject_List_byId(Action, Id);
            return sublst;
        }
        public object Assignsubject_Edit(int Id)
        {
            AdminDAL addal = new AdminDAL();
            string Action = "Delete";
            var sublst = addal.Assignsubject_Edit(Action, Id);
            return sublst;
        }
        public object SaveAssignment_Bal(SubjectMaster subjectMaster)
        {
            AdminDAL addal = new AdminDAL();
            var sublst = addal.Assignment_Dal(subjectMaster);
            return sublst;
        }
        public List<SubjectMaster> GetAssignment_Bal()
        {
            AdminDAL addal = new AdminDAL();
            SubjectMaster subjectMaster = new SubjectMaster();
            subjectMaster.Action = "Get";
            var sublst = addal.GetAssignment_Dal(subjectMaster);
            return sublst;
        }
        public SubjectMaster GetByIdAssignment_Bal(SubjectMaster subjectMaster)
        {
            AdminDAL addal = new AdminDAL();
            var sublst = addal.GetByidAssignment_Dal(subjectMaster);
            return sublst;
        }
        public object DeleteAssignment(int Id)
        {
            AdminDAL addal = new AdminDAL();
            string Action = "Delete";
            var sublst = addal.DeleteAssign_Dal(Action, Id);
            return sublst;
        }
        public List<SubjectMaster> GetUser_Bal(int UserID ,string UserName,string Mobile)
        {
            AdminDAL addal = new AdminDAL();
            var sublst = addal.GetUser_Dal(UserID, UserName, Mobile);
            return sublst;
        }
        public ResponseStatus UpdateUserStatus(int UserID, bool IsActive)
        {
            AdminDAL addal = new AdminDAL();
            var res = addal.UpdateUserStatus(UserID, IsActive);
            return res;
        }
        public ResponseStatus SaveTimeTable(List<TimeTable> req)
        {
            AdminDAL addal = new AdminDAL();
            var res = new ResponseStatus();
            foreach (var item in req)
            {
                res = addal.SaveTimeTable(new TimeTable
                {
                    ID = item.ID,
                    Program = item.Program,
                    Branch = item.Branch,
                    Year = item.Year,
                    Subject = item.Subject,
                    Teacher = item.Teacher,
                    TimeFrom = item.TimeFrom,
                    TimeTo = item.TimeTo,
                    RoomNo = item.RoomNo,
                    Day = item.Day.Replace("tbl",""),
                });
            }
            return res;
        }
        public ResponseStatus DeleteTimeTable(int ID)
        {
            AdminDAL addal = new AdminDAL();
            var res = addal.DeleteTimeTable(ID);
            return res;
        }
        public List<TimeTable> GetTimeTable(int Program, int BranchId, int Year,string Day)
        {
            AdminDAL addal = new AdminDAL();
            var res = addal.GetTimeTable(Program, BranchId, Year, Day);
            return res;
        }
        public TimeTableReportViewModel GetTimeTableReport(int Program, int BranchId, int Year)
        {
            AdminDAL addal = new AdminDAL();
            var res = addal.GetTimeTableReport(Program, BranchId, Year);
            return res;
        }
    }
}
