using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Admission_BAL
    {
        public DataTable StudentAdmission(AdmissionModel admissionModel)
        {
            Admission_DAL AdDal = new Admission_DAL();
            var dt = AdDal.Student_Admission(admissionModel);
            return dt;
        }
        public AdmissionModel StudentAdmissionDetailse(long RegistrationNo)
        {
            Admission_DAL AdDal = new Admission_DAL();
            var dt = AdDal.Student_AdmissionDetails(RegistrationNo);
            return dt;
        }
        public List<AdmissionModel> GetStudentBranchWise_BAl(AdmissionModel admissionModel)
        {
            var lst = new List<AdmissionModel>();
            Admission_DAL AdDal = new Admission_DAL();
            var dt = AdDal.GetStudentBranchWise_DAl(admissionModel);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    AdmissionModel stdlist = new AdmissionModel
                    {
                        Id=Convert.ToInt32(dr["Id"]),
                        Name = Convert.ToString(dr["Name"].ToString()),
                        Fname = Convert.ToString(dr["Fname"].ToString()),
                        Branch = Convert.ToString(dr["Branch"].ToString()),
                        Gender = Convert.ToString(dr["Gender"].ToString()),
                        Group = Convert.ToString(dr["Group_Name"].ToString()),
                        RgistrationNo = Convert.ToString(dr["EntrollmentNo"].ToString()),
                        Year = Convert.ToString(dr["_Year"].ToString())
                    };
                    lst.Add(stdlist);
                }
            }
            return lst;
        }
        public object UpdateStatus_Bal(AdmissionModel admissionModel)
        {
            Admission_DAL AdDal = new Admission_DAL();
            var res = AdDal.UpdateStatus(admissionModel);
            return res;
        }
    }
}
