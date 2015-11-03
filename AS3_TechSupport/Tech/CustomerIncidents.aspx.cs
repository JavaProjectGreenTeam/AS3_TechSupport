using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport
{
    public partial class CustomerIncidents : System.Web.UI.Page
    {
        protected DataView customerInfoOut =null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //sqlIncidents.SelectCommand = "SELECT ProductCode, DateOpened, DateClosed, Title FROM Incidents WHERE CustomerID = " + lblCustomerID1.Text;
            //SELECT [ProductCode], [DateOpened], [DateClosed], [Title] FROM [Incidents]
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int numRows = GridView1.Rows.Count;
        }

        protected void btnGetCustomer_Click(object sender, EventArgs e) {
                RunQuerys(txtCustomerID1.Text);
        }

        protected void btnTest_Click(object sender, EventArgs e) {
            int numRows = GridView1.Rows.Count;
            txtTest.Text = numRows.ToString();
        }

        protected void RunQuerys(string customerID) {
            //Clear data source perameters
            sqlCustomerInfo.SelectParameters.Clear();
            sqlIncidents.SelectParameters.Clear();

            //Add customerID as a perameter
            sqlCustomerInfo.SelectParameters.Add("CustomerID", customerID);
            sqlIncidents.SelectParameters.Add("CustomerID", customerID);

            //Run select statements
            DataView customerInfoOut = (DataView)sqlCustomerInfo.Select(new DataSourceSelectArguments());
            sqlIncidents.Select(new DataSourceSelectArguments());
        }

        protected void sqlCustomerInfo_Selected(object sender, SqlDataSourceStatusEventArgs e) {
            if (customerInfoOut != null) {
                txtCustomerID2.Text = customerInfoOut["CustomerID"].ToString();
                txtName.Text = customerInfoOut["CustomerID"].ToString();
                txtAddress.Text = customerInfoOut["CustomerID"].ToString();
                txtCity.Text = customerInfoOut["CustomerID"].ToString();
                txtState.Text = customerInfoOut["CustomerID"].ToString();
                txtZip.Text = customerInfoOut["CustomerID"].ToString();
                txtPhone.Text = customerInfoOut["CustomerID"].ToString();
                txtEmail.Text = customerInfoOut["CustomerID"].ToString();
            }
        }
    }
}