using System.Security.Cryptography;
using System.Text;

namespace JLNP_Project.AppCode.AppUtilty
{
    public static class Encreption
    {
        public static string EncryptionKey { get; set; }
        public static string EncryptStringAES(string plainText)
        {
            byte[] iv = new byte[16];
            using Aes aes = Aes.Create();
            aes.Key = Encoding.UTF8.GetBytes(EncryptionKey);
            aes.IV = iv;
            using MemoryStream memoryStream = new MemoryStream();
            using ICryptoTransform encryptor = aes.CreateEncryptor();
            using CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            using StreamWriter streamWriter = new StreamWriter(cryptoStream);
            streamWriter.Write(plainText);
            streamWriter.Flush();
            cryptoStream.FlushFinalBlock();
            byte[] buffer = memoryStream.ToArray();
            return Convert.ToBase64String(buffer);
        }
        public static string DecryptStringAES(string cipherText)
        {
            byte[] iv = new byte[16];
            byte[] buffer = Convert.FromBase64String(cipherText);
            using Aes aes = Aes.Create();
            aes.Key = Encoding.UTF8.GetBytes(EncryptionKey);
            aes.IV = iv;
            using MemoryStream memoryStream = new MemoryStream(buffer);
            using ICryptoTransform decryptor = aes.CreateDecryptor();
            using CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);
            using StreamReader streamReader = new StreamReader(cryptoStream);
            return streamReader.ReadToEnd();
        }
    }
}
