using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.DL;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.Midlelayer
{
    public class StudentML : IStudent
    {
        DBHelper dbhelper = new DBHelper();
        public ResponseStatus SaveStudentFine(StudentFineMdl studentFineMdl)
        {
            Proc_StudentFine psf = new Proc_StudentFine();
            var res = psf.Proc_SaveStudentFine(studentFineMdl);
            return res;
        }
        public List<StudentFineMdl> GetStudentFines(string Action)
        {
            Proc_StudentFine psf = new Proc_StudentFine();
            var res = psf.Proc_GetStudentFine(Action);
            return res;
        }
        public StudentFineMdl GetStudentById(string Action, int Id)
        {
            Proc_StudentFine psf = new Proc_StudentFine();
            var res = psf.Proc_GetStudentFineById(Action, Id);
            return res;
        }
        public ResponseStatus DeleteStudentFine(string Action, int FineId)
        {
            Proc_StudentFine psf = new Proc_StudentFine();
            Action = "Delete";
            var res = psf.Proc_DeleteStudentFine(Action, FineId);
            return res;
        }
        public ResponseStatus UpdateFineStatus(int Status, int FineId)
        {
            Proc_StudentFine psf = new Proc_StudentFine();
            var res = psf.Proc_UpdateFineStatus(Status, FineId);
            return res;
        }
        public StudentInfo GetStudentDetails(int UserID)
        {
            Proc_StudentFine psf = new Proc_StudentFine();
            var res = psf.Proc_GetStudentDetails(UserID);
            return res;
        }
        public ResponseStatus SaveNotifications(NotificationMaster model)
        {
            Proc_Notifications proc = new Proc_Notifications();
            var response = proc.SaveNotification(model);
            return response;
        }
        public List<NotificationMaster> GetNotifications(NotificationMaster model)
        {
            Proc_Notifications proc = new Proc_Notifications();
            var response = proc.GetNotification(model);
            return response;
        }
        public ResponseStatus DeleteNotifications(NotificationMaster model)
        {
            Proc_Notifications proc = new Proc_Notifications();
            var response = proc.DeleteNotification(model);
            return response;
        }
        public List<NotificationMaster> GetStudentNotifications(int UserID)
        {
            Proc_Notifications proc = new Proc_Notifications();
            var response = proc.GetStudentNotification(UserID);
            return response;
        }
        public NotificationMaster GetStudentInfo(int UserID)
        {
            Proc_Notifications proc = new Proc_Notifications();
            var response = proc.GetStudentInfo(UserID);
            return response;
        }
        public ResponseStatus UploadSyllabus(SyllabusMaster req)
        {
            Proc_Syllabus proc = new Proc_Syllabus();
            var res = proc.UploadSyllabus(req);
            return res;
        }
        public List<SyllabusMasterRespons> GetSyllabusMaster(int ID = 0, string Path = "", int BranchID = 0)
        {
            Proc_Syllabus proc = new Proc_Syllabus();
            var res = proc.GetSyllabus(ID, Path, BranchID);
            return res;
        }
        public SyllabusMaster DeleteSyllabus(int ID)
        {
            Proc_Syllabus proc = new Proc_Syllabus();
            var res = proc.DeleteSyllabus(ID);
            return res;
        }
        public SyllabusMaster GetSyllabusByID(int ID)
        {
            Proc_Syllabus proc = new Proc_Syllabus();
            var res = proc.GetSyllabusByID(ID);
            return res;
        }
        public List<Branch> BindBranch()
        {
            Branch_BAL BrBal = new Branch_BAL();
            string Action = "Get";
            var BranchList = new List<Branch>();
            var dt = BrBal.GetBranch_BAL(Action);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    Branch Bmodel = new Branch
                    {
                        BranchId = Convert.ToInt32(row["BranchId"]),
                        BranchName = Convert.ToString(row["Branch_Name"].ToString()),
                        BranchCode = Convert.ToString(row["Branch_Code"].ToString()),
                        EntryDate = Convert.ToString(row["EntryDate"].ToString())
                    };
                    BranchList.Add(Bmodel);
                }
            }
            return BranchList;
        }
        public ResponseStatus UpdateSyllabus(SyllabusMaster req)
        {
            Proc_Syllabus proc = new Proc_Syllabus();
            var res = proc.UpdateSyllabus(req);
            return res;
        }
        public List<StudentSyllabus> GetStudentSyllabus(int LoginID)
        {
            Proc_Syllabus proc = new Proc_Syllabus();
            var res = proc.GetStudentSyllabus(LoginID);
            return res;
        }
        public List<AssignmentModel> GetStudentAssignment(int LoginID)
        {
            Proc_StudentAssignment proc = new Proc_StudentAssignment();
            var res = proc.Proc_GetStudentAssignment(LoginID);
            return res;
        }
    }
}
