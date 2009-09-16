<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" href="defaults.css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Header ID="Header1" runat="server" />
    <h1>
        <asp:Localize ID="LogInHeader" runat="server" meta:resourcekey="LogInHeader">Log in</asp:Localize></h1>
        <p>
            <asp:Label ID="lMessage" runat="server" meta:resourcekey="lMessageResource1"></asp:Label>
        </p>
    <div class="section" style="max-width: 400px">
    <h2><asp:Localize ID="IntroHeader" runat="server" 
            meta:resourcekey="IntroHeaderResource1" Text="For students"></asp:Localize></h2>
    <p>
        <asp:Localize ID="IntroText" runat="server" 
            meta:resourcekey="IntroTextResource1">If you are a training member in a club, you can log in to change your user data on the <a href="UserPage.aspx">update page</a>.</asp:Localize>
    </p>
    </div>
    <div class="section" style="max-width: 400px">
    <h2><asp:Localize ID="AdminHeader" runat="server" 
            meta:resourcekey="AdminHeaderResource1" Text="For administrators"></asp:Localize></h2>
    <p>
        <asp:Localize ID="AdminText" runat="server" 
            meta:resourcekey="AdminTextResource1" 
            Text="If you are a club administrator, you can log in here with your credentials."></asp:Localize>
    
    </p>
        <table>
            <tr>
                <td class="prompt">
                    <asp:Localize ID="Localize1" runat="server" 
                        meta:resourcekey="UserName" Text="User Name"></asp:Localize>
                </td>
                <td class="value">
                    <asp:TextBox ID="tbUser" runat="server" meta:resourcekey="tbUserResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    <asp:Localize ID="Password" runat="server" meta:resourcekey="PasswordResource2" 
                        Text="Password"></asp:Localize>
                </td>
                <td class="value">
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" 
                        meta:resourcekey="tbPasswordResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    &nbsp;
                </td>
                <td class="value">
                    <asp:Button id="bLogin" Text="Logga in" runat="server" onclick="Unnamed1_Click" 
                        meta:resourcekey="bLoginResource1"/><br />
                        <asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="ForgotPassword.aspx" meta:resourcekey="hlForgotPassword" Text="I forgot my password."/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
