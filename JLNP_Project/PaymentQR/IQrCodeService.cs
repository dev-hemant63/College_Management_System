using CollageERP.Models;

namespace CollageERP.PaymentQR
{
    public interface IQrCodeService
    {
        byte[] GenerateUpiPaymentQrCode(UpiPaymentInfo paymentInfo);
    }
}
