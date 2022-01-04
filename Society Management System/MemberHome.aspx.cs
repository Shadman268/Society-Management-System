using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string Name;
       
        Name = Application["UserEmail"].ToString();
        //Response.Write(Name); 
        con.Open();
        string query = "select SName from MemberTable where Email='" + Name + "'";               
        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader reader = com.ExecuteReader();

        reader.Read();
        Label2.Text = reader["SName"].ToString();

    }
}