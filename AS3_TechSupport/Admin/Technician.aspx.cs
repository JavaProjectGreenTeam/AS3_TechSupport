using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Specialized;

namespace AS3_TechSupport {
    public partial class Technician : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }


        //==================//
        //GUI Event Handlers//
        //==================//

        protected void btnTechnician_Click(object sender, EventArgs e) {
            Server.Transfer("AddTechnician.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e) {
            SearchTech();
            txtTechID.Text = "";
        }

        protected void btnTechFirst_Click(object sender, EventArgs e) {
            First();
        }

        protected void btnTechLast_Click(object sender, EventArgs e) {
            Last();
        }

        protected void btnNext_Click(object sender, EventArgs e) {
            Next();
        }

        protected void btnPrevious_Click(object sender, EventArgs e) {
            Previous();
        }


        //===============//
        //General Methods//
        //===============//

        private void SetTextBoxes(DataView data) {
            if (data != null) {
                foreach (DataRowView infoRow in data) {
                    txtTechID1.Text = infoRow["TechID"].ToString();
                    txtName.Text = infoRow["Name"].ToString();
                    txtEmail.Text = infoRow["Email"].ToString();
                    txtPhone.Text = infoRow["Phone"].ToString();
                }
            } else {
                txtTechID1.Text = txtName.Text = txtEmail.Text = txtPhone.Text = "";
            }
        }

        protected void SearchTech() {
            //Clear sql parameters
            sqlGetTech.SelectParameters.Clear();

            //Set sql parameters
            sqlGetTech.SelectParameters.Add("TechID", txtTechID.Text);

            //Execute sql query
            DataView techInfo = (DataView)sqlGetTech.Select(new DataSourceSelectArguments());

            //Populate text boxes from data
            SetTextBoxes(techInfo);
        }

        private void First() {
            //Execute sql query
            DataView techInfo = (DataView)sqlFirst.Select(new DataSourceSelectArguments());

            //Populate text boxes from data
            SetTextBoxes(techInfo);
        }

        private void Last() {
            //Execute sql query
            DataView techInfo = (DataView)sqlLast.Select(new DataSourceSelectArguments());

            //Populate text boxes from data
            SetTextBoxes(techInfo);
        }

        private void Next() {
            //Clear sql parameters
            sqlNext.SelectParameters.Clear();

            //Set sql parameters
            sqlNext.SelectParameters.Add("TechID", txtTechID1.Text);

            //Execute sql query
            DataView techInfo = (DataView)sqlNext.Select(new DataSourceSelectArguments());

            //Populate text boxes from data
            SetTextBoxes(techInfo);

            
        }

        private void Previous() {
            //Clear sql parammeters
            sqlPrevious.SelectParameters.Clear();

            //Set sql parameters
            sqlPrevious.SelectParameters.Add("TechID", txtTechID1.Text);

            //Execute sql query
            DataView techInfo = (DataView)sqlPrevious.Select(new DataSourceSelectArguments());

            //Populate text boxes from data
            SetTextBoxes(techInfo);
        }
    }
}