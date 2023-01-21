namespace JLNP_Project.Models
{
    public class AdmissionModel:SearchModel
    {
        public int Id { get; set; }
        public int IsAttand { get; set; }
        public int IsAbsent { get; set; }
        public int StudentId { get; set; }
        public int SubjectId { get; set; }
        public int BranchId { get; set; }
        public string Name { get; set; }
        public string MotherName { get; set; }
        public string FatherOccupation { get; set; }
        public int Program { get; set; }
        public string ProgramName { get; set; }
        public string SubjectName { get; set; }
        public string Date { get; set; }
        public string Fname { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string DOB { get; set; }
        public string RgistrationNo { get; set; }
        public string EntrolmentNo { get; set; }
        public string Branch { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public string Group { get; set; }
        public string AdmissionDate { get; set; }
        public string FeesStatus { get; set; }
        public string Year { get; set; }
        public string Action { get; set; }
        public string Entrydate { get; set; }
        public string Religion { get; set; }
        public List<AdmissionModel> lst { get; set; }
    }
}
