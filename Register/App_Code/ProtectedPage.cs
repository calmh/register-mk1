using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Base class for a Page protected by the login system.
/// </summary>
public class ProtectedPage : System.Web.UI.Page
{
    public class AuthenticationError : Exception { }

    public ProtectedPage()
    {
    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        VerifyIsLoggedIn();
    }

    /// <summary>
    /// What to do when a permission check has failed.
    /// Clears the session and dumps the user to the login page.
    /// </summary>
    private void FailedPermissionCheck()
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
        throw new AuthenticationError();
    }

    /// <summary>
    /// Verify that a user is actually logged in, or redirect away from the page.
    /// This isn't a "soft" verify - the user will be forcefully kicked out if the verification fails.
    /// Use only to verify what we "know" to be true.
    /// </summary>
    public void VerifyIsLoggedIn()
    {
        if (Session["user"] == null)
            FailedPermissionCheck();
    }

    /// <summary>
    /// Check that there is a valid club in the session data, or fail with redirect.
    /// This isn't a "soft" verify - the user will be forcefully kicked out if the verification fails.
    /// Use only to verify what we "know" to be true.
    /// </summary>
    /// <returns>True if there was a valid club in the session.</returns>
    public void VerifyHasClub()
    {
        if (Session["club"] == null)
            FailedPermissionCheck();
    }

    /// <summary>
    /// Verify that the user has the requested permission, or fail with redirect.
    /// This isn't a "soft" verify - the user will be forcefully kicked out if the verification fails.
    /// Use only to verify what we "know" to be true.
    /// </summary>
    /// <param name="needPerm">The permission we are interested in.</param>
    /// <returns>True if the check succeeded.</returns>
    public bool VerifyUserPermission(Club.Permission needPerm)
    {
        // These checks shouldn't really be necessary, because they are probably already done.
        // Doesn't hurt to check again, though.
        VerifyIsLoggedIn();
        VerifyHasClub();

        Guid uId = (Guid)Session["user"];
        Guid cId = (Guid)Session["club"];
        Club c = Manager.Instance.GetClub(cId);
        int p = c.GetPermission(uId);
        if ((p & (int)needPerm) != (int)needPerm)
        {
            FailedPermissionCheck();
            return false;
        }
        return true;
    }
}
