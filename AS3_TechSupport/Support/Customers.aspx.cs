using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport.Support {
    public partial class Customers : System.Web.UI.Page {

        //int selectedIndex;
        
        protected void Page_Load(object sender, EventArgs e) {
            //selectedIndex = tblCustomers.SelectedIndex;
            //txtCustomerID.Text = selectedIndex.ToString();
        }
        
        protected void btnSearch_Click(object sender, EventArgs e) {
            if (txtSearch.Text != "") {
                string customerID = txtSearch.Text;
                Query(customerID);
            }
        }

        protected void tblCustomers_SelectedIndexChanged(object sender, EventArgs e) {
            GridViewRow selectedRow = tblCustomers.SelectedRow;
            string customerID = selectedRow.Cells[1].Text;
            Query(customerID);
            txtSearch.Text = "";
        }

        protected DataView customerInfo;

        protected void Query(string customerID) {
            sqlSearchQuery.SelectParameters.Clear();

            sqlSearchQuery.SelectParameters.Add("CustomerID", customerID);

            customerInfo = (DataView)sqlSearchQuery.Select(new DataSourceSelectArguments());

            foreach (DataRowView infoRow in customerInfo) {

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
    }
}