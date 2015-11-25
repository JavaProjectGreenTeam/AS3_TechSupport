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

namespace AS3_TechSupport
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                All();
            }

            if (Request.IsAuthenticated) {
                if (User.IsInRole("Admins")) {
                    btnAddProduct.Visible = true;
                }
            }
        }


        //===============//
        //General Methods//
        //===============//

        private void SetDataSource(SqlDataSource dataSource) {
            gvProducts.DataSource = dataSource;
            gvProducts.DataBind();
        }

        private void Search() {
            //Clear sql parameters
            sqlGetProduct.SelectParameters.Clear();

            //Set sql parameters
            sqlGetProduct.SelectParameters.Add("ProductCode", txtProductCode.Text);

            //Execute sql query
            DataView productInfo = (DataView)sqlGetProduct.Select(new DataSourceSelectArguments());

            //Set values from data
            if (productInfo.Count > 0) {
                SetDataSource(sqlGetProduct);
                hfProductCode.Value = productInfo[0]["ProductCode"].ToString();
            }
        }

        private void All() {
            //Execute sql query
            DataView productInfo = (DataView)sqlGetAllProducts.Select(new DataSourceSelectArguments());

            //Set values from data
            if (productInfo.Count > 0) {
                SetDataSource(sqlGetAllProducts);
            }
        }

        private void First() {
            //Execute sql query
            DataView productInfo = (DataView)sqlFirst.Select(new DataSourceSelectArguments());

            //Set values from data
            if (productInfo != null && productInfo.Count > 0) {
                SetDataSource(sqlFirst);
                hfProductCode.Value = productInfo[0]["ProductCode"].ToString();
            }
        }

        private void Last() {
            //Execute sql query
            DataView productInfo = (DataView)sqlLast.Select(new DataSourceSelectArguments());

            //Set values from data
            if (productInfo != null && productInfo.Count > 0) {
                SetDataSource(sqlLast);
                hfProductCode.Value = productInfo[0]["ProductCode"].ToString();
            }
        }

        private void Next() {
            //Clear sql parameters
            sqlNext.SelectParameters.Clear();

            //Set sql parameters
            sqlNext.SelectParameters.Add("ProductCode", hfProductCode.Value);

            //Execute sql query
            DataView productInfo = (DataView)sqlNext.Select(new DataSourceSelectArguments());

            //Set values from data
            if (productInfo != null && productInfo.Count > 0) {
                SetDataSource(sqlNext);
                hfProductCode.Value = productInfo[0]["ProductCode"].ToString();
            }
        }

        private void Previous() {
            //Clear sql parameters
            sqlPrevious.SelectParameters.Clear();

            //Set sql parameters
            sqlPrevious.SelectParameters.Add("ProductCode", hfProductCode.Value);

            //Execute sql query
            DataView productInfo = (DataView)sqlPrevious.Select(new DataSourceSelectArguments());

            //Set values from data
            if (productInfo != null && productInfo.Count > 0) {
                SetDataSource(sqlPrevious);
                hfProductCode.Value = productInfo[0]["ProductCode"].ToString();
            }
        }


        //==================//
        //GUI Event Handlers//
        //==================//

        protected void btnAddProduct_Click(object sender, EventArgs e) {
            Server.Transfer("~/Admin/AddProduct.aspx");
        }

        protected void btnFirst_Click(object sender, EventArgs e) {
            First();
        }

        protected void btnPrevious_Click(object sender, EventArgs e) {
            Previous();
        }

        protected void btnNext_Click(object sender, EventArgs e) {
            Next();
        }

        protected void btnLast_Click(object sender, EventArgs e) {
            Last();
        }

        protected void btnShowAll_Click(object sender, EventArgs e) {
            All();
        }

        protected void btnSearch_Click(object sender, EventArgs e) {
            Search();
            txtProductCode.Text = "";
        }
    }
}