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
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport
{
    public partial class AddRegistration : System.Web.UI.Page
    {
        protected DataView customerInfo;

        protected void Page_Load(object sender, EventArgs e)
        {
            //creates a string for the DateTime function
            string regDate = DateTime.Today.ToString("dd/MM/yyyy");
            txtRegDate.Text = regDate;
        }

        protected void btnRegisterProduct_Click(object sender, EventArgs e)
        {
            //Clear data source
            sqlGetCustomerID.SelectParameters.Clear();
            sqlGetProductCode.SelectParameters.Clear();


            //add the parameter
           
            sqlGetCustomerID.SelectParameters.Add("CustomerName", ddlCustomer.SelectedItem.Text);
            sqlGetProductCode.SelectParameters.Add("ProductName", ddlProduct.SelectedItem.Text);

                
            // run select statements
            DataView customerInfo = (DataView)sqlGetCustomerID.Select(new DataSourceSelectArguments());
            DataView productInfo = (DataView)sqlGetProductCode.Select(new DataSourceSelectArguments());
           
            //declaring variables
            string customerID = "";
            string productCode = "";

            foreach (DataRowView infoRow in customerInfo)
            {
                customerID = infoRow["CustomerID"].ToString();
            }
                
            
            foreach (DataRowView infoBow in productInfo){
                productCode = infoBow["ProductCode"].ToString();
            }
                //clear parameters   
            sqlAddRegistration.InsertParameters.Clear();
            //inserting parameters
            sqlAddRegistration.InsertParameters.Add("CustomerID", customerID);
            sqlAddRegistration.InsertParameters.Add("ProductCode", productCode);
            sqlAddRegistration.InsertParameters.Add("RegDate", txtRegDate.Text);
            try
            {
                sqlAddRegistration.Insert();
            }
            catch (SqlException)
            {
                //string duplicate = "Registration is Complete";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Duplicate data entry!! User can only have product registered once" + "');", true);
            }

            // pop-up dialog box
            string display = "Registration is Complete";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            
                
            }
        }
    }
