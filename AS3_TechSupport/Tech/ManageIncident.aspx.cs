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
            string selectedID = PreviousPage.SelectedID;

            if (selectedID != "") {
                //Clear sql parameters
                sqlGetIncident.SelectParameters.Clear();

                //Add sql parameters
                sqlGetIncident.SelectParameters.Add("IncidentID", selectedID);

                //Execute sql query
                DataView incidentInfo = (DataView)sqlGetIncident.Select(new DataSourceSelectArguments());

                //Populate text boxes from data
                foreach (DataRowView infoRow in incidentInfo) {
                    txtCustomerID.Text = infoRow["CustomerID"].ToString();
                    txtIncidentID.Text = infoRow["IncidtentID"].ToString(); ;
                    txtDateOpened.Text = infoRow["DateOpened"].ToString(); ;
                    txtProductCode.Text = infoRow["ProductCode"].ToString(); ;
                    txtTitle.Text = infoRow["Title"].ToString(); ;
                    txtDescription.Text = infoRow["Description"].ToString(); ;
                }
            }
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