using JLNP_Project.AppCode.Helper;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DL
{
    public class Proc_Notifications
    {
        DBHelper dbhelper = new DBHelper();
        public ResponseStatus SaveNotification(NotificationMaster model)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string procname = "Proc_Notification";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@ID",model.ID),
                new SqlParameter("@Notificationtitle",model.Notificationtitle),
                new SqlParameter("@NotificationDescription",model.NotificationDescription),
                new SqlParameter("@UserID",model.UserID),
                new SqlParameter("@Action",model.Action)
            };
            var dt = dbhelper.ExcProc(procname, param);
            try
            {
                if (dt.Rows.Count>0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return res;
        }
        public List<NotificationMaster> GetNotification(NotificationMaster model)
        {
            var res = new List<NotificationMaster>();
            string procname = "Proc_Notification";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@ID",model.ID),
                new SqlParameter("@Notificationtitle",model.Notificationtitle),
                new SqlParameter("@NotificationDescription",model.NotificationDescription),
                new SqlParameter("@UserID",model.UserID),
                new SqlParameter("@Action",model.Action)
            };
            var dt = dbhelper.ExcProc(procname, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new NotificationMaster
                        {
                            ID = Convert.ToInt32(dr["ID"]),
                            Notificationtitle = Convert.ToString(dr["Title"].ToString()),
                            NotificationDescription = Convert.ToString(dr["Discreption"].ToString()),
                            EntryDate = Convert.ToString(dr["EntryDate"].ToString()),
                            IsActive = Convert.ToBoolean(dr["IsStaff"]),
                        };
                        res.Add(data);
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return res;
        }
        public ResponseStatus DeleteNotification(NotificationMaster model)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Temp Error!"
            };
            string procname = "Proc_Notification";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@ID",model.ID),
                new SqlParameter("@UserID",model.UserID),
                new SqlParameter("@Action",model.Action),
                new SqlParameter("@IsStaff",model.IsStaff),
            };
            var dt = dbhelper.ExcProc(procname, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return res;
        }
        public List<NotificationMaster> GetStudentNotification(int UserID)
        {
            var res = new List<NotificationMaster>();
            string procname = "Proc_StudentNotification";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@UserID",UserID)
            };
            var dt = dbhelper.ExcProc(procname, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        var data = new NotificationMaster
                        {
                            Notificationtitle = Convert.ToString(dr["Title"].ToString()),
                            NotificationDescription = Convert.ToString(dr["Discreption"].ToString()),
                            EntryDate = Convert.ToString(dr["EntryDate"].ToString())
                        };
                        res.Add(data);
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return res;
        }
        public NotificationMaster GetStudentInfo(int UserID)
        {
            var res = new NotificationMaster();
            string procname = "Proc_GetStudentInfo";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@UserID",UserID)
            };
            var dt = dbhelper.ExcProc(procname, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    res.statuscode = Convert.ToInt32(dt.Rows[0]["Statuscode"]);
                    res.Msg = Convert.ToString(dt.Rows[0]["Msg"].ToString());
                    if (res.statuscode == 1)
                    {
                        res.NotificationDescription = Convert.ToString(dt.Rows[0]["Notify"].ToString());
                        res.NotifyCount = Convert.ToInt32(dt.Rows[0]["NotifyCount"]);
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return res;
        }
    }
}
