﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendEmailMessage.aspx.cs"
    Inherits="SendEmailMessage" ValidateRequest="false" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skicka epostmeddelande</title>
    <link rel="Stylesheet" href="defaults.css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Header runat="server" />
    <asp:Panel ID="messagePane" CssClass="section" runat="server" Visible="false">
        <h2>
            Epostmeddelande</h2>
        <asp:Label ID="lMessage" runat="server" Text=""></asp:Label>
    </asp:Panel>
    <div class="section">
        <table>
            <tr>
                <td class="prompt">
                    Från
                </td>
                <td class="value">
                    <asp:TextBox ID="tbFrom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    Till
                </td>
                <td class="value">
                    <asp:Label ID="lTo" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    Ärenderad
                </td>
                <td class="value">
                    <asp:TextBox ID="tbSubject" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    Meddelande
                </td>
                <td class="value">
                    <asp:TextBox ID="tbMessage" runat="server" Rows="10" Columns="40" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="prompt">
                    &nbsp;
                </td>
                <td class="value">
                    <asp:Button ID="bSend" runat="server" Text="Skicka" OnClick="bSend_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
