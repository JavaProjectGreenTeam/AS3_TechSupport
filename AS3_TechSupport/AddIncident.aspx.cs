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
        {
        }

        protected void btnAddIncident_Click(object sender, EventArgs e)
        {
            Add();
        }
        private void Add()
        {
           //Clear the parameters
            sqlAddIncident.SelectParameters.Clear();
            sqlCustomerID.SelectParameters.Clear();

            //adding parameters
            string dateTime = DateTime.Now.ToShortDateString();
            txtDateOpened.Text = dateTime;
            txtDateClosed.Text = dateTime;

            //gets information to insert into SQL database
           
          
            sqlAddIncident.InsertParameters.Add("DateOpened", DbType.DateTime, DateTime.Parse(txtDateOpened.Text).ToString());
            sqlAddIncident.InsertParameters.Add("DateClosed", DbType.DateTime, DateTime.Parse(txtDateClosed.Text).ToString());
            sqlAddIncident.InsertParameters.Add("Title", txtTitle.Text);
            sqlAddIncident.InsertParameters.Add("Description", txtDescription.Text);

            //adds to textboxes
            sqlAddIncident.Insert();
        }

        protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnGetID_Click(object sender, EventArgs e)
        {
             sqlCustomerID.SelectParameters.Clear();

            sqlCustomerID.SelectParameters.Add("Name", ddlName.SelectedItem.Text);

            DataView customerInfo = (DataView)sqlCustomerID.Select(new DataSourceSelectArguments());

            foreach (DataRowView infoRow in customerInfo)
            {
                txtCustomerID2.Text = infoRow["CustomerID"].ToString();
            }
        }

        
    }
}