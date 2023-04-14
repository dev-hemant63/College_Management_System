using JLNP_Project.Models;

namespace JLNP_Project.AppCode.Interface
{
    public interface IExamination
    {
        List<ExamType> GetExamType(int id);
        ResponseStatus SaveExamType(ExamType req);
        ResponseStatus SaveExamGroup(ExamGroupe req);
        ResponseStatus DeleteExamType(int id);
        List<ExamGroupe> GetExamGroup(int id);
        ResponseStatus DeleteExamGroup(int id);
    }
}
