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
            if (!IsPostBack) {
                All();
            }
        }


        //===============//
        //General Methods//
        //===============//

        private void SetDataSource(SqlDataSource dataSource) {
            gvTest.DataSource = dataSource;
            gvTest.DataBind();
        }

        protected void SearchTech() {
            //Clear sql parameters
            sqlGetTech.SelectParameters.Clear();

            //Set sql parameters
            sqlGetTech.SelectParameters.Add("TechID", txtTechID.Text);

            //Execute sql query
            DataView techInfo = (DataView)sqlGetTech.Select(new DataSourceSelectArguments());

            //Set values from data
            if (techInfo.Count > 0) {
                SetDataSource(sqlGetTech);
                hfTechID.Value = techInfo[0]["TechID"].ToString();
            }
        }

        private void All() {
            //Execute sql query
            DataView techInfo = (DataView)sqlAllTechs.Select(new DataSourceSelectArguments());

            //Set values from data
            if (techInfo.Count > 0) {
                SetDataSource(sqlAllTechs);
            }
        }

        private void First() {
            //Execute sql query
            DataView techInfo = (DataView)sqlFirst.Select(new DataSourceSelectArguments());

            //Set values from data
            if (techInfo.Count > 0) {
                SetDataSource(sqlFirst);
                hfTechID.Value = techInfo[0]["TechID"].ToString();
            }
        }

        private void Last() {
            //Execute sql query
            DataView techInfo = (DataView)sqlLast.Select(new DataSourceSelectArguments());

            //Set values from data
            if (techInfo.Count > 0) {
                SetDataSource(sqlLast);
                hfTechID.Value = techInfo[0]["TechID"].ToString();
            }
        }

        private void Next() {
            //Clear sql parameters
            sqlNext.SelectParameters.Clear();

            //Set sql parameters
            sqlNext.SelectParameters.Add("TechID", hfTechID.Value);

            //Execute sql query
            DataView techInfo = (DataView)sqlNext.Select(new DataSourceSelectArguments());

            //Set values from data
            if (techInfo.Count > 0) {
                SetDataSource(sqlNext);
                hfTechID.Value = techInfo[0]["TechID"].ToString();
            }
        }

        private void Previous() {
            //Clear sql parammeters
            sqlPrevious.SelectParameters.Clear();

            //Set sql parameters
            sqlPrevious.SelectParameters.Add("TechID", hfTechID.Value);

            //Execute sql query
            DataView techInfo = (DataView)sqlPrevious.Select(new DataSourceSelectArguments());

            //Set values from data
            if (techInfo.Count > 0) {
                SetDataSource(sqlPrevious);
                hfTechID.Value = techInfo[0]["TechID"].ToString();
            }
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

        protected void btnShowAll_Click(object sender, EventArgs e) {
            All();
        }
    }
}