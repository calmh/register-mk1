<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>
<div id="topbar">
    <%= Manager.Instance.Organization %>
    <i>(<%= Product %>
        <%= Version %>)</i>
    <asp:Panel Style="display: inline" ID="loggedInPanel" runat="server" Visible="False"
        meta:resourcekey="loggedInPanelResource1">
        |
        <asp:Localize ID="Localize1" runat="server" Text="Go to:" meta:resourcekey="GoTo" />
        <asp:HyperLink ID="hlStart" runat="server" NavigateUrl="Default.aspx" meta:resourcekey="StartPage"
            Text="Start Page"></asp:HyperLink><asp:Panel ID="clubPagePanel" runat="server" Style="display: inline"
                Visible="False" meta:resourcekey="clubPagePanelResource1">
                | <asp:HyperLink ID="hlClub" runat="server" NavigateUrl="ClubPage.aspx" meta:resourcekey="hlClubResource1">
                    <asp:Localize ID="Localize4" runat="server" Text="Club Page" meta:resourcekey="ClubPage" />
                </asp:HyperLink></asp:Panel>| <asp:Localize ID="Localize2" runat="server" Text="Logged in as" meta:resourcekey="LoggedInAs" />
        <%= LoggedInUser %>. <asp:LinkButton ID="bLogOut" runat="server" OnClick="LogOut" meta:resourcekey="LogOut"
            Text="Log out" />
    </asp:Panel>
</div>
