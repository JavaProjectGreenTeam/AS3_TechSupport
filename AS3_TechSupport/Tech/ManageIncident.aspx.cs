using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport.Tech {
    public partial class ManageIncident : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnGetTechID_Click(object sender, EventArgs e) {
            //Clear sql parameters
            sqlTechID.SelectParameters.Clear();

            //Set sql parameters
            sqlTechID.SelectParameters.Add("Name", ddlTechName.SelectedItem.Text);

            //Execute sql query
            DataView techInfo = (DataView)sqlTechID.Select(new DataSourceSelectArguments());

            //Populate textbox from data
            foreach (DataRowView infoRow in techInfo) {
                txtTechID.Text = infoRow["TechID"].ToString();
            }


            //sqlCustomerID.SelectParameters.Clear();

            //sqlCustomerID.SelectParameters.Add("Name", ddlName.SelectedItem.Text);

            //DataView customerInfo = (DataView)sqlCustomerID.Select(new DataSourceSelectArguments());

            //foreach (DataRowView infoRow in customerInfo) {
            //    txtCustomerID2.Text = infoRow["CustomerID"].ToString();
            //}
        }
    }
}