namespace CollageERP.AppCode.Interface
{
    public interface IChatHub
    {
        Task SendMessage(string user, string message);
    }
}
