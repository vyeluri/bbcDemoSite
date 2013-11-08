<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="MenuDemos.dev" MasterPageFile="~/Site1.Master" %>
<%@ Register Assembly="SyrinxMenuV3" Namespace="Syrinx2" TagPrefix="syx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
       
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="secondMenu">
<syx:Menu runat="server" ID="sec" SkinID="SecondMenu">
    <syx:MenuItemTable Text="Registration" Columns="1,1" SubMenuCssClass="EmailSubMenu" 
        CellSpans="htmlChunk1(1,*)"
        Level1Template="<div class='SSMH2'>$text$</div><div class='SSMIBody'>$description$</div>">
        <syx:MenuItem Text="PAN Card">
            <syx:MenuItem Text="Apply" Description="To apply a new PAN card" NavigateUrl="~/services.aspx" Target=""  />
            <syx:MenuItem Text="Corrections" Description="For corrections, plese click here." NavigateUrl="~/tos/pancorrection.aspx" Target=""/>
        </syx:MenuItem>
        <syx:MenuItem Text="TAN">
            <syx:MenuItem Text="Apply" Description="For TAN registration, please click here." NavigateUrl="~/tos/tan.aspx" Target="" />
            <%--<syx:MenuItem Text="Leadership" Description="An easier way to send and receive faxes." />--%>
            
        </syx:MenuItem>
        <syx:MenuItem Text="TIN">
            <syx:MenuItem Text="Apply" Description="For TIN registration, please click here." NavigateUrl="~/tos/tinReg.aspx" Target=""  />
            <%--<syx:MenuItem Text="Email Marketing" Description="Design, send and track spam-free emails." />--%>
        </syx:MenuItem>
        <%--<syx:MenuItem Text="A Chunk of HTML">
            <syx:HtmlSection id="htmlChunk1">
                <div style='white-space:normal;font-size:11px;color:Yellow;'>
                This is just a test to see what happens when I stuff some stuff in an html within this table layout.
                Its going to be a longer text because this needs to be a decent test too.
                </div>
            </syx:HtmlSection>
        </syx:MenuItem>--%>
    </syx:MenuItemTable>
    <syx:MenuItem Text="Tax Filing" NavigateUrl="launch.aspx" Target=""/>
        <%--<syx:MenuItem Text="Domain Name Search" />
        <syx:MenuItem Text="Expired Domains" />
        <syx:MenuItem Text="Web Forwarding" />
        <syx:MenuItem Text="Transfer Your Domain Name" />
        <syx:MenuItem Text="Private Registration" />
    </syx:MenuItem>--%>
    
</syx:Menu>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <article>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p style="line-height: 30px">At Business BANC of Commerce we provide different services relating to the Banking sector. Relating to the Commercial Tax service, Service Tax and all other forms
            of Registrations realting to the Income Tax Department of India.
        </p>
    </article>
    </asp:Content>