using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void adminBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");

    }

    protected void MemberBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemberLogin.aspx");
    }

    protected void SocietyBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Visitor.aspx");
    }
}