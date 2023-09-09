using JLNP_Project.Models;

namespace CollageERP.AppCode.Interface
{
    public interface IAdmissionService
    {
        AdmissionModel GetAdmissionDetails(string AdmissionNo);
    }
}
