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
            meta:resourcekey="IntroHeaderResource1" Text="För tränande"></asp:Localize></h2>
    <p>
        <asp:Localize ID="IntroText" runat="server" 
            meta:resourcekey="IntroTextResource1" 
            Text="Om du i är tränande och vill logga in för att redigera dina personuppgifter kan du gå till sidan &lt;a href=&quot;UserPage.aspx&quot;&gt;&quot;uppdatera persondata&quot;&lt;/a&gt;"></asp:Localize>
    </p>
    </div>
    <div class="section" style="max-width: 400px">
    <h2><asp:Localize ID="AdminHeader" runat="server" 
            meta:resourcekey="AdminHeaderResource1" Text="För administratörer"></asp:Localize></h2>
    <p>
        <asp:Localize ID="AdminText" runat="server" 
            meta:resourcekey="AdminTextResource1" 
            Text="Om du har administrativ tillgång till registret kan du ange dina uppgifter här för att logga in."></asp:Localize>
    
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
                        meta:resourcekey="bLoginResource1"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
