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
        public CommanMasterReq EditVideoUrl(int Id)
        {
            var response = _proc.ProcEditVideoUrl(Id);
            return response;
        }
        public ResponseStatus DeleteVideoUrl(int Id)
        {
            var response = _proc.ProcDeleteVideoUrl(Id);
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
        public BatchMasterReqRes GetBatchByID(int Id)
        {
            var response = _proc.ProcGetBatchById(Id);
            return response;
        }
        public ResponseStatus SaveAndUpdateBatch(BatchMasterReqRes req)
        {
            var response = _proc.ProcSaveAndUpdateBatch(req);
            return response;
        }
        public List<BatchMasterReqRes> GetBatch()
        {
            var response = _proc.ProcGetBatch();
            return response;
        }
        public ResponseStatus DeleteBatch(int Id)
        {
            var response = _proc.ProcDeleteBatch(Id);
            return response;
        }
        public List<Branch> BindProgramWiseBranch(int ProgramId)
        {
            var response = _proc.ProcBindProgramWiseBranch(ProgramId);
            return response;
        }
        public List<StudentResult> StudentResultRes(string Enrollment)
        {
            var response = _proc.ProcGetStudentResult(Enrollment);
            return response;
        }
        public RegistrationMaster GetRegistrationMaster()
        {
            var response = _proc.ProcGetGetRegistrationMaster();
            return response;
        }
        public ResponseStatus SaveRegistrationMaster(RegistrationMaster req)
        {
            var response = _proc.ProcsaveRegistrationMaster(req);
            return response;
        }
        public ResponseStatus UpdateRegistrationMaster(RegistrationMaster req)
        {
            var response = _proc.ProcChangeRegistrationMastersts(req);
            return response;
        }
    }
}
