﻿using JLNP_Project.AppCode.DAL;
using JLNP_Project.Models;
using System.Data;

namespace JLNP_Project.AppCode.BAL
{
    public class Account_BAL
    {
        public DataSet Login_BAL(Account account)
        {
            Account_DAL AC_DAL = new Account_DAL();
            var dt = AC_DAL.Login_DAL(account);
            return dt;
        }
        public DataTable Login_BAL_V1(Account account)
        {
            Account_DAL AC_DAL = new Account_DAL();
            var dt = AC_DAL.Login_DAL_V1(account);
            return dt;
        }
        public ResponseStatus ChangePassword_BAL(Account account)
        {
            Account_DAL AC_DAL = new Account_DAL();
            var dt = AC_DAL.ChangePassword(account);
            return dt;
        }
        public ResponseStatus ForgetPassword_BAL(string Enrollemnt,string Mobile)
        {
            Account_DAL AC_DAL = new Account_DAL();
            var dt = AC_DAL.ForgetPassword(Enrollemnt, Mobile);
            return dt;
        }
        public ResponseStatus Saveloginsession(string sessionkey,int loginid,int reqmode)
        {
            Account_DAL AC_DAL = new Account_DAL();
            var dt = AC_DAL.SaveSession(sessionkey, loginid, reqmode);
            return dt;
        }
    }
}
