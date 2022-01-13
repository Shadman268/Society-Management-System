using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendMessage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        String owner_name = Application["owner"].ToString();
        //Response.Write(owner_name);
        con.Open();
        String query = "select FName from MemberTable where FName='" + owner_name + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader reader = com.ExecuteReader();
        reader.Read();
        Label6.Text = reader["FName"].ToString();
        reader.Close();

        query = "select Email from MemberTable where FName='" + owner_name + "'";
        com = new SqlCommand(query, con);
        reader = com.ExecuteReader();
        reader.Read();
        Label7.Text = reader["Email"].ToString();
        reader.Close();

        query = "select Mobile from MemberTable where FName='" + owner_name + "'";
        com = new SqlCommand(query, con);
        reader = com.ExecuteReader();
        reader.Read();
        Label8.Text = reader["Mobile"].ToString();
        reader.Close();

        query = "select Photo from MemberTable where FName='" + owner_name + "'";
        com = new SqlCommand(query, con);
        reader = com.ExecuteReader();
        reader.Read();
        //Image1 = reader["Photo"];
        reader.Close();
        con.Close();
    }

    protected void MsgBtn_Click(object sender, EventArgs e)
    {
        string selected = Application["owner"].ToString(); ;
        con.Open();
        SqlCommand com = new SqlCommand("Insert into MsgTable(Sender,Owner,Message) values('" + SenderTextBox.Text + "','" + selected + "','" + MsgTextBox.Text + "')", con);
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Message Sent Successfully')", true);
    }
}