using CollageERP.Models;
using CollageERP.PaymentQR;
using Microsoft.AspNetCore.Mvc;

namespace CollageERP.Controllers
{
    public class PaymentController : Controller
    {
        private readonly IQrCodeService _qrCodeService;
        public PaymentController(IQrCodeService qrCodeService)
        {
            _qrCodeService = qrCodeService;
        }
        public IActionResult GetQR(decimal amount = 1.0m)
        {
            return View(new UpiPaymentInfo { Vpa = AccountDetails.VPA ?? "amarnag702@icici", Amount = amount });
        }
        public IActionResult GenerateUpiPaymentQrCode(string vpa, decimal amount)
        {
            UpiPaymentInfo paymentInfo = new UpiPaymentInfo
            {
                Vpa = vpa,
                Amount = amount
            };

            byte[] qrCodeBytes = _qrCodeService.GenerateUpiPaymentQrCode(paymentInfo);
            return File(qrCodeBytes, "image/png");
        }
    }
}
