<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword"
    meta:resourcekey="PageResource1" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" href="defaults.css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Header ID="Header1" runat="server" />
    <div class="section" style="max-width: 400px">
        <asp:Panel ID="pMessage" runat="server" Visible="false">
            <p>
                <asp:Localize ID="ChangedText" runat="server"  meta:resourcekey="ChangedTextResource1">A new password has been sent to your email address. Please check your email and try logging in again.</asp:Localize>
            </p>
        </asp:Panel>
        <asp:Panel ID="pForm" runat="server" Visible="true">
        <p>
            <asp:Localize ID="IntroText" runat="server" meta:resourcekey="IntroTextResource1"
                Text="Enter your username and click &quot;Request new password&quot; to have a new password mailed to your registered e-mail address. If your e-mail address isn't correct, you need to contant an administrator to get it solved."></asp:Localize>
        </p>
        <table>
            <tr>
                <td class="prompt">
                    <asp:Localize ID="UserName" runat="server" meta:resourcekey="UserName" Text="User Name"></asp:Localize>
                </td>
                <td class="value">
                    <asp:TextBox ID="tbUser" runat="server" meta:resourcekey="tbUserResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    &nbsp;
                </td>
                <td class="value">
                    <asp:Button ID="bRequest" Text="Request new password" runat="server" 
                        meta:resourcekey="bLoginResource1" onclick="bRequest_Click" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
