using CollageERP.AppCode.Interface;
using CollageERP.Models;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Microsoft.AspNetCore.SignalR;
using CollageERP.AppCode.Midlelayer;

namespace CollageERP.Controllers
{
    public class ChatController : Controller
    {
        private readonly IChatService _chatService;
        private readonly IHttpContextAccessor _accessor;
        private readonly LoginInfo _lr;
        private readonly IHubContext<ChatHub> _hub;
        public ChatController(IChatService chatService, IHttpContextAccessor accessor, IHubContext<ChatHub> hub)
        {
            _chatService = chatService;
            _accessor = accessor;
            if (_accessor.HttpContext.Session.GetString(AppConsts.AppSession) != null)
            {
                _lr = JsonConvert.DeserializeObject<LoginInfo>(_accessor.HttpContext.Session.GetString(AppConsts.AppSession));
            }
            else
            {
                RedirectToAction("SessionExpired", "Home");
            }
            _hub = hub;
        }
        [HttpPost]
        public async Task<IActionResult> GetChats(int userId = 0)
        {
            var res = new ChatVM
            {
                Chats = new List<GetChats>(),
                UserId = userId,
            };
            res.Chats = await _chatService.GetChats(new GetChatsRequest
            {
                LoginId = _lr.UserId,
                UserId = userId
            });
            return PartialView(res);
        }
        [HttpPost]
        public async Task<IActionResult> SendMessage(Chats chats)
        {
            chats.SenderId = _lr.UserId;
            var response = await _chatService.SendMessage(chats);
            if(_lr.UserId == chats.SenderId || _lr.UserId == chats.ReceiverId)
            {
                var chatlist = await _chatService.GetChats(new GetChatsRequest
                {
                    LoginId = _lr.UserId,
                    UserId = chats.ReceiverId
                });
                chatlist = chatlist.Where(x => x.Id == response.LoginTypeId).ToList();
                _hub.Clients.All.SendAsync("ReceiveMessage", JsonConvert.SerializeObject(new { UserId = _lr.UserId }), JsonConvert.SerializeObject(chatlist));
            }
            return Json(response);
        }
        [HttpPost]
        public async Task<IActionResult> GetUserForChat()
        {
            var list = await _chatService.GetUserForChat(_lr.UserId);
            return PartialView(list);
        }
    }
}
