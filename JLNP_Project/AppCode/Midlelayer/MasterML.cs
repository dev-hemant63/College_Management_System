using JLNP_Project.AppCode.DL;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.Models;

namespace JLNP_Project.AppCode.Midlelayer
{
    public class MasterML : IMasterML
    {
        ProcCommanMaster _proc = new ProcCommanMaster();
        public ResponseStatus SaveAndUpdateVideoUrl(CommanMasterReq commanMasterReq)
        {
            var response = _proc.ProcAddAndUpdateVideoUrl(commanMasterReq);
            return response;
        }
        public List<CommanMasterResponse> GetVideoUrl(int Id = 0)
        {
            var response = _proc.ProcGetVideoUrl(Id);
            return response;
        }
    }
}
