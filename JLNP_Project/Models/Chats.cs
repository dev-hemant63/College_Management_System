namespace CollageERP.Models
{
    public class Chats
    {
        public int SenderId { get; set; }
        public int ReceiverId { get; set; }
        public string Message { get; set; }
    }
    public class GetChats: Chats
    {
        public int Id { get; set; }
        public string SenderName { get; set; }
        public string ReciverName { get; set; }
        public string Pic { get; set; }
        public string EntryOn { get; set; }
        public bool IsSend { get; set; }
        public bool IsReceive { get; set; }
    }
    public class ChatVM
    {
        public List<GetChats> Chats { get; set; }
        public int UserId { get; set; }
    }
    public class GetChatsRequest
    {
        public int UserId { get; set; }
        public int LoginId { get; set; }
    }
}
