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
        //public int rowIndex = 1;
        protected void Page_Load(object sender, EventArgs e) {
            //if (IsPostBack)
            //{
            //    DataTable dt = GetData();
            //    if (dt.Rows.Count > 0)
            //    {
            //        txtName.Text = dt.Rows[0]["Name"].ToString();
            //        txtEmail.Text = dt.Rows[1]["Email"].ToString();
            //        txtPhone.Text = dt.Rows[2]["Phone"].ToString();

            //        Session["dt"] = dt;
            //    }

            //}
        }


        //==================//
        //GUI Event Handlers//
        //==================//

        protected void btnTechnician_Click(object sender, EventArgs e) {
            Server.Transfer("AddTechnician.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e) {
            SearchTech();
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
            foreach (DataRowView infoRow in data) {
                txtTechID1.Text = infoRow["TechID"].ToString();
                txtName.Text = infoRow["Name"].ToString();
                txtEmail.Text = infoRow["Email"].ToString();
                txtPhone.Text = infoRow["Phone"].ToString();
            }
        }

        private DataTable GetData() {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=D:\\C# ASP\\github\\AS3_TechSupport\\App_Data\\TechSupport.mdf;Integrated Security=True");
            try {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Technicians", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(dt);
            } catch (System.Data.SqlClient.SqlException ex) {
                string msg = "Fetch Error:";
                msg += ex.Message;
                throw new Exception(msg);
            } finally {
                con.Close();
            }
            return dt;
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

        }
    }
}














