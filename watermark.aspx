<%@ Page Language="C#" AutoEventWireup="true" CodeFile="watermark.aspx.cs" Inherits="watermark" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            
        </asp:ScriptManager>
    </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkCssClass="watermarked" WatermarkText="hello world">
        </cc1:TextBoxWatermarkExtender>
        
    </form>
</body>
</html>
