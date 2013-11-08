using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for SendMail
/// </summary>
public class SendMail
{
	
		//
		// TODO: Add constructor logic here
		//
        public void SendEMail(String name, String to, String sub, String msgSub, String addr, String label, String panLabel, String panBox)
        {
            try
           {
              MailMessage msg = new MailMessage();
              SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

               msg.From = new MailAddress("testgjava@gmail.com");
               msg.To.Add(new MailAddress(to));
               msg.Subject = sub;
               msg.Bcc.Add(new MailAddress("venkatesh.vm115@gmail.com"));
               msg.Subject = msgSub;
               msg.Body = "Hi," + name + "<br /><br /> Thank You for contacting us. We will contact you soon. <br />" + "Our System has recorded your details <br />" + "Contact No: " + sub + "<br/>" + panLabel+"" + panBox + "<br/>" + "Address: " + addr + " <br /><br /> Regards <br />V!";
               msg.IsBodyHtml = true;

               //Name the client which you will be using to send email.
               SmtpServer.Port = 587;
               
               SmtpServer.EnableSsl = true;

               SmtpServer.Send(msg);
            }
            catch (Exception ex)
            {
                label = ex.Message;
            }
        }
         
	
}