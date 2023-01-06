using Microsoft.Extensions.Configuration;
using System.IO;

namespace Core.DAL
{
    public static class ConfigSettings
    {
        public static string conStr { get; }
        static ConfigSettings()
        {
            var configurationBuilder = new ConfigurationBuilder();
            string path = Path.Combine(Directory.GetCurrentDirectory(), "appsettings.Development.json");
            configurationBuilder.AddJsonFile(path, false);
            conStr = configurationBuilder.Build().GetSection("ConnectionStrings:DBCon").Value;
        }
    }
}