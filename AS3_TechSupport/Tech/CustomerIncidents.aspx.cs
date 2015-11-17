﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport {
    public partial class CustomerIncidents : System.Web.UI.Page {
        //protected DataView customerInfoOut;

        protected void Page_Load(object sender, EventArgs e) {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) {
            int numRows = GridView1.Rows.Count;
        }

        protected void btnGetCustomer_Click(object sender, EventArgs e) {
            RunQuerys(txtCustomerID1.Text);
        }

        protected void btnTest_Click(object sender, EventArgs e) {
            int numRows = GridView1.Rows.Count; //Gets entries in 
            //txtTest.Text = numRows.ToString();
        }

        protected void RunQuerys(string customerID) {
            //Clear data source perameters
            sqlCustomerInfo.SelectParameters.Clear();
            sqlIncidents.SelectParameters.Clear();

            //Add customerID as a parameter
            sqlCustomerInfo.SelectParameters.Add("CustomerID", customerID);
            sqlIncidents.SelectParameters.Add("CustomerID", customerID);
             

            //Run select statements
            DataView customerInfoOut = (DataView)sqlCustomerInfo.Select(new DataSourceSelectArguments());
            sqlIncidents.Select(new DataSourceSelectArguments());

            foreach (DataRowView infoRow in customerInfoOut) {
                //DataRowView infoRow = customerInfoOut[0];

                txtCustomerID2.Text = infoRow["CustomerID"].ToString();
                //txtCustomerID2.Text = "Test";
                txtName.Text = infoRow["Name"].ToString();
                txtAddress.Text = infoRow["Address"].ToString();
                txtCity.Text = infoRow["City"].ToString();
                txtState.Text = infoRow["State"].ToString();
                txtZip.Text = infoRow["ZipCode"].ToString();
                txtPhone.Text = infoRow["Phone"].ToString();
                txtEmail.Text = infoRow["Email"].ToString();
            }

            //MessageBox.Show("Hello");
            //ClientScript.RegisterStartupScript(this.GetType(), "Test Dialog", "alert('" + "Hello" + "');", true);
        }

        protected void sqlCustomerInfo_Selected(object sender, SqlDataSourceStatusEventArgs e) {
        }

        protected void btnAddIncident_Click(object sender, EventArgs e)
        {
            Response.Redirect("Support/AddIncident.aspx");
        }

        protected void btnManageIncidents_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tech/ManageIncident.aspx");
        }
    }
}