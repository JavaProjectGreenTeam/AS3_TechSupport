using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport
{
    public partial class AddProduct : System.Web.UI.Page
    {
      
        private void Add()
        { 
            //Clear data source parameters
            sqlAddProduct.SelectParameters.Clear();

            //adding parameters
            string dateTime = DateTime.Now.ToShortDateString();
            //txtProductRelease.Text = dateTime;

            //gets information from SQL database
            sqlAddProduct.InsertParameters.Add("ProductCode", txtProductCode.Text);
            sqlAddProduct.InsertParameters.Add("Name", txtProductName.Text);
            sqlAddProduct.InsertParameters.Add("Version", txtProductVersion.Text);
            //sqlAddProduct.InsertParameters.Add("ReleaseDate", DbType.DateTime, DateTime.Parse(txtProductRelease.Text).ToString());
            sqlAddProduct.InsertParameters.Add("ReleaseDate", DbType.DateTime, calReleaseDate.SelectedDate.ToString());

            
            //adds to database
            sqlAddProduct.Insert();

            //Return to product list page
            Server.Transfer("~/Support/Product.aspx");

            //MessageBox.Show(this,"Product has been Added");
            //Clears the textboxes
            //txtProductCode.Text = "";
            //txtProductName.Text = "";
            //txtProductRelease.Text = "";
            //txtProductVersion.Text = "";
        }
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                calReleaseDate.SelectedDate = DateTime.Today;
            }
        }

      
        
        
        
        protected void btnProductAccept_Click(object sender, EventArgs e)
        {
            if (Validator.CheckFields(new TextBox[] { txtProductCode, txtProductName, txtProductVersion }) && Validator.IsDecimal(txtProductVersion)) {
                Add();
            }
        }

        protected void btnProductCancel_Click(object sender, EventArgs e) {
            Server.Transfer("~/Support/Product.aspx");
        }

    }
}