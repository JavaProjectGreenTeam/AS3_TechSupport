using System;
using System.Collections.Generic;
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

        }
        private void Add()
        {
            //clear data source parameters
            sqlAddIncident.SelectParameters.Clear();

            //adding parameters
            string dateTime = DateTime.Now.ToShortDateString();

            //getting information from sql db
           // sqlAddIncident.InsertParameters.Add("
        }
    }
}