<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" uiculture="auto" meta:resourcekey="PageResource1" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" href="defaults.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Header runat="server" ID="Unnamed1" />
    <div class="section">
    <h2>
        <asp:Localize ID="GeneralSettings" runat="server" 
            meta:resourcekey="GeneralSettingsResource1" Text="General Settings"></asp:Localize></h2>
    <table>
    <tr><td><asp:Localize ID="OrganizationName" runat="server" 
            meta:resourcekey="OrganizationNameResource1" Text="Organization Name"></asp:Localize></td><td>
        <asp:TextBox ID="lOrganization" runat="server" 
                meta:resourcekey="lOrganizationResource1"></asp:TextBox></td></tr>
        <tr><td>&nbsp;</td><td>
            <asp:Button ID="bSave" runat="server" Text="Save Settings" 
                OnClick="SaveSettings" meta:resourcekey="bSaveResource1" /></td></tr>
    </table>
    </div>
    <div class="section">
        <h2>
            <asp:Localize ID="UserPermissions" runat="server" 
                meta:resourcekey="UserPermissionsResource1" Text="User Permissions"></asp:Localize></h2>
        <div class="form">
            <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" 
                OnRowCommand="gvUsers_RowCommand" meta:resourcekey="gvUsersResource1">
                <RowStyle CssClass="tableRow" />
                <AlternatingRowStyle CssClass="tableAltRow" />
            </asp:GridView>
            <p>
                R &mdash; <asp:Localize ID="ReadPermission" runat="server" 
                    meta:resourcekey="ReadPermissionResource1" 
                    Text="Se klubbmedlemmar och statistik."></asp:Localize><br />
                E &mdash; <asp:Localize ID="EditPermission" runat="server" 
                    meta:resourcekey="EditPermissionResource1" 
                    Text="Skapa och redigera klubbmedlemmar, skicka meddelanden."></asp:Localize><br />
                G &mdash; <asp:Localize ID="GraduationPermission" runat="server" 
                    meta:resourcekey="GraduationPermissionResource1" 
                    Text="Skapa och redigera graderingar."></asp:Localize><br />
                P &mdash; <asp:Localize ID="PaymentPermission" runat="server" 
                    meta:resourcekey="PaymentPermissionResource1" 
                    Text="Skapa och redigera inbetalningar."></asp:Localize><br />
                X &mdash; <asp:Localize ID="DeletePermission" runat="server" 
                    meta:resourcekey="DeletePermissionResource1" Text="Radera klubbmedlemmar."></asp:Localize><br />
            </p>
        </div>
    </div>
    <div class="section">
        <h2>
            <asp:Localize ID="NewClub" runat="server" meta:resourcekey="NewClubResource1" 
                Text="New Club"></asp:Localize></h2>
        <div class="form">
            <table>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Name" runat="server" meta:resourcekey="NameResource2" 
                            Text="Name"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbClubName" runat="server" 
                            meta:resourcekey="tbClubNameResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        &nbsp;
                    </td>
                    <td class="value">
                        <asp:Button ID="bSaveClub" runat="server" Text="Add" OnClick="bSaveClub_Click" 
                            meta:resourcekey="bSaveClubResource1" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="section">
        <h2>
            <asp:Localize ID="NewUser" runat="server" meta:resourcekey="NewUserResource1" 
                Text="New User"></asp:Localize></h2>
        <div class="form">
            <table>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="UserName" runat="server" meta:resourcekey="UserNameResource1" 
                            Text="User Name"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbUserName" runat="server" 
                            meta:resourcekey="tbUserNameResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Name2" runat="server" meta:resourcekey="Name2Resource1" 
                            Text="Name"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbRealName" runat="server" 
                            meta:resourcekey="tbRealNameResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Password" runat="server" meta:resourcekey="PasswordResource1" 
                            Text="Password"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbPassword" runat="server" 
                            meta:resourcekey="tbPasswordResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        &nbsp;
                    </td>
                    <td class="value">
                        <asp:Button ID="bSaveUser" runat="server" Text="Add" OnClick="bSaveUser_Click" 
                            meta:resourcekey="bSaveUserResource1" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
