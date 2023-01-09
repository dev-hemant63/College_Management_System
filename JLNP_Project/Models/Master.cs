namespace JLNP_Project.Models
{
    public class Master
    {
    }
    public class ProgramMaster:LoginInfo
    {
        public int Id { get; set; }
        public string Program { get; set; }
        public string ProgramType { get; set; }
        public string ProgramDuration { get; set; }
        public string EntryDate { get; set; }
    }
}
