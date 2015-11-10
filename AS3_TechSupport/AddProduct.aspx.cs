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

            sqlAddProduct.InsertParameters.Add("Name", txtProductName.Text);
            sqlAddProduct.InsertParameters.Add("Version", txtProductVersion.Text);
            sqlAddProduct.InsertParameters.Add("ReleaseDate", DbType.DateTime, DateTime.Parse(txtProductRelease.Text).ToString());

            sqlAddProduct.Insert();
           
                 
           
                       
        }
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        
        
        
        protected void btnProductAccept_Click(object sender, EventArgs e)
        {
            Add();
        }

    }
}