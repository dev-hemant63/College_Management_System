using CollageERP.Models;
using JLNP_Project.Models;

namespace CollageERP.AppCode.Interface
{
    public interface IChatService
    {
        Task<List<GetChats>> GetChats(int userid);
        Task<ResponseStatus> SendMessage(Chats chats);
    }
}
