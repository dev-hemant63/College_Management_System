namespace JLNP_Project.Models
{
    public class ExamModel
    {
        public int Id { get; set; }
        public int ExamType { get; set; }
        public string ExamTypeName { get; set; }
        public string GradeName { get; set; }
        public int PrecentUpto { get; set; }
        public int PrecentFrom { get; set; }
        public int GradePoint { get; set; }
        public string Discreption { get; set; }
        public string Entrydate { get; set; }
    }
}
