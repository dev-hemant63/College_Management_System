﻿namespace JLNP_Project.Models
{
    public class Account
    {
        public string Name { get; set; }
        public string UserId { get; set; }
        public int LoginTypeId { get; set; }
        public string OldPassword { get; set; }
        public string Password { get; set; }
        public string ReturnUrl { get; set; }
        public int RequestMode { get; set; }
    }
    public class SearchModel
    {
        public string FromDate { get; set; }
        public string ToDate { get; set; }
    }
}
