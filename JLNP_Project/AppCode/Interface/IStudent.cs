using JLNP_Project.Models;

namespace JLNP_Project.AppCode.Interface
{
    public interface IStudent
    {
        ResponseStatus SaveStudentFine(StudentFineMdl studentFineMdl);
        List<StudentFineMdl> GetStudentFines(string Action);
        StudentFineMdl GetStudentById(string Action,int Id);
        ResponseStatus DeleteStudentFine (string Action,int FineId);
        ResponseStatus UpdateFineStatus(int Status, int FineId);
        StudentInfo GetStudentDetails(int UserID);
        ResponseStatus SaveNotifications(NotificationMaster model);
        List<NotificationMaster> GetNotifications(NotificationMaster model);
        ResponseStatus DeleteNotifications(NotificationMaster model);
        List<NotificationMaster> GetStudentNotifications(int UserID);
        NotificationMaster GetStudentInfo(int UserID);
        ResponseStatus UploadSyllabus(SyllabusMaster req);
        List<SyllabusMasterRespons> GetSyllabusMaster(int ID = 0, string Path = "",int BranchID=0);
        SyllabusMaster DeleteSyllabus(int ID);
        SyllabusMaster GetSyllabusByID(int ID);
        ResponseStatus UpdateSyllabus(SyllabusMaster req);
        List<StudentSyllabus> GetStudentSyllabus(int LoginID);
        List<AssignmentModel> GetStudentAssignment(int LoginID);
        List<CommanMasterResponse> GetStudentVideolectures(int LoginID);
    }
}
