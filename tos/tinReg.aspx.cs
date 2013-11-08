using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tos_tinReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            SendMail email = new SendMail();

            email.SendEMail(nameTextBox.Text, emailTextBox.Text, ctcNoTextBox.Text, "Application for TIN Registration", messageTextBox.Text, confirmationLabel.Text, "", "");
            confirmationLabel.Text = "Thanks for contacting us. We will get back to you in 24Hrs.<br />" +
                                             " You will be redirected to home page.";
            confirmationLabel.Visible = true;
            ctcNoTextBox.Text = "";
            emailTextBox.Text = "";
            nameTextBox.Text = "";
            messageTextBox.Text = "";
            Response.AddHeader("REFRESH", "6;URL=../default.aspx");
        }
        catch (Exception)
        {

        }
    }
}