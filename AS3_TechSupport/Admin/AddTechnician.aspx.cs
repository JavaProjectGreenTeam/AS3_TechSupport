using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace AS3_TechSupport
{
    public partial class AddTechnicianaspx : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
                con.Open();
                String checkuser = "select count(*) from Technicians where Name='" + txtTechName + "'";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                con.Close();
            }
        }

        protected void btnAddTechnician_Click(object sender, EventArgs e)
        {
            AddTech();

        }
        protected void AddTech()
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
                conn.Open();
                string insertQuery = " insert into Technicians (Name, Email, Phone) values (@name, @email, @phone)";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@name", txtTechName.Text);
                com.Parameters.AddWithValue("@email", txtTechEmail.Text);
                com.Parameters.AddWithValue("@phone", txtTechPhone.Text);

                com.ExecuteNonQuery();
                string display = "Registration is Complete";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
        
                Response.Redirect("Technician.aspx");

               

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Technician.aspx");
        }
    }
}


            
        
    
