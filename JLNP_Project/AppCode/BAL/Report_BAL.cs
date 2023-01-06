using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Report_BAL
    {
        public DataTable GetAdmissionReport(AdmissionModel admissionModel)
        {
            Report_DAL AdDal = new Report_DAL();
            var dt = AdDal.GetAdmissionReport(admissionModel);
            return dt;
        }
        public object SaveProjectReport_Bal(ProjectReport projectReport)
        {
            Report_DAL AdDal = new Report_DAL();
            var res = AdDal.SaveProjectReport(projectReport);
            return res;
        }
        public List<ProjectReport> GetProjectReport_Bal(string Action)
        {
            Report_DAL AdDal = new Report_DAL();
            var res = AdDal.GetProjectReport_Bal(Action);
            return res;
        }
        public List<AdmissionModel> GetAttandanceReport_Bal()
        {
            Report_DAL AdDal = new Report_DAL();
            var res = AdDal.GetAttandanceReport_Bal();
            return res;
        }
        public List<AdmissionModel> GetFilterAttandanceReport_Bal(int BranchId, int Year, int SubjectId, string Date, string Action)
        {
            Report_DAL AdDal = new Report_DAL();
            Action = "FilterData";
            var res = AdDal.GetFilterAttandanceReport_Bal(BranchId, Year, SubjectId, Date, Action);
            return res;
        }
    }
}
