using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections.Generic;
using System.Xml.Serialization;

/// <summary>
/// Summary description for DataStore
/// </summary>
public class DataStore
{
	public DataStore()
	{
        _clubs = new List<Club>();
        _users = new List<User>();
	}

    /// <summary>
    /// Sort the club list and recursively tidy the Clubs.
    /// </summary>
    public void Tidy()
    {
        _clubs.Sort(delegate(Club a, Club b) { return a.Name.CompareTo(b.Name); });
        foreach (Club c in _clubs)
        {
            c.Tidy();
        }
    }

    private string _organization;
    [XmlAttribute]
    public string Organization
    {
        get { return _organization; }
        set { _organization = value; }
    }

    private List<Club> _clubs;
    public List<Club> Clubs
    {
        get { return _clubs; }
        set { _clubs = value; }
    }

    private List<User> _users;
    public List<User> Users
    {
        get { return _users; }
        set { _users = value; }
    }
}
