using JLNP_Project.AppCode.Helper;
using System.Data.SqlClient;

namespace CollageERP.AppCode.DL
{
    public class Proc_GetRegistrationFees
    {
        DBHelper dbhelper = new DBHelper();
        public decimal GetRegistrationFees(int Branch, int Program, int AdmissionType)
        {
            decimal registartionFees = 0M;
            string procname = "Proc_GetRegistrationFees";  // ProcedureName
            SqlParameter[] param =
            {
                new SqlParameter("@Branch",Branch),
                new SqlParameter("@Program",Program),
                new SqlParameter("@AdmissionType",AdmissionType)
            };
            var dt = dbhelper.ExcProc(procname, param);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    registartionFees = Convert.ToDecimal(dt.Rows[0]["RegistartionFees"]);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return registartionFees;
        }
    }
}
