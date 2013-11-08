<%@ Page Title="" Language="C#" MasterPageFile="~/tos/reg.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="tos_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <article>
        <h3>Registration for PAN Card</h3>

        <%--<table>
            <tr>
                <td>Name</td> <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
        </table>--%>

            <table class="auto-style1">

        <tr>
            <td class="auto-style2">&nbsp;</td>

            <td>


                <p style="font-family: Tahoma; font-size: large; font-weight: bold; 

                    font-style: normal; font-variant: normal; color: #000099">

                    Contact Us

                </p>


            </td>

        </tr>

        <tr>

            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>

        </tr>
        <tr>

            <td>

                <asp:label ID="nameLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 

                    Font-Size="Medium" ForeColor="Black" Text="Name"></asp:label>
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

            <td>

                   <asp:label ID="emailLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                  Text="Em@il Id"></asp:label>

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
            <td>

                <asp:label ID="subjectLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                    Text="Contact No"></asp:label>

            </td>

            <td>

                <asp:textbox ID="subjectTextBox" runat="server" CssClass="TextBox" Width="216px" 

                    CausesValidation="True"></asp:textbox>

                <asp:requiredfieldvalidator ID="subjectTextBoxRFV"  ErrorMessage=" * " 

                    runat="server" ControlToValidate="subjectTextBox" Display="Dynamic" SetFocusOnError="True"

                     ValidationGroup="save"></asp:requiredfieldvalidator>
            </td>

        </tr>

        <tr>
            <td>
                <asp:label ID="messageLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" 

                    Text="Address"></asp:label>

            </td>
            <td>

                <asp:textbox ID="messageTextBox" runat="server" CssClass="TextBox" Rows="6"

                     TextMode="MultiLine" Width="216px" CausesValidation="True"></asp:textbox>

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
    <div class="clear">

    </div>
    <footer>

    </footer>
    <div class="clear">

    </div>
    <div class ="footer" >
        © 2012 Business BANC of Commerce 
    </div>
</asp:Content>

