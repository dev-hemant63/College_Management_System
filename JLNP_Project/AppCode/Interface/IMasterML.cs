using JLNP_Project.Models;

namespace JLNP_Project.AppCode.Interface
{
    public interface IMasterML
    {
        ResponseStatus SaveAndUpdateVideoUrl(CommanMasterReq commanMasterReq);
        List<CommanMasterResponse> GetVideoUrl(int Id);
        ResponseStatus SaveAndUpdateProgram(ProgramMaster programMaster);
        List<ProgramMaster> GetProgram();
        ProgramMaster EditProgram(int Id);
        ResponseStatus DeleteProgram(int Id);
    }
}
