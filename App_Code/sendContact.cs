using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for sendContact
/// </summary>
public class sendContact
{
	public sendContact()
	{
		
	}
    public void SendEMail(String name, String to, String no, String msgSub, String company, String Eqry, String msgBx)
    {
        try
        {
            MailMessage msg = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            msg.From = new MailAddress("testgjava@gmail.com");
            msg.To.Add(new MailAddress(to));
            msg.Subject = no;
            msg.Bcc.Add(new MailAddress("venkatesh.vm115@gmail.com"));
            msg.Subject = msgSub;
            msg.Body = "Dear," + name + "<br /><br /> Thank You for contacting us. We will contact you soon. <br />" + "Our System has recorded your details <br />" + "Company Name: " + company + "<br/>" + "Contact No: " + no + "<br/>" + "Enquiry for :" + Eqry + "<br/>" + "Message: " + msgBx + " <br /><br /> Regards <br />V!";
            msg.IsBodyHtml = true;

            //Name the client which you will be using to send email.
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("venkatesh.vm115@gmail.com", "Sairam)9");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(msg);
        }
        catch (Exception ex)
        {
            // label = ex.Message;
        }
    }
}