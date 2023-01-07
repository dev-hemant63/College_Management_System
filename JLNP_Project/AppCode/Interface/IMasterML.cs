using JLNP_Project.Models;

namespace JLNP_Project.AppCode.Interface
{
    public interface IMasterML
    {
        ResponseStatus SaveAndUpdateVideoUrl(CommanMasterReq commanMasterReq);
    }
}
