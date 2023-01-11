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
        public ResponseStatus SaveAndUpdateProgram(ProgramMaster programMaster)
        {
            var response = _proc.ProcAddAndUpdateProgram(programMaster);
            return response;
        }
        public List<ProgramMaster> GetProgram()
        {
            var response = _proc.ProcGetProgram();
            return response;
        }
        public ProgramMaster EditProgram(int Id)
        {
            var response = _proc.ProcEditProgram(Id);
            return response;
        }
        public ResponseStatus DeleteProgram(int Id)
        {
            var response = _proc.ProcDeleteProgram(Id);
            return response;
        }
        public ResponseStatus SaveProgramBranchMapping(ProgramBranchMapping Req)
        {
            var response = _proc.ProcSaveProgramBranchMapping(Req);
            return response;
        }
        public List<ProgramBranchMapping> GetProgramBranchMapping()
        {
            var response = _proc.ProcGetProgramBranchMapping();
            return response;
        }
        public ProgramBranchMapping EditProgramBranchMapping(int Id)
        {
            var response = _proc.ProcEditProgramBranchMapping(Id);
            return response;
        }
        public ResponseStatus DeleteProgramBranchMapping(int Id)
        {
            var response = _proc.ProcDeleteProgramBranchMapping(Id);
            return response;
        }
    }
}
