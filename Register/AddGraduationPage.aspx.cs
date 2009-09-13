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
using System.Collections.Generic;

public partial class AddGraduationPage : ProtectedPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        VerifyUserPermission(Club.Permission.EditGraduation);

        // On first load, set the date and fill defatuls
        if (!IsPostBack)
        {
            calWhen.SelectedDate = DateTime.Now;
            FillDefaults();
        }
    }

    /// <summary>
    /// Load defaults (previously filled values) for this user
    /// </summary>
    private void FillDefaults()
    {
        User current = Manager.Instance.GetUser((Guid)Session["user"]);
        tbExaminer.Text = current.GetDefaultValue("Graduation", "tbExaminer");
        tbInstructor.Text = current.GetDefaultValue("Graduation", "tbInstructor");
        int selectedIndex = 0;
        int.TryParse(current.GetDefaultValue("Graduation", "ddGrade"), out selectedIndex);
        ddGrade.SelectedIndex = selectedIndex;
    }

    /// <summary>
    /// Save defaults until next time the form is displayed
    /// </summary>
    private void SaveDefaults()
    {
        User current = Manager.Instance.GetUser((Guid)Session["user"]);
        current.SetDefaultValue("Graduation", "tbExaminer", tbExaminer.Text);
        current.SetDefaultValue("Graduation", "tbInstructor", tbInstructor.Text);
        current.SetDefaultValue("Graduation", "ddGrade", ddGrade.SelectedIndex.ToString());
    }

    /// <summary>
    /// Add a new graduation to the selected student.
    /// </summary>
    protected void bSave_Click(object sender, EventArgs e)
    {
        VerifyUserPermission(Club.Permission.EditGraduation);

        Guid cId = (Guid)Session["club"];

        Dictionary<Guid, bool> selected = (Dictionary<Guid, bool>) Session["selectedStudents"];
        if (selected == null || selected.Count == 0)
        {
            Response.Redirect("Default.aspx");
            return;
        }

        foreach (Guid sId in selected.Keys)
        {
            Student s = Manager.Instance.GetStudentInClub(cId, sId);
            if (s != null)
            {
                Graduation g = new Graduation();
                g.When = calWhen.SelectedDate;
                g.Examiner = tbExaminer.Text;
                g.Instructor = tbInstructor.Text;
                g.Grade = int.Parse(ddGrade.SelectedValue);
                s.Graduations.Add(g);
            }
        }

        SaveDefaults();
        Manager.Instance.Save();
        Session.Remove("selectedStudents");
        Response.Redirect("ClubPage.aspx");
    }
}
