namespace JLNP_Project.AppCode.Helper
{
    public static class AppConsts
    {
        public const string defaultRoutePrefix= "api/[controller]";
        public const string AppSession= "ApplicationSession";
        public const string AppCookies= "ApplicationCookies";
        public const int SessionTime= 30; // Time In Minutes
    }
    public static class RequestMode
    {
        public const int Web = 1;
        public const int App = 2;
    }
}
