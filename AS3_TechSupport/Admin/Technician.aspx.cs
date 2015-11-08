using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AS3_TechSupport
{
    public partial class Technician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {

        }

        protected void btnTechnician_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddTechnician.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SearchTech();
        }

        protected void SearchTech()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from technicians where TechID = '" + txtTechID.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            txtName.Text = dt.Rows[0][1].ToString();
            txtEmail.Text = dt.Rows[0][2].ToString();
            txtPhone.Text = dt.Rows[0][3].ToString();
            con.Close();
        }
    }
}