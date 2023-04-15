namespace JLNP_Project.Models
{
    public class Examination
    {
    }
    public class ExamType
    {
        public int Id { get; set; }
        public string ExamTypes { get; set; }
        public string Entrydate { get; set; }
    }
    public class ExamGroupe
    {
        public int Id { get; set; }
        public string ExamGroupes { get; set; }
        public int ExamType { get; set; }
        public string ExamTypeName { get; set; }
        public List<ExamType> ExamTypes { get; set; }
        public string Entrydate { get; set; }
        public string Description { get; set; }
        public int UserID { get; set; }
    }
}
