namespace JLNP_Project.Models
{
    public class Branch
    {
        public int BranchId { get; set; }
        public string BranchName { get; set; }
        public string BranchCode { get; set; }
        public int TotalSheets { get; set; }
        public int AvailableSheets { get; set; }
        public int TotalLetaralSheets { get; set; }
        public int AvailableLetaralSheets { get; set; }
        public bool IsCounseling { get; set; }
        public string Action { get; set; }
        public string EntryDate { get; set; }
    }
}
