namespace JLNP_Project.Models
{
    public class LoginInfo:StudentInfo
    {
        public int UserId { get; set; }
        public int RoleId { get; set; }
        public int LoginTypeId { get; set; }
        public int OTP { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public string password { get; set; }
        public string SessionExpireTime { get; set; }
    }
}
