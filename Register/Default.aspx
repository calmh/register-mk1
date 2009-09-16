<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="_Default" UICulture="auto" meta:resourcekey="PageResource1"%>

<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" href="defaults.css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Header runat="server" ID="Unnamed1" />
    <h1>
        <%= Manager.Instance.Organization %></h1>
    <div>
        <p>
            <asp:Label ID="lMessage" runat="server" Font-Bold="True" 
                meta:resourcekey="lMessageResource1"></asp:Label></p>
    </div>
    <div class="section">
        <h2>
            <asp:Localize ID="Clubs" runat="server" meta:resourcekey="ClubsResource1" 
                Text="Klubbar"></asp:Localize></h2>
        <p>
            <asp:Localize ID="ClubsBelow" runat="server" 
                meta:resourcekey="ClubsBelowResource1" 
                Text="You have access to registry data for the clubs listed below."></asp:Localize>
        </p>
        <asp:GridView ID="gvClubs" runat="server" AutoGenerateColumns="False" OnRowCommand="gvClubs_RowCommand"
            BorderWidth="0px" GridLines="None" CellSpacing="-1" DataKeyNames="ID" EnableViewState="False"
            EnableTheming="False" meta:resourcekey="gvClubsResource1">
            <Columns>
                <asp:ButtonField ButtonType="Image" ImageUrl="img/edit-16x16.png" 
                    CommandName="Klubb" meta:resourcekey="ButtonFieldResource1" />
                <asp:BoundField DataField="Name" HeaderText="Club" 
                    meta:resourcekey="BoundFieldResource1" />
                <asp:BoundField DataField="TotalStudents" HeaderText="Students" 
                    meta:resourcekey="BoundFieldResource2" />
                <asp:BoundField DataField="ActiveStudents" HeaderText="Active" 
                    meta:resourcekey="BoundFieldResource3" />
            </Columns>
            <RowStyle CssClass="tableRow" />
            <AlternatingRowStyle CssClass="tableAltRow" />
        </asp:GridView>
        <asp:Panel ID="adminPanel" runat="server" 
            meta:resourcekey="adminPanelResource1">
            <p>
                <asp:Localize ID="AdminAccess" runat="server" 
                    meta:resourcekey="AdminAccessResource1" 
                    Text="You have administrative access."></asp:Localize><br />
                <asp:HyperLink ID="hlAdmin" runat="server" NavigateUrl="AdminPage.aspx" 
                    meta:resourcekey="hlAdminResource1">Gå till administration</asp:HyperLink>
            </p>
        </asp:Panel>
    </div>
    <div class="section">
        <h2>
            <asp:Localize ID="YourAccount" runat="server" 
                meta:resourcekey="YourAccountResource1" Text="Your Account"></asp:Localize></h2>
        <div class="form">
            <table>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="UserName" runat="server" meta:resourcekey="UserNameResource1" 
                            Text="User Name"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbLogin" runat="server" ReadOnly="True" 
                            meta:resourcekey="tbLoginResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Email" runat="server" meta:resourcekey="EmailResource" 
                            Text="E-mail"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Name" runat="server" meta:resourcekey="NameResource2" 
                            Text="Name"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbRealName" runat="server" 
                            meta:resourcekey="tbRealNameResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="NewPassword" runat="server" 
                            meta:resourcekey="NewPasswordResource1" Text="New Password"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbPass1" runat="server" TextMode="Password" 
                            meta:resourcekey="tbPass1Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="RepeatPassword" runat="server" 
                            meta:resourcekey="RepeatPasswordResource1" Text="New Password (again)"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbPass2" runat="server" TextMode="Password" 
                            meta:resourcekey="tbPass2Resource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="CurrentPassword" runat="server" 
                            meta:resourcekey="CurrentPasswordResource1" Text="Current Password"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbPass" runat="server" TextMode="Password" 
                            meta:resourcekey="tbPassResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        &nbsp;
                    </td>
                    <td class="value">
                        <asp:Button ID="bUpdateAccount" runat="server" Text="Update Account" 
                            OnClick="bUpdateAccount_Click" meta:resourcekey="bUpdateAccountResource1" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
