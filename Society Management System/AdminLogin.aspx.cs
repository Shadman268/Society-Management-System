using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }


    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");
    protected void adminloginBtn_Click(object sender, EventArgs e)
    {
        String check = "select count(*) from [adminloginTable] where username ='" + nametxt.Text + "' and password ='" + passtxt.Text + "'";

        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Response.Redirect("Admin.aspx");
        }
        else
        {
            Label4.Visible = true;
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Invalid User!!!";

        }
    }
}