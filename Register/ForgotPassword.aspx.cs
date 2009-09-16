using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bRequest_Click(object sender, EventArgs e)
    {
        pMessage.Visible = true;
        pForm.Visible = false;
        string username = tbUser.Text;
        string newPassword = "f00barbaz";
        User[] users = Manager.Instance.AllUsers();
        foreach (User u in users) {
            if (u.Login == username)
            {
                u.PasswordHash = Manager.ComputeHash(newPassword);
                Manager.Instance.Save();
                SendEmail(Manager.Instance.Email, u.Email, "New password", "You are receiving this email because someone has requested a new password for this account, through the web page. If it wasn't you, you don't need to worry - you are the only one recieving this email.\n\nYour new password is: " + newPassword + "\n\n");
                break;
            }
        }
    }

    private bool SendEmail(string from, string to, string subject, string message)
    {
        try
        {
            MailMessage email = new MailMessage(from, to, subject, message);
            User current = Manager.Instance.GetUser((Guid)Session["user"]);
            email.Headers.Add("X-TIA-User", current.Login + " (" + current.RealName + ")");
            SmtpClient emailClient = new SmtpClient("localhost");
            emailClient.Send(email);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }


}
