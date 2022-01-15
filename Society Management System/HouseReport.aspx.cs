using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HouseReport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SADDU-S;Initial Catalog=Project;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string CS = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select SName from SocietyTable1", con);
                
                SqlDataReader rdr = cmd.ExecuteReader();
                housereportDropDownList.DataTextField = "SName";
                housereportDropDownList.DataValueField = "SName";
                housereportDropDownList.DataSource = rdr;
                housereportDropDownList.DataBind();

                housereportDropDownList.Items.Insert(0, "<-- Select -->");
                con.Close();
            }
        }


    }
    protected void viewhousereport_Click(object sender, EventArgs e)
    {
        string selected = housereportDropDownList.SelectedItem.Text;
        string query = "select * from HouseTable1 where SName='" + selected + "'";
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter d = new SqlDataAdapter(com);
        DataTable Dt = new System.Data.DataTable();
        d.Fill(Dt);
        housereportGridView.DataSource = Dt;
        housereportGridView.DataBind();
    }
}
