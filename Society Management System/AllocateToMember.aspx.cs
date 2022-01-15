using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class AllocateToMember : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            Label9.Visible = false;
            Label10.Visible = false;
            string CS = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select SName from SocietyTable1", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                memberSocietyNameDropDownList.DataTextField = "SName";
                memberSocietyNameDropDownList.DataValueField = "SName";
                memberSocietyNameDropDownList.DataSource = rdr;
                memberSocietyNameDropDownList.DataBind();

                memberSocietyNameDropDownList.Items.Insert(0, "<-- Select -->");
                con.Close();

            }

        }
    }



    protected void addmemberBtn_Click(object sender, EventArgs e)
    {       
        if (FileUpload1.FileName=="" ||TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
        {
            Label9.Visible = true;
            Label9.ForeColor = System.Drawing.Color.Red;
            Label9.Text = "Give All Information!";
        }
        else
        {
            string conn = "Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(conn);
            FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
            String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
            String query = "Insert into MemberTable(FName,LName,Email,Mobile,SName,HNo,Photo,UName,Pass)values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + memberSocietyNameDropDownList.SelectedItem.Text + "','" + memberHouseNoDropDownList.SelectedItem.Text + "','" + link + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";

            SqlCommand cmd = new SqlCommand(query, sqlcon);
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            sqlcon.Close();
            Label9.Visible = true;
            Label9.Text = "Member Added Successfully";
            clearAll();
        }
        

    }

    protected void getBtn_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            string selected = memberSocietyNameDropDownList.SelectedItem.Text;
            
            SqlCommand cmd = new SqlCommand("Select * from HouseTable1 where SName='"+selected+ "'", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            memberHouseNoDropDownList.DataTextField = "HouseNo";
            memberHouseNoDropDownList.DataValueField = "HouseNo";
            memberHouseNoDropDownList.DataSource = rdr;
            memberHouseNoDropDownList.DataBind();

            memberHouseNoDropDownList.Items.Insert(0, "<-- Select -->");
            con.Close();
        }
    }

    protected void memberHouseNoDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {  
        SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");
        con.Open();
        String query = "select SName,HNo from MemberTable where SName='"+memberSocietyNameDropDownList.SelectedItem.Text+"' and HNo='"+memberHouseNoDropDownList.SelectedItem.Value+"' ";

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader rdr = cmd.ExecuteReader();
        
        if(rdr.HasRows)
        {
            //System.Diagnostics.Debug.WriteLine(rdr);
            Label10.Visible = true;
            Label10.Text = "Already Allocated";
        }
        else
        {
            Label10.Visible = false;
        }
        
    }
    void clearAll()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
}