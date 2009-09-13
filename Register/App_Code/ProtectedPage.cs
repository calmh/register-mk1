using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for ProtectedPage
/// </summary>
public class ProtectedPage : System.Web.UI.Page
{
    public ProtectedPage()
    {
    }

    public bool VerifyIsLoggedIn()
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
            return false;
        }
        return true;
    }

    public bool VerifyHasClub()
    {
        if (Session["club"] == null)
        {
            Response.Redirect("Default.aspx");
            return false;
        }
        return true;
    }

    public bool VerifyMinimumClubPermission(Club.Permission needPerm)
    {
        return VerifyMinimumClubPermission(needPerm, "Default.aspx");
    }

    public bool VerifyMinimumClubPermission(Club.Permission needPerm, string redirectTo)
    {
        if (!VerifyIsLoggedIn())
            return false;
        if (!VerifyHasClub())
            return false;

        Guid uId = (Guid)Session["user"];
        Guid cId = (Guid)Session["club"];
        //Manager.PermissionEnum userPerm = Manager.Instance.GetClubPermissionForUser(uId, cId);
        Club c = Manager.Instance.GetClub(cId);
        int p = c.GetPermission(uId);
        if ((p & (int)needPerm) != (int)needPerm)
        {
            Response.Redirect(redirectTo);
            return false;
        }
        return true;
    }
}
