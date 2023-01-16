﻿using JLNP_Project.Models;
using System.Net;
using System.Net.Mail;

namespace JLNP_Project.AppCode.Helper
{
    public class SendEmail
    {
        public ResponseStatus SendMail(string EmailAddress, string title, string Msg)
        {
            var res = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Email Not Send!"
            };
            try
            {
                string frommail = "jlnp.mmb222503@gmail.com";
                string frompassword = "suebgqbqjhdkxnsp";

                MailMessage massage = new MailMessage();
                massage.From = new MailAddress(frommail);
                massage.Subject = "Jawahar lal Neharu Polytechnic";
                massage.To.Add(new MailAddress(EmailAddress));
                massage.Body = $"<html><body><h3>"+ title + "</h3><br>"+ Msg + "</body></html>";
                massage.IsBodyHtml = true;

                var smtpclient = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,
                    Credentials = new NetworkCredential(frommail, frompassword),
                    EnableSsl = true
                };
                smtpclient.Send(massage);
                res.statuscode = 1;
                res.Msg = "Email Send Successfully!";
            }
            catch (Exception ex)
            {

            }
            return res;
        }
    }
}
