<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>
<div id="topbar">
    <%= Manager.Instance.Organization %>
    (<%= Product %>
    <%= Version %>)
    <asp:Panel Style="display: inline" ID="loggedInPanel" runat="server" Visible="false">
        Gå till:
        <asp:HyperLink ID="hlStart" runat="server" NavigateUrl="Default.aspx">[Startsida]</asp:HyperLink><asp:Panel
            ID="clubPagePanel" runat="server" Style="display: inline" Visible="false">
            <asp:HyperLink ID="hlClub" runat="server" NavigateUrl="ClubPage.aspx">[Klubbsida]</asp:HyperLink>
        </asp:Panel>
        Inloggad som
        <%= LoggedInUser %>.
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LogOut">[Logga ut]</asp:LinkButton>
    </asp:Panel>
</div>
