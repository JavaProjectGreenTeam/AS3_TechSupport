using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport {
    public partial class AddCustomer : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (IsPostBack) {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Technicians where Name='" + txtName + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1) {
                    Response.Write("User already Exists");
                }

                conn.Close();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e) {
            try {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Customers (Name, Address, City, State, ZipCode, Phone, Email) values (@name, @address, @city, @state, @zipcode, @phone, @email)";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@name", txtName.Text);
                com.Parameters.AddWithValue("@address", txtAddress.Text);
                com.Parameters.AddWithValue("@city", txtCity.Text);
                com.Parameters.AddWithValue("@state", txtState.Text);
                com.Parameters.AddWithValue("@zipcode", txtZip.Text);
                com.Parameters.AddWithValue("@phone", txtPhone.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Customers.aspx");
                Response.Write("Registration complete");


                conn.Close();
            } catch (Exception ex) {
                Response.Write("Error" + ex.ToString());
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e) {
            Response.Redirect("Customers.aspx");
        }
    }
}