using CollageERP.Models;
using Microsoft.AspNetCore.WebUtilities;
using Newtonsoft.Json;
using QRCoder;
using System.Drawing;
using System.Text;

namespace CollageERP.PaymentQR
{
    public class QrCodeService: IQrCodeService
    {
        public byte[] GenerateUpiPaymentQrCode(UpiPaymentInfo paymentInfo)
        {
            string jsonString = JsonConvert.SerializeObject(paymentInfo);
            string encodedJsonString = WebEncoders.Base64UrlEncode(Encoding.UTF8.GetBytes(jsonString));

            string upiUrl = $"upi://pay?pa={paymentInfo.Vpa}&pn=Hemant&mc=1234&tid={DateTime.Now.ToString("ddMMyyyyhhmmss")}&tr={Guid.NewGuid()}&tn=Payment%20Description&am={paymentInfo.Amount}&cu=INR&url=https://google.com";

            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(upiUrl, QRCodeGenerator.ECCLevel.Q);
            PngByteQRCode qrCode = new PngByteQRCode(qrCodeData);
            var qrCodeBytes = qrCode.GetGraphic(20);

            using (MemoryStream ms = new MemoryStream(qrCodeBytes))
            {
                using (Bitmap qrCodeImage = new Bitmap(Image.FromStream(ms)))
                {
                    using (MemoryStream ms2 = new MemoryStream())
                    {
                        qrCodeImage.Save(ms2, System.Drawing.Imaging.ImageFormat.Png);
                        return ms2.ToArray();
                    }
                }
            }
        }
    }
}
