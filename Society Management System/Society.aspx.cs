using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Society : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("Delete from MsgTable", con);
        com.ExecuteNonQuery();
        con.Close();
        Label4.Visible = false;
        if (!IsPostBack)
        {
            LoadRecord();
        }
    }

    

    protected void addsocietyBtn_Click(object sender, EventArgs e)
    {
        if (snametxt.Text == "" || snotxt.Text == "" || saddresstxt.Text == "")
        {
            Label4.Visible = true;
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Give All Information!";
        }
        else
        {
            con.Open();
            SqlCommand com = new SqlCommand("Insert into SocietyTable1(SName,Address,NoOfHouses) values('" + snametxt.Text + "','" + saddresstxt.Text + "','" + snotxt.Text + "')", con);
            com.ExecuteNonQuery();
            con.Close();
            LoadRecord();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Inserted Successfully')", true);
            clearAll();
        }
        
    }

    protected void LinkBtnDelete_Click(object sender, EventArgs e)
    {
        int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        string SName = societyGridView.Rows[rowindex].Cells[1].Text;
        con.Open();
        SqlCommand com = new SqlCommand("Delete SocietyTable1 where SName='"+SName+"'", con);
        com.ExecuteNonQuery();
        //
        com = new SqlCommand("Delete  from HouseTable1 where SName='" + SName + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("Delete  from MemberTable where SName='" + SName + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("Delete  from RentTable where SName='" + SName + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("Delete  from SellTable where SName='" + SName + "'", con);
        com.ExecuteNonQuery();
        //

        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deleted Successfully')", true);
        LoadRecord();
    }

    void LoadRecord()
    {
        SqlCommand com = new SqlCommand("select * from SocietyTable1", con);
        SqlDataAdapter d = new SqlDataAdapter(com);
        System.Data.DataTable Dt = new System.Data.DataTable();
        d.Fill(Dt);
        societyGridView.DataSource = Dt;
        societyGridView.DataBind();
    }

    void clearAll()
    {
        snametxt.Text = "";
        saddresstxt.Text = "";
        snotxt.Text = "";
    }


}