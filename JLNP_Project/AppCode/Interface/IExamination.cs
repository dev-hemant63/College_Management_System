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
        ResponseStatus AddExam(Exam req);
        List<Exam> GetExam(int id);
        List<SubjectMaster> GetSubject();
        ResponseStatus DeleteExam(int id);
        ResponseStatus AssignExam(AssignExam req);
        ResponseStatus AddExamDetail(ExamDetail req);
        List<ExamDetail> GetExamdetail(int ExamId);
        List<Exam> BindExam(int Groupid);
    }
}
