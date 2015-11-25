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

namespace AS3_TechSupport.Tech {
    public partial class ManageIncident : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                string selectedID = Request["incidentID"];

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
                        txtIncidentID.Text = infoRow["IncidentID"].ToString();
                        txtTechID.Text = infoRow["TechID"].ToString();
                        txtDateOpened.Text = infoRow["DateOpened"].ToString();
                        txtProductCode.Text = infoRow["ProductCode"].ToString();
                        txtTitle.Text = infoRow["Title"].ToString();
                        txtDescription.Text = infoRow["Description"].ToString();
                    }

                    if (txtTechID.Text != "") {

                        //Resolve additional information
                        //Clear sql paramaters
                        sqlGetTechName.SelectParameters.Clear();

                        //Add sql parameters
                        sqlGetTechName.SelectParameters.Add("TechID", txtTechID.Text);

                        //Execute sql query
                        DataView techInfo = (DataView)sqlGetTechName.Select(new DataSourceSelectArguments());

                        //Select value from drop down list
                        ddlTechName.SelectedValue = techInfo[0]["Name"].ToString();
                    }

                    //Resolve additional information
                    //Clear sql parameters
                    sqlCustomerName.SelectParameters.Clear();
                    sqlProductName.SelectParameters.Clear();

                    //Add sql parameters
                    sqlCustomerName.SelectParameters.Add("CustomerID", txtCustomerID.Text);
                    sqlProductName.SelectParameters.Add("ProductCode", txtProductCode.Text);

                    //Execute sql querys
                    DataView customerInfo = (DataView)sqlCustomerName.Select(new DataSourceSelectArguments());
                    DataView productInfo = (DataView)sqlProductName.Select(new DataSourceSelectArguments());

                    //Populate text boxes
                    txtCustomerName.Text = customerInfo[0]["Name"].ToString();
                    txtProductName.Text = productInfo[0]["Name"].ToString();

                    //Set calendar selected date to current date
                    calDateClosed.SelectedDate = DateTime.Today;
                }
            }
        }

        //==================//
        //GUI Event Handlers//
        //==================//
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
        }

        protected void btnUpdate_Click(object sender, EventArgs e) {
            if (Validator.CheckFields(new TextBox[] { txtTechID })) {
                //Clear sql paramaters
                sqlUpdateIncident.UpdateParameters.Clear();

                //Add sql parameters
                sqlUpdateIncident.UpdateParameters.Add("IncidentID", txtIncidentID.Text);
                sqlUpdateIncident.UpdateParameters.Add("TechID", txtTechID.Text);

                //Execute sql query
                sqlUpdateIncident.Update();
            }
        }

        protected void btnClose_Click(object sender, EventArgs e) {
            if (Validator.CheckFields(new TextBox[] { txtTechID })) {
                //Clear sql paramaters
                sqlCloseIncident.UpdateParameters.Clear();

                //Add sql parameters
                sqlCloseIncident.UpdateParameters.Add("IncidentID", txtIncidentID.Text);
                sqlCloseIncident.UpdateParameters.Add("TechID", txtTechID.Text);
                sqlCloseIncident.UpdateParameters.Add("DateClosed", DbType.DateTime, calDateClosed.SelectedDate.ToString());

                //Execute sql query
                sqlCloseIncident.Update();
            }
        }
    }
}