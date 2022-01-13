using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberHome : System.Web.UI.Page
{
    String Owner;
    
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        RentPriceLabel.Visible = false;
        Label9.Visible = false;
        RentPriceTextBox.Visible = false;
        RentButton.Visible = false;
        SellButton.Visible = false;
        SellPriceLabel.Visible = false;
        SellPriceTextBox.Visible = false;

        string Name;

        Name = Application["UserEmail"].ToString();
        String query = "select FName from MemberTable where Email='" + Name + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader reader = com.ExecuteReader();
        reader.Read();
        Owner = reader["FName"].ToString();
        //Response.Write(Owner);
        reader.Close();

        /*
        query = "Delete from RentTable where price='0'";
        com = new SqlCommand(query, con);
        com.ExecuteNonQuery();*/

        query = "select SName from MemberTable where Email='" + Name + "'";               
        com = new SqlCommand(query, con);
        SqlDataReader reader4 = com.ExecuteReader();

        reader4.Read();
        Label2.Text = reader4["SName"].ToString();
        String s1 = reader4["SName"].ToString();
        reader4.Close();
        //
        query = "select HNo from MemberTable where Email='" + Name + "'";
        com = new SqlCommand(query, con);
        SqlDataReader reader1 = com.ExecuteReader();

        reader1.Read();
        Label3.Text = reader1["HNo"].ToString();
        String s2 = reader1["HNo"].ToString();
        reader1.Close();
        //
        query = "select Size from HouseTable1 where SName='" +s1+ "' and HouseNo='"+s2+ "'";
        com = new SqlCommand(query, con);
        reader = com.ExecuteReader();

        reader.Read();
        Label6.Text = reader["Size"].ToString();
        reader.Close();
        //
        query = "select Type from HouseTable1 where SName='" + s1 + "' and HouseNo='" + s2 + "'";
        com = new SqlCommand(query, con);
        reader = com.ExecuteReader();

        reader.Read();
        Label8.Text = reader["Type"].ToString();
        reader.Close();
        con.Close();



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        RentPriceLabel.Visible = true;
        RentPriceTextBox.Visible = true;
        RentButton.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SellButton.Visible = true;
        SellPriceLabel.Visible = true;
        SellPriceTextBox.Visible =true;
    }

    protected void RentButton_Click(object sender, EventArgs e)
    {
        con.Open();

        String query = "Select Owner from RentTable where Owner='" +Owner+ "' ";

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader rdr = cmd.ExecuteReader();
        rdr.Read();
        
        if(rdr != null)
        {
            if (rdr.HasRows)
            {
                System.Diagnostics.Debug.WriteLine(rdr);
                Label9.Visible = true;
                Label9.Text = "Already sent";
                rdr.Close();
                //Response.Write("here1");

            }
            else
            {
                rdr.Close();
                //Response.Write("here2");
                SqlCommand com1 = new SqlCommand("Insert into RentTable(Owner,SName,HNo,Type,Size,Price) values('" + Owner + "','" + Label2.Text + "','" + Label3.Text + "','" + Label8.Text + "','" + Label6.Text + "','" + RentPriceTextBox.Text + "')", con);
                com1.ExecuteNonQuery();
                con.Close();
                Label9.Visible = true;
                Label9.Text = "Rent Request Sent Successfully";
            }
        }
        
        
        con.Close();

    }
    
    protected void SellButton_Click(object sender, EventArgs e)
    {
        con.Open();

        String query = "Select Owner from SellTable where Owner='" + Owner + "' ";

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader rdr = cmd.ExecuteReader();
        rdr.Read();

        if (rdr != null)
        {
            if (rdr.HasRows)
            {
                //System.Diagnostics.Debug.WriteLine(rdr);
                Label10.Visible = true;
                Label10.Text = "Already sent";
                rdr.Close();
                //Response.Write("here1");

            }
            else
            {
                //Response.Write("here2");
                rdr.Close();
                SqlCommand com1 = new SqlCommand("Insert into SellTable(Owner,SName,HNo,Type,Size,Price) values('" + Owner + "','" + Label2.Text + "','" + Label3.Text + "','" + Label8.Text + "','" + Label6.Text + "','" + SellPriceTextBox.Text + "')", con);
                com1.ExecuteNonQuery();
                con.Close();
                Label10.Visible = true;
                Label10.Text = "Sell Request Sent Successfully";
            }
        }
        con.Close();
    }

    protected void checkBtn_Click(object sender, EventArgs e)
    {
        string Name;

        Name = Application["UserEmail"].ToString();
        Response.Redirect("MemberMsg.aspx");
    }
}