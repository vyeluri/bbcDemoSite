using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tos_pancorrection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            //It Will call function SendEmail and confirms that message sent succesfully.
            SendMail email = new SendMail();

            email.SendEMail(nameTextBox.Text, emailTextBox.Text, subjectTextBox.Text, "PAN Card Correction", messageTextBox.Text, confirmationLabel.Text, "PAN Card No", pancardNoBox.Text);
            
            confirmationLabel.Text = "Thanks for contacting us. We will get back to you in 24Hrs.<br />" +
                                     " You will be redirected to home page.";
            confirmationLabel.Visible = true;
            subjectTextBox.Text = "";
            emailTextBox.Text = "";
            nameTextBox.Text = "";
            messageTextBox.Text = "";
            pancardNoBox.Text = "";
            Response.AddHeader("REFRESH", "6;URL=../default.aspx");
        }
        catch (Exception) { }
    }
}