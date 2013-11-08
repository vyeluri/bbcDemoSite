<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="SyrinxMenuV3" Namespace="Syrinx2" TagPrefix="syx" %>


<syx:Menu runat="server" ID="mainMenu" SkinID="MainMenu">
    
    <syx:MenuItem Text="BANC of Commerce" NavigateUrl="default.aspx" />
    <syx:MenuItem Text="INDIAN Business Chamber" NavigateUrl="IBC.aspx" />
    <syx:MenuItem Text="Services" NavigateUrl="services.aspx" />
    <syx:MenuItem Text="About Us" NavigateUrl="abtus.aspx" />
    <syx:MenuItem Text="Contact Us" NavigateUrl="ctcus.aspx" />
</syx:Menu>
