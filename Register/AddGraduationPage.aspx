<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="AddGraduationPage.aspx.cs"
    Inherits="AddGraduationPage" uiculture="auto" meta:resourcekey="PageResource1" %>

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
        <asp:Localize ID="AddGraduation" runat="server" 
            meta:resourcekey="AddGraduationResource1" Text="Add Graduation"></asp:Localize></h1>
    <div class="section">
        <div class="form">
            <table>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Date" runat="server" meta:resourcekey="DateResource1" 
                            Text="Date"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:Calendar ID="calWhen" runat="server" BackColor="White" BorderColor="#999999"
                            CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                            ForeColor="Black" Height="180px" Width="200px" FirstDayOfWeek="Monday" 
                            meta:resourcekey="calWhenResource1">
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Grade" runat="server" meta:resourcekey="GradeResource1" 
                            Text="Grade"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:DropDownList ID="ddGrade" runat="server" 
                            meta:resourcekey="ddGradeResource1">
                            <asp:ListItem Value="-8" meta:resourcekey="ListItemResource1">Jun. Röd</asp:ListItem>
                            <asp:ListItem Value="-7" meta:resourcekey="ListItemResource2">Jun. Gul</asp:ListItem>
                            <asp:ListItem Value="-6" meta:resourcekey="ListItemResource3">Jun. Grön</asp:ListItem>
                            <asp:ListItem Value="-5" meta:resourcekey="ListItemResource4">Jun. Blå</asp:ListItem>
                            <asp:ListItem Value="-4" meta:resourcekey="ListItemResource5">Jun. Svart</asp:ListItem>
                            <asp:ListItem Value="-3" meta:resourcekey="ListItemResource6">Jun. Silver I</asp:ListItem>
                            <asp:ListItem Value="-2" meta:resourcekey="ListItemResource7">Jun. Silver II</asp:ListItem>
                            <asp:ListItem Value="-1" meta:resourcekey="ListItemResource8">Jun. Silver III</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True" meta:resourcekey="ListItemResource9">Röd I</asp:ListItem>
                            <asp:ListItem Value="2" meta:resourcekey="ListItemResource10">Röd II</asp:ListItem>
                            <asp:ListItem Value="3" meta:resourcekey="ListItemResource11">Gul I</asp:ListItem>
                            <asp:ListItem Value="4" meta:resourcekey="ListItemResource12">Gul II</asp:ListItem>
                            <asp:ListItem Value="5" meta:resourcekey="ListItemResource13">Grön I</asp:ListItem>
                            <asp:ListItem Value="6" meta:resourcekey="ListItemResource14">Grön II</asp:ListItem>
                            <asp:ListItem Value="7" meta:resourcekey="ListItemResource15">Blå I</asp:ListItem>
                            <asp:ListItem Value="8" meta:resourcekey="ListItemResource16">Blå II</asp:ListItem>
                            <asp:ListItem Value="9" meta:resourcekey="ListItemResource17">Svart I</asp:ListItem>
                            <asp:ListItem Value="10" meta:resourcekey="ListItemResource18">Svart II</asp:ListItem>
                            <asp:ListItem Value="11" meta:resourcekey="ListItemResource19">Svart III</asp:ListItem>
                            <asp:ListItem Value="12" meta:resourcekey="ListItemResource20">Svart IIII</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Examiner" runat="server" meta:resourcekey="ExaminerResource1" 
                            Text="Examiner"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbExaminer" runat="server" 
                            meta:resourcekey="tbExaminerResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        <asp:Localize ID="Instructor" runat="server" 
                            meta:resourcekey="InstructorResource1" Text="Instructor"></asp:Localize>
                    </td>
                    <td class="value">
                        <asp:TextBox ID="tbInstructor" runat="server" 
                            meta:resourcekey="tbInstructorResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="prompt">
                        &nbsp;
                    </td>
                    <td class="value">
                        <asp:Button ID="bSave" runat="server" Text="Register Graduation" 
                            OnClick="bSave_Click" meta:resourcekey="bSaveResource1" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
