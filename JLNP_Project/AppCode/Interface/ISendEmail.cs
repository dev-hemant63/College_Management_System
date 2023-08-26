using JLNP_Project.Models;
namespace JLNP_Project.AppCode.Interface
{
    public interface ISendEmail
    {
        ResponseStatus SendMail(string EmailAddress, string title, string Msg);
    }
}
