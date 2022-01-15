using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }

    protected void adminloginBtn_Click(object sender, EventArgs e)
    {
        String check = "select count(*) from [MemberTable] where Email ='" + nametxt.Text + "' and Pass ='" + passtxt.Text + "'";

        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Application["UserEmail"] = nametxt.Text;
            clearAll();
            Response.Redirect("MemberHome.aspx");
        }
        else
        {
            clearAll();
            Label4.Visible = true;
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Your email or password is invalid";

        }
        
    }

    void clearAll()
    {
        //Label4.Visible = false;
        nametxt.Text = "";
        passtxt.Text = "";
    }
}