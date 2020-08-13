using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton5.CssClass = "hidden";
        LinkButton5.CssClass = "hidden";
        User user;
        if (Session["User"] == null)
        {
            user = new User();
        }
        else
        {
            user = (User)Session["User"];
            LinkButton1.CssClass = "hidden";
            LinkButton2.CssClass = "hidden";
            ImageButton5.CssClass = "show";
            LinkButton5.CssClass = "show";
            lblUserName.Text = user.FullName;
        }
    }

    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        lblUserName.Text = "";
        LinkButton1.CssClass = "show";
        LinkButton2.CssClass = "show";
        LinkButton5.CssClass = "hidden";
        ImageButton5.CssClass = "hidden";
        Session.Remove("User");
        Session.Remove("UserName");
    }
}
