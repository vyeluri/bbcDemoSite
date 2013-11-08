using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for subscribeMail
/// </summary>
public class subscribeMail
{
	public void Sendsubscribe(String to, String msgSub)
	{
        try
        {
            MailMessage msg = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            msg.From = new MailAddress("testgjava@gmail.com");
            msg.To.Add(new MailAddress(to));
            
            msg.Bcc.Add(new MailAddress("venkatesh.vm115@gmail.com"));
            msg.Subject = msgSub;
            msg.Body = "Hello," + "<br /><br /> Thank You for subscribing to our news letters. We will inform you for our every update. <br /><br/> Regards <br />V!";
            msg.IsBodyHtml = true;

            //Name the client which you will be using to send email.
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("venkatesh.vm115@gmail.com", "Sairam)9");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(msg);
        }
        catch (Exception ex)
        {
            //label = ex.Message;
        }
	}
}