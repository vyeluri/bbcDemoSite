<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ctcus.aspx.cs" Inherits="MenuDemos.ed" MasterPageFile="~/CtsUs.master" %>
<%@ Register Assembly="SyrinxMenuV3" Namespace="Syrinx2" TagPrefix="syx" %>
<script runat="server">

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            //It Will call function SendEmail and confirms that message sent succesfully.

            sendContact email = new sendContact();

            email.SendEMail(nameTextBox.Text, emailTextBox.Text, ctcNoTextBox.Text, "Enquiry about IBC", CompanyTextbox1.Text, EnquiryTextbox1.Text, messageTextBox.Text);


            confirmationLabel.Text = "Thank You for contacting us. We will get back to you in 24Hrs.<br />" +
                                     " You will be redirected to home page.";
            confirmationLabel.Visible = true;
            ctcNoTextBox.Text = "";
            emailTextBox.Text = "";
            nameTextBox.Text = "";
            messageTextBox.Text = "";
            Response.AddHeader("REFRESH", "6;URL=../default.aspx");
        }
        catch (Exception) { }
    }
</script>



<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <article>
        <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <p style="font-family: Tahoma; font-size: large; font-weight: bold; 

                    font-style: normal; font-variant: normal; color: #808080">
                    
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:label ID="nameLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 

                    Font-Size="Medium"  Text="Name "></asp:label>
            </td>
           <td>
                <asp:textbox ID="nameTextBox" runat="server" CssClass="TextBox" Font-Names="Tahoma"

                     Width="216px" CausesValidation="True"></asp:textbox>
                <asp:requiredfieldvalidator ID="nameTextBoxRFV" ErrorMessage=" * " 

                    runat="server" ControlToValidate="nameTextBox" ValidationGroup="save" Display="Dynamic" 

                    SetFocusOnError="True"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                   <asp:label ID="emailLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                  Text="Email Id"></asp:label>
            </td>
            <td>
                <asp:textbox ID="emailTextBox" runat="server" CssClass="TextBox" Width="216px" 
                    CausesValidation="True"></asp:textbox>
                <asp:requiredfieldvalidator ID="emailTextBoxRFV"  ErrorMessage=" * " 

                    runat="server" ControlToValidate="emailTextBox" ValidationGroup="save" Display="Dynamic" 
                    SetFocusOnError="True"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator runat="server" ID="RegularExpressionValidator23"

                    SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="emailTextBox"

                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"

                    ValidationGroup="save" /><br />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
               <asp:label ID="subjectLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                    Text="Contact No"></asp:label>
            </td>
            <td>
                <asp:textbox ID="ctcNoTextBox" runat="server" CssClass="TextBox" Width="216px" 

                    CausesValidation="True"></asp:textbox>

                <asp:requiredfieldvalidator ID="ctcNoTextBoxRFV"  ErrorMessage=" * " 

                    runat="server" ControlToValidate="ctcNoTextBox" Display="Dynamic" SetFocusOnError="True"

                     ValidationGroup="save"></asp:requiredfieldvalidator>
            </td>
        </tr>
            <tr>
            <td style="text-align: right">
               <asp:label ID="ComapnyLabel1" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                    Text="Company Name"></asp:label>
            </td>
            <td>
                <asp:textbox ID="CompanyTextbox1" runat="server" CssClass="TextBox" Width="216px" 

                    CausesValidation="False"></asp:textbox>

                <%--<asp:requiredfieldvalidator ID="Requiredfieldvalidator1"  ErrorMessage=" * " 

                    runat="server" ControlToValidate="subjectTextBox" Display="Dynamic" SetFocusOnError="True"

                     ValidationGroup="save"></asp:requiredfieldvalidator>--%>
            </td>
        </tr>
            <tr>
            <td style="text-align: right">
               <asp:label ID="EnquiryLabel1" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                    Text="Enquiry About"></asp:label>
            </td>
            <td>
                <asp:textbox ID="EnquiryTextbox1" runat="server" CssClass="TextBox" Width="216px" 

                    CausesValidation="False"></asp:textbox>

                <asp:requiredfieldvalidator ID="Requiredfieldvalidator1"  ErrorMessage=" * " 

                    runat="server" ControlToValidate="EnquiryTextbox1" Display="Dynamic" SetFocusOnError="True"

                     ValidationGroup="save"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:label ID="messageLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 

                    Text="Message"></asp:label>
            </td>
            <td>
                <asp:textbox ID="messageTextBox" runat="server" CssClass="TextBox" Rows="6"

                     TextMode="MultiLine" Width="424px" CausesValidation="True" Height="209px"></asp:textbox>

                <asp:requiredfieldvalidator ID="messageTextBoxRFV"  ErrorMessage=" * "

                     runat="server" ControlToValidate="messageTextBox"

                     ValidationGroup="save" Display="Dynamic"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
         <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:button ID="submit" CssClass="Button" runat="server" 
                    style="text-align: center" Text="Submit" ValidationGroup="save" 
                    CausesValidation="true" OnClick="submit_Click"/>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:label ID="confirmationLabel" runat="server" Visible="False"></asp:label>
            </td>
        </tr>
   </table>
    </article>
    
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #TextArea1
        {
            height: 162px;
            width: 367px;
        }
    </style>
</asp:Content>
