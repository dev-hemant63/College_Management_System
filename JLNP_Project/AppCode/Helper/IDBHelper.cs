using System.Data;
using System.Data.SqlClient;

namespace CollageERP.AppCode.Helper
{
    public interface IDBHelper
    {
        DataTable ExcProc(string Procname, SqlParameter[] prams);
        DataSet ExcProc_Dataset(string Procname, SqlParameter[] prams);
        bool ExcQuery(string Command, SqlParameter[] prams);
        DataTable ExcQueryDT(string Command, SqlParameter[] prams);
        DataTable ExcProcWithoutParam(string Procname);
        DataTable ExcQueryWithoutParam(string Procname);
        DataSet ExcProcWithoutParamDS(string Procname);

    }
}
