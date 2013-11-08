using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MenuDemos
{
    public partial class ed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //One more file
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                //It Will call function SendEmail and confirms that message sent succesfully.

                SendMail email = new SendMail();

                email.SendEMail(nameTextBox.Text, emailTextBox.Text, subjectTextBox.Text, "PAN Card Application", messageTextBox.Text, confirmationLabel.Text, "", "");


                confirmationLabel.Text = "Thanks for contacting us. We will get back to you in 24Hrs.<br />" +
                                         " You will be redirected to home page.";
                confirmationLabel.Visible = true;
                nameTextBox.Text = "";
                subjectTextBox.Text = "";
                emailTextBox.Text = "";
                nameTextBox.Text = "";
                messageTextBox.Text = "";
                Response.AddHeader("REFRESH", "6;URL=../default.aspx");
            }
            catch (Exception) { }
        }
    }
}
