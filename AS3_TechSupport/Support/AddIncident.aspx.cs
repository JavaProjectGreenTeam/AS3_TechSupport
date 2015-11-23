/**********
 * Joseph Meagalli
 * 5050630103
 * Team Green
 */  

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport
{
    public partial class AddIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   // will automatically add todays date to the date opened field
            string regDate = DateTime.Today.ToString("dd/MM/yyyy");
            txtDateOpened.Text = regDate;
        }

        protected void btnAddIncident_Click(object sender, EventArgs e)
        {
            if (Validator.CheckFields(new TextBox[] { txtCustomerID2, txtProductCode, txtTitle, txtDescription })) {
                Add();
            }
        }
        private void Add()
        {
            //Clear the parameters
            sqlAddIncident.SelectParameters.Clear();
            sqlCustomerID.SelectParameters.Clear();





            //gets information to insert into SQL database

            sqlAddIncident.InsertParameters.Add("CustomerID", txtCustomerID2.Text);
            sqlAddIncident.InsertParameters.Add("DateOpened", DbType.DateTime, DateTime.Parse(txtDateOpened.Text).ToString());
            sqlAddIncident.InsertParameters.Add("ProductCode", txtProductCode.Text);
            sqlAddIncident.InsertParameters.Add("Title", txtTitle.Text);
            sqlAddIncident.InsertParameters.Add("Description", txtDescription.Text);

            //adds to textboxes
            sqlAddIncident.Insert();

            //Redirect back to main incidents page
            Server.Transfer("~/Support/CustomerIncidents.aspx");
        }

        protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnGetID_Click(object sender, EventArgs e)
        {
            // clears the parameters
            sqlCustomerID.SelectParameters.Clear();

            // adding the selecting to the required fields
            sqlCustomerID.SelectParameters.Add("Name", ddlName.SelectedItem.Text);

            DataView customerInfo = (DataView)sqlCustomerID.Select(new DataSourceSelectArguments());

            foreach (DataRowView infoRow in customerInfo)
            {
                //putting the selected information into the textbox
                txtCustomerID2.Text = infoRow["CustomerID"].ToString();
            }
        }

        protected void btnTechName_Click(object sender, EventArgs e)
        {

        }

        protected void btnProductCode_Click(object sender, EventArgs e)
        {
            //clears the parameters
            sqlProductCode.SelectParameters.Clear();

            //adding the selected to the required fields
            sqlProductCode.SelectParameters.Add("Name", ddlProduct.SelectedItem.Text);

            DataView productInfo = (DataView)sqlProductCode.Select(new DataSourceSelectArguments());

            foreach (DataRowView infoRow in productInfo)
            {
                //putting the selecting information into textbox
                txtProductCode.Text = infoRow["ProductCode"].ToString();
            }


        }
    }
}
