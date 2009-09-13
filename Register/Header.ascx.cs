using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Header : System.Web.UI.UserControl
{
    private User _current;
    private Club _club;

    public string Version {
        get { return "v1.3.0"; }
    }

    public string Product {
        get { return "Register"; }
    }

    public string LoggedInUser
    {
        get { return _current.RealName; }
    }

    public string SelectedClub
    {
        get { return _club.Name; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null) {
            _current = Manager.Instance.GetUser((Guid) Session["user"]);
            loggedInPanel.Visible = true;
        }

        if (Session["club"] != null)
        {
            _club = Manager.Instance.GetClub((Guid)Session["club"]);
            clubPagePanel.Visible = true;
        }

        /*
            l = new Label();
            l.Text = " | Gå till: ";
            p.Controls.Add(l);

            HyperLink h = new HyperLink();
            h.NavigateUrl = "Default.aspx";
            h.Text = "Startsida";
            p.Controls.Add(h);


            if (Session["club"] != null)
            {
                Guid cId = (Guid)Session["club"];
                Club club = Manager.Instance.GetClub(cId);

                l = new Label();
                l.Text = " eller ";
                p.Controls.Add(l);
                h = new HyperLink();
                h.NavigateUrl = "ClubPage.aspx";
                h.Text = "Klubbsida (" + club.Name + ")";
                p.Controls.Add(h);
            }

            Guid uId = (Guid)Session["user"];
            User current = Manager.Instance.GetUser(uId);
            l = new Label();
            l.Text = " | Inloggad som " + current.RealName + " (";
            p.Controls.Add(l);

            LinkButton lb = new LinkButton();
            lb.Text = "Logga ut";
            lb.ID = "bProtectedLogOut";
            lb.Click += new EventHandler(bProtectedLogOut_Click);
            p.Controls.Add(lb);

            l = new Label();
            l.Text = ")";
            p.Controls.Add(l);
        }

        Form.Controls.AddAt(0, p);
        */
    }

    protected void LogOut(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }

}
