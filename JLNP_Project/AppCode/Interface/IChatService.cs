using CollageERP.Models;
using JLNP_Project.Models;

namespace CollageERP.AppCode.Interface
{
    public interface IChatService
    {
        Task<List<GetChats>> GetChats(GetChatsRequest request);
        Task<ResponseStatus> SendMessage(Chats chats);
        Task<List<LoginInfo>> GetUserForChat(int loginId);
    }
}
