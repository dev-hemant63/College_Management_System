namespace JLNP_Project.AppCode.Helper
{
    public static class AppConsts
    {
        public const string defaultRoutePrefix= "api/[controller]";
        public const string AppSession= "ApplicationSession";
        public const string AppCookies= "ApplicationCookies";
        public const string AppToken= "Token";
        public const int SessionTime= 60; // Time In Minutes
    }
    public static class RequestMode
    {
        public const int Web = 1;
        public const int Post = 3;
        public const int App = 2;
    }
    public static class EmailTemplate
    {
        public static string AccountDetails = @"Hi {Name},
                Dear {Post} your account details is
                UserId : {UserId},
                Password : {Pass}
                
                Best Regards:{Collage}";
    }
    public static class ThemeId
    {
        public const int ThemeOne = 1;
        public const int ThemeTwo = 2;
    }
}
