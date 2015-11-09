using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*****************************
 * Author: Ryan Gallagher
 * **************************/

namespace AS3_TechSupport.Support {
    public partial class Customers : System.Web.UI.Page {

        //int selectedIndex;

        protected void Page_Load(object sender, EventArgs e) {
            //selectedIndex = tblCustomers.SelectedIndex;
            //txtCustomerID.Text = selectedIndex.ToString();
        }

        protected void btnSearch_Click(object sender, EventArgs e) {
            //calls the query method to search the customers table for the given ID
            if (txtSearch.Text != "") {
                string customerID = txtSearch.Text;
                Query(customerID);
            }
        }

        protected void tblCustomers_SelectedIndexChanged(object sender, EventArgs e) {
            //fills the textboxes when a user selects a customer from the table
            GridViewRow selectedRow = tblCustomers.SelectedRow;
            string customerID = selectedRow.Cells[1].Text;
            Query(customerID);
            txtSearch.Text = "";
        }

        protected DataView customerInfo;
        //Nicks Code
        protected void Query(string customerID) {
            sqlSearchQuery.SelectParameters.Clear();

            sqlSearchQuery.SelectParameters.Add("CustomerID", customerID);

            customerInfo = (DataView)sqlSearchQuery.Select(new DataSourceSelectArguments());

            foreach (DataRowView infoRow in customerInfo) {

                //puts all the colums of the selected customer into strings
                txtCustomerID.Text = infoRow["CustomerID"].ToString();
                txtName.Text = infoRow["Name"].ToString();
                txtAddress.Text = infoRow["Address"].ToString();
                txtCity.Text = infoRow["City"].ToString();
                txtState.Text = infoRow["State"].ToString();
                txtZip.Text = infoRow["ZipCode"].ToString();
                txtPhone.Text = infoRow["Phone"].ToString();
                txtEmail.Text = infoRow["Email"].ToString();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e) {
            string customerID = txtCustomerID.Text;
            Delete(customerID);
        }

        protected void Delete(string customerID) {
            sqlDelete.DeleteParameters.Clear();
            sqlDelete.DeleteParameters.Add("CustomerID", customerID);
            //string deleteQuery = "DELETE FROM Customers WHERE (CustomerID = @customerID)";
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e) {
            Response.Redirect("AddCustomer.aspx");
        }
    }
}