using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddHouse : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tothouse.Visible = false;
            Label8.Visible = false;
            Label7.Visible = false;
            string CS = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select SName from SocietyTable1", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                societyDropDownList.DataTextField = "SName";
                societyDropDownList.DataValueField = "SName";
                societyDropDownList.DataSource = rdr;
                societyDropDownList.DataBind();

                societyDropDownList.Items.Insert(0, "<-- Select -->");
                con.Close();
            }

        }
    }

    protected void addhouseBtn_Click(object sender, EventArgs e)
    {
        string selected = societyDropDownList.SelectedItem.Text;
        con.Open();
        if (sizetxt.Text == "" || housenotxt.Text=="" || typetxt.Text=="" || detailstxt.Text=="")
        {
            Label7.Visible = true;
            Label7.ForeColor = System.Drawing.Color.Red;
            Label7.Text = "Give All Information!";
        }
        else
        {
            SqlCommand com = new SqlCommand("Insert into HouseTable1(SName,HouseNo,Size,Type,Details) values('" + societyDropDownList.SelectedItem.Text + "','" + housenotxt.Text + "','" + sizetxt.Text + "','" + typetxt.Text + "','" + detailstxt.Text + "')", con);
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Inserted Successfully')", true);
            clearAll();
        }
        
    }

    protected void societyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        string selected = societyDropDownList.SelectedItem.Text;
        
        //tothouse.Text = societyDropDownList.SelectedItem.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("Select NoOfHouses from SocietyTable1 where SName ='"+selected+"'", con);

        SqlDataReader reader = cmd.ExecuteReader();
        //System.Diagnostics.Debug.WriteLine(dr);
        reader.Read();
        tothouse.Text = reader["NoOfHouses"].ToString();
        reader.Close();

        cmd = new SqlCommand("Select SName from HouseTable1 where SName ='" + selected + "'", con);
        SqlDataReader reader1 = cmd.ExecuteReader();
        
        int count = 0;
        if (reader1.HasRows)
        {
            
            while(reader1.Read())
            {
                count++;
                
            }

        }
        tothouse.Visible = true;
        Label8.Visible = true;
        Label8.Text = count.ToString();
        reader1.Close();
        con.Close();
    }
    void clearAll()
    {
        housenotxt.Text = "";
        sizetxt.Text = "";
        typetxt.Text = "";
        detailstxt.Text = "";
    }
}