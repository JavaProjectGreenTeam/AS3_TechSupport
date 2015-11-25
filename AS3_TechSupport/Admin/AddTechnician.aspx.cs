/*****************
 * Joseph Meagalli 5050630103
 * Ryan Gallagher 
 * Nick Lambell 3100298414
 * Version 1.0
 * bugs: none so far
 */
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
            if (Validator.CheckFields(new TextBox[] { txtTechName, txtTechEmail, txtTechPhone })) {
                AddTech();
            }
        }
        protected void AddTech()
        {
            //Clear sql parameters
            sqlAddTechnician.InsertParameters.Clear();

            //Set sql parameters
            sqlAddTechnician.InsertParameters.Add("Name", txtTechName.Text);
            sqlAddTechnician.InsertParameters.Add("Email", txtTechEmail.Text);
            sqlAddTechnician.InsertParameters.Add("Phone", txtTechPhone.Text);

            //Execute query
            sqlAddTechnician.Insert();

            //Redirect to technicians page
            Response.Redirect("Technician.aspx");

            //try
            //{
            //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
            //    conn.Open();
            //    string insertQuery = " insert into Technicians (Name, Email, Phone) values (@name, @email, @phone)";
            //    SqlCommand com = new SqlCommand(insertQuery, conn);

            //    com.Parameters.AddWithValue("@name", txtTechName.Text);
            //    com.Parameters.AddWithValue("@email", txtTechEmail.Text);
            //    com.Parameters.AddWithValue("@phone", txtTechPhone.Text);

            //    com.ExecuteNonQuery();
            //    string display = "Registration is Complete";
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
        
            //    Response.Redirect("Technician.aspx");

               

            //    conn.Close();
            //}
            //catch (Exception ex)
            //{
            //    Response.Write("Error" + ex.ToString());
            //}

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Technician.aspx");
        }
    }
}


            
        
    
