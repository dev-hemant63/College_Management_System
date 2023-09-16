﻿using CollageERP.AppCode.Interface;
using Microsoft.AspNetCore.SignalR;

namespace CollageERP.AppCode.Midlelayer
{
    public class ChatHub: Hub, IChatHub
    {
        public async Task SendMessage(string user, string message)
        {
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }
    }
}
