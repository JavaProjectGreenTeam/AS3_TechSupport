using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport
{
    public partial class CustomerIncidents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TechSupport.SelectCommand = "SELECT ProductCode, DateOpened, DateClosed, Title FROM Incidents WHERE CustomerID = " + lblCustomerID1.Text;
            //SELECT [ProductCode], [DateOpened], [DateClosed], [Title] FROM [Incidents]
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGetCustomer_Click(object sender, EventArgs e) {
            if (txtCustomerID1.Text != "") {
                TechSupport.SelectCommand = "SELECT ProductCode, DateOpened, DateClosed, Title FROM Incidents WHERE CustomerID = " + txtCustomerID1.Text;
                TechSupport.Select(new DataSourceSelectArguments());
                GridView1.Visible = true;
            } else {
                GridView1.Visible = false;
            }
        }
    }
}