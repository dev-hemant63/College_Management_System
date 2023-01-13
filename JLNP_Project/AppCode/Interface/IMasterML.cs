using JLNP_Project.Models;

namespace JLNP_Project.AppCode.Interface
{
    public interface IMasterML
    {
        ResponseStatus SaveAndUpdateVideoUrl(CommanMasterReq commanMasterReq);
        List<CommanMasterResponse> GetVideoUrl(int Id);
        CommanMasterReq EditVideoUrl(int Id);
        ResponseStatus DeleteVideoUrl(int Id);
        ResponseStatus SaveAndUpdateProgram(ProgramMaster programMaster);
        List<ProgramMaster> GetProgram();
        ProgramMaster EditProgram(int Id);
        ResponseStatus DeleteProgram(int Id);
        ResponseStatus SaveProgramBranchMapping(ProgramBranchMapping commanMasterReq);
        List<ProgramBranchMapping> GetProgramBranchMapping();
        ProgramBranchMapping EditProgramBranchMapping(int Id);
        ResponseStatus DeleteProgramBranchMapping(int Id);
    }
}
