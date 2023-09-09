using CollageERP.Models;
using JLNP_Project.Models;

namespace CollageERP.AppCode.Interface
{
    public interface IUploadImageService
    {
        ResponseStatus Upload(FileUploadModel request);
    }
}
