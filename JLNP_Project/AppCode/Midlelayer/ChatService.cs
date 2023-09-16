using CollageERP.AppCode.Helper;
using CollageERP.AppCode.Interface;
using CollageERP.Models;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace CollageERP.AppCode.Midlelayer
{
    public class ChatService: IChatService
    {
        private readonly IDBHelper _helper;
        public ChatService(IDBHelper helper)
        {
            _helper = helper;
        }
        public async Task<List<GetChats>> GetChats(int userid)
        {
            var list = new List<GetChats>();
            SqlParameter[] param = new SqlParameter[] {
                new SqlParameter("@Loginid",userid),
            };
            var dt = _helper.ExcProc("Proc_GetConversation", param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        list.Add(new GetChats
                        {
                            ReciverName = Convert.ToString(row["ReciverName"] is DBNull ? string.Empty : row["ReciverName"]),
                            SenderName = Convert.ToString(row["SenderName"] is DBNull ? string.Empty : row["SenderName"]),
                            Pic = Convert.ToString(row["Pic"] is DBNull ? string.Empty : row["Pic"]),
                            Message = Convert.ToString(row["Message"] is DBNull ? string.Empty : row["Message"]),
                            EntryOn = Convert.ToString(row["EntryOn"] is DBNull ? string.Empty : row["EntryOn"]),
                            SenderId = Convert.ToInt32(row["SenderId"] is DBNull ? 0 : row["SenderId"]),
                            ReceiverId = Convert.ToInt32(row["ReciverId"] is DBNull ? 0 : row["ReciverId"]),
                            IsSend = Convert.ToBoolean(row["IsSend"] is DBNull ? false : row["IsSend"]),
                            IsReceive = Convert.ToBoolean(row["IsReceive"] is DBNull ? false : row["IsReceive"]),
                        });
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return list;
        }
        public async Task<ResponseStatus> SendMessage(Chats chats)
        {
            var response = new ResponseStatus();
            SqlParameter[] param = new SqlParameter[] {
                new SqlParameter("@SenderId",chats.SenderId),
                new SqlParameter("@ReciverId",chats.ReceiverId),
                new SqlParameter("@Message",chats.Message),
            };
            var dt = _helper.ExcProc("Proc_Conversation", param);
            try
            {
                if(dt.Rows.Count > 0)
                {
                    response.statuscode = Convert.ToInt32(dt.Rows[0][0]);
                    response.Msg = Convert.ToString(dt.Rows[0]["Msg"]);
                }
            }
            catch (Exception)
            {

                throw;
            }
            return response;
        }
    }
}
