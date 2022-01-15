using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void RentBtn_Click(object sender, EventArgs e)
    {
        SellGridView.Visible = false;
        RentGridView.Visible = true;
        SqlCommand com = new SqlCommand("select * from RentTable", con);
        SqlDataAdapter d = new SqlDataAdapter(com);
        System.Data.DataTable Dt = new System.Data.DataTable();
        d.Fill(Dt);
        RentGridView.DataSource = Dt;
        RentGridView.DataBind();
    }

    protected void RentGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Click")
        {
            //Determine the RowIndex of the Row whose Button was clicked.
            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //Reference the GridView Row.
            GridViewRow row = RentGridView.Rows[rowIndex];

            //Fetch value of Name.
            //string name = (row.FindControl("txtName") as TextBox).Text;

            //Fetch value of Owner
            string Owner = row.Cells[1].Text;
            Application["owner"] = Owner;
            System.Diagnostics.Debug.WriteLine(Owner);
        }
        Response.Redirect("SendMessage.aspx");

    }

    protected void SellGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Click1")
        {
            //Determine the RowIndex of the Row whose Button was clicked.
            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //Reference the GridView Row.
            GridViewRow row = SellGridView.Rows[rowIndex];

            //Fetch value of Name.
            //string name = (row.FindControl("txtName") as TextBox).Text;

            //Fetch value of Owner
            string Owner = row.Cells[1].Text;
            Application["owner"] = Owner;
            System.Diagnostics.Debug.WriteLine(Owner);
        }
        Response.Redirect("SendMessage.aspx");

    }

    protected void SellBtn_Click1(object sender, EventArgs e)
    {
        RentGridView.Visible = false;
        SellGridView.Visible = true;
        SqlCommand com = new SqlCommand("select * from SellTable", con);
        SqlDataAdapter d = new SqlDataAdapter(com);
        System.Data.DataTable Dt = new System.Data.DataTable();
        d.Fill(Dt);
        SellGridView.DataSource = Dt;
        SellGridView.DataBind();
    }
}