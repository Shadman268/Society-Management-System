using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberMsg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        Label1.Visible = false;
        string str,Owner;
        str = Application["UserEmail"].ToString();
        //Response.Write(str);

        String query = "select FName from MemberTable where Email='" + str + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader reader = com.ExecuteReader();
        reader.Read();
        Owner = reader["FName"].ToString();
        //Response.Write(Owner);
        reader.Close();

        query = "select Owner from MsgTable where Owner='" + Owner + "'";
        com = new SqlCommand(query, con);
        SqlDataReader reader1 = com.ExecuteReader();
        reader1.Read();
        
        if (reader1 != null)
        {
            if (reader1.HasRows)
            {
                com = new SqlCommand("select Sender,Message from MsgTable where Owner='"+Owner+"'", con);
                SqlDataAdapter d1 = new SqlDataAdapter(com);
                System.Data.DataTable Dt1 = new System.Data.DataTable();
                d1.Fill(Dt1);
                MemberMsgGridView.DataSource = Dt1;
                MemberMsgGridView.DataBind();

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "No messege found.";
            }
        }
        else
           reader1.Close();

    }

    
}