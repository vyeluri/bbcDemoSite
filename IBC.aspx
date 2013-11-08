<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MenuDemos._TestDefault" MasterPageFile="~/Site1.Master" %>
<%@ Register Assembly="SyrinxMenuV3" Namespace="Syrinx2" TagPrefix="syx" %>

<asp:Content runat="server" ContentPlaceHolderID="secondMenu">
<syx:Menu runat="server" ID="sec" SkinID="SecondMenu">
    <syx:MenuItemTable Text="Dr.Pattabhi" Columns="1,1" SubMenuCssClass="EmailSubMenu" 
        CellSpans="htmlChunk1(1,*)"
        Level1Template="<div class='SSMH2'>$text$</div><div class='SSMIBody'>$description$</div>">
        <syx:MenuItem Text="History">
            <syx:MenuItem Text="Achievements" Description="Secure, reliable email for home or business." NavigateUrl="launch.aspx" Target="" />
            <syx:MenuItem Text="Awards" Description="Affordable, corporate-class email plans." NavigateUrl="launch.aspx" Target=""/>
        </syx:MenuItem>
        <syx:MenuItem Text="Back Ground">
            <syx:MenuItem Text="Photos" Description="Access your files from any computer." NavigateUrl="~/Drpattabhi/phGallery.aspx" Target=""/>
            <syx:MenuItem Text="Leadership" Description="An easier way to send and receive faxes." NavigateUrl="launch.aspx" Target="" />
            
        </syx:MenuItem>
        <%--<syx:MenuItem Text="Market Your Business">
            <syx:MenuItem Text="Contact Management (CRM)" Description="All your customer data in one place." />
            <syx:MenuItem Text="Email Marketing" Description="Design, send and track spam-free emails." />
        </syx:MenuItem>
        <syx:MenuItem Text="A Chunk of HTML">
            <syx:HtmlSection id="htmlChunk1">
                <div style='white-space:normal;font-size:11px;color:Yellow;'>
                This is just a test to see what happens when I stuff some stuff in an html within this table layout.
                Its going to be a longer text because this needs to be a decent test too.
                </div>
            </syx:HtmlSection>
        </syx:MenuItem>--%>
    </syx:MenuItemTable>
    <syx:MenuItem Text="AIBEA" NavigateUrl="launch.aspx" Target=""/>
        <%--<syx:MenuItem Text="Domain Name Search" />
        <syx:MenuItem Text="Expired Domains" />
        <syx:MenuItem Text="Web Forwarding" />
        <syx:MenuItem Text="Transfer Your Domain Name" />
        <syx:MenuItem Text="Private Registration" />
    </syx:MenuItem>--%>
    <%--<syx:MenuItem Text="Website Solutions">
        <syx:MenuItem Text="Personal Website" />
        <syx:MenuItem Text="Business Website" />
        <syx:MenuItem Text="eCommerce Website" />
    </syx:MenuItem>--%>
    <%--<syx:MenuItem Text="Hosting Packages">
        <syx:MenuItem Text="Web Hosting" />
        <syx:MenuItem Text="WordPress Blog Hosting" />
        <syx:MenuItem Text="SharePoint Hosting" />
        <syx:MenuItem Text="VPS Hosting" />
    </syx:MenuItem>--%>
    <%--<syx:MenuItem Text="Ecommerce" />
    <syx:MenuItem Text="Online Security" />
    <syx:MenuItem Text="Online Marketing" />
    <syx:MenuItem Text="Design Services" />--%>
</syx:Menu>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <article>
    <p>

    </p>
    <p>
        Indian Business Chamber is a Blend of Commerce. The following are the chambers in Indian Business Chamber.
    </p>

        <p>
            <ul style="line-height: 30px">
                <li>
                    Industrial Support Services
                </li>
                <li>
                    Software Development Activities 
                </li>
                <li>
                    Preferential Shares 
                </li>
                <li>
                    Debentures Participation
                </li>
                <li>
                    Private Placements
                </li>
                <li>
                    Employment opportunities 
                </li>
                <li>
                    All Credit based facilities 
                </li>
                <li>
                    Man Power Management 
                </li>
                <li>
                    Multi–lateral Services
                </li>
                <li>
                    Financial Multi –Faceted Services
                </li>
                <li>
                    Network Communication of Commerce Services
                </li>
                <li>
                    Business based Multi –Lateral Services
                </li>
                <li>
                    Project Management & Services
                </li>
                <li>
                    Advises to maximum extent
                </li>
            </ul>
        </p>
        <p>
            For any quries on above Business Chambers, please  <a href="ctcus.aspx" style="text-transform: none; text-decoration: none;">Contact Us.</a>
        </p>

        </article>
    </asp:Content>

