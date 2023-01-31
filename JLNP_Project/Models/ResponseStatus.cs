namespace JLNP_Project.Models
{
    public class ResponseStatus:LoginInfo
    {
        public string Msg { get; set; }
        public int statuscode { get; set; }
        public string UserName { get; set; }
        public int LoginTypeId { get; set; }
        public string RegistrationNo { get; set; }
        public string FeesReceiptNo { get; set; }
    }
}
