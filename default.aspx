<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MenuDemos.biz" MasterPageFile="~/Site1.Master" %>
<%@ Register Assembly="SyrinxMenuV3" Namespace="Syrinx2" TagPrefix="syx" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (emailTextBox != null)
        {
            subscribeMail sm = new subscribeMail();
            sm.Sendsubscribe(emailTextBox.Text, "BBC News Letter Subscription");
            Label1.Text = "Submitted!";
            Label1.Visible = true;
            emailTextBox.Text = "";
        }
        else
        {
            Label1.Text = "Enter email address";
            Label1.Visible = true;
        }
    }
</script>



<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <link rel="stylesheet" type="text/css" href="~/styles/StyleSheet.css"/>
    <script type="text/javascript">
        $(function () {
            $("[id*=bb]").WaterMark();

            //To change the color of Watermark
            $("[id*=Email]").WaterMark(
            {
                WaterMarkTextColor: 'black'
            });
        });

    </script>

</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   
            
    <article>
        <table><tr><td>
            <h1>Welcome</h1>
                    
                    <p style="line-height: 30px; text-align: justify;">BBC is new blend of commerce and business banking is the multifaceted and multilateral organization is established with a view to
Emerging everyone in personnel financial landscape to endeavor the new live  projects like financial services, financial solutions and business development activities in software development activities and multilateral Business activities. The BBC maintains high value standards to achieve the new heights in various fields of business activities, management, and administrations by providing financial assistance to industries, institutions and software companies. The company is always aimed to reach new heights with a new challenges and innovations.

                        </p>
        <p style="line-height: 30px; text-align: justify;">
            BBC is a modern mind set company engaged in one of the most innovative ways of doing business that the world recognizes as multi lateral and multifaceted network communication of commerce. Driving home the point that business does not have to be conventional and that the shifting paradigm of business culture is a very global phenomenon here today. 
        </p>
        <p style="line-height: 30px; text-align: justify;">
            BBC focus on modern business management techniques, underlined with the human touch. BBC is therefore the business partner for the people, by the people and to the people. 
            </p>
            </td>
            <td><div class="gap"></div></td>
            <td>
                <div class="email">

                    <%--<asp:UpdatePanel ID="up1" runat="server">--%>
                    <div class="subscribe" style="line-height: none">
                        <%-- <div class="top"></div>--%>
                        <h5 style="font-variant: small-caps; font-size: 16px; padding:0px 0px 0px 13px">Newsletter</h5>
                        <table><tr><td><img src="images/bbc_newsletter.gif" style="left: 20px; padding:0px 0px 0px 10px; width:16px; height:16px; " /></td>
                                    <td> <span style="padding:0px 0px 0px 10px; text-align: center; font-weight: bold;">BANC of Commerce Weekly Update</span></td>
                               </tr>
                         </table>
                       <div class="subMatter" style="padding:2px 0px 0px 10px; color:#000">Subscribe and get the latest news delivered straight to your inbox.</div>
              
                  <div class="txtBox" style="padding:10px 0px 0px 10px;">
                         <asp:textbox ID="emailTextBox" runat="server" CssClass="TextBox" Width="150px" 
                    CausesValidation="True"></asp:textbox>
                    <asp:requiredfieldvalidator ID="emailTextBoxRFV"  ErrorMessage=" * " 

                    runat="server" ControlToValidate="emailTextBox" ValidationGroup="save" 
                    SetFocusOnError="True"></asp:requiredfieldvalidator>
                     <asp:regularexpressionvalidator runat="server" ID="RegularExpressionValidator23"

                    SetFocusOnError="true" Text="Not a valid email" ControlToValidate="emailTextBox"

                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"

                    ValidationGroup="save" /><br /><br />
                        </div>      
                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                            </Triggers>
                    <ContentTemplate>
                        
                        <div class="buttn" style="padding:5px 10px 5px 10px;">
                            <asp:Button ID="Button1" cssClass="Button" runat="server" style="text-align: center" Text="Subscribe" ValidationGroup="save" 
                    CausesValidation="true" OnClick="Button1_Click"></asp:Button>
                        </div>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" style="padding: 0px 0px 10px 10px;"></asp:Label>
                        <div class="gap" style="padding: 0px 0px 10px 0px"></div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                        <div class="line" style="padding:15px 10px 10px 10px; background-color: #000"></div>
                        <div class="adroater">
                            
                                 <asp:Timer ID="Timer1" Interval="2000" runat="server" />
                                      <asp:UpdatePanel ID="up1" runat="server">
                                    <Triggers>
                                      <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                    </Triggers>
                                 <ContentTemplate>
                                      <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/homeAds.xml" KeywordFilter="TestGoogle" runat="server" />
                                 </ContentTemplate>
                                     </asp:UpdatePanel>
                        </div>
                    
                    </div>
                      <%--  </asp:UpdatePanel>--%>
                </div>
            </td>
            </tr>
            </table>
        </article>

    <div class="promo_container">
            
                <div class="promo one">

                    <div class="content">
	                     <h3>Banking</h3>
	                      <p>Banking info will come here.</p>
	                          <p><a class="cta" href="#">Visit our blog</a></p>
                    </div>
                 </div>

                <div class="promo two">
                    <div class="content">
	                    <h3>Consultation</h3>
	                        <p>Consultation info will come here.</p>
	                        <p><a class="cta" href="#">Read the article</a></p>
                    </div>
                
                </div>
                
                <div class="promo three">
                    
                    <div class="content">
	                    <h3>Analysis</h3>
	                    <p>Research/Analysis or other info will come here.</p>
	                    <p><a class="cta" href="#">Learn more</a></p>
                    </div>
                </div>

          </div>

</asp:Content>