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
            txtProductRelease.Text = dateTime;

            //gets information from SQL database
            sqlAddProduct.InsertParameters.Add("ProductCode", txtProductCode.Text);
            sqlAddProduct.InsertParameters.Add("Name", txtProductName.Text);
            sqlAddProduct.InsertParameters.Add("Version", txtProductVersion.Text);
            sqlAddProduct.InsertParameters.Add("ReleaseDate", DbType.DateTime, DateTime.Parse(txtProductRelease.Text).ToString());

            //adds to textboxes
            sqlAddProduct.Insert();

            MessageBox.Show(this,"Product has been Added");
            //Clears the textboxes
            txtProductCode.Text = "";
            txtProductName.Text = "";
            txtProductRelease.Text = "";
            txtProductVersion.Text = "";


            
        }
        
        protected void btnProductAccept_Click(object sender, EventArgs e)
        {
            Add();
        }

    }
}