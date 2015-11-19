using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS3_TechSupport.Tech {
    public partial class IncidentList : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            sqlAllIncidents.Select(new DataSourceSelectArguments());
            setSource(sqlAllIncidents);
        }

        protected void btnSearch_Click(object sender, EventArgs e) {
            if (txtSearch.Text != "") {
                //Clear sql parameters
                sqlSearch.SelectParameters.Clear();

                //Set sql parameters
                sqlSearch.SelectParameters.Add("IncidentID", txtSearch.Text);

                //Execute sql query
                sqlSearch.Select(new DataSourceSelectArguments());

                //Set gridView data source and refresh
                setSource(sqlSearch);

                //Clear search textbox
                txtSearch.Text = "";
            } else {
                sqlAllIncidents.Select(new DataSourceSelectArguments());
                setSource(sqlAllIncidents);
            }
        }

        private void setSource(SqlDataSource dataSource) {
            gvIncidents.DataSource = dataSource;
            gvIncidents.DataBind();
        }

        protected void gvIncidents_SelectedIndexChanged(object sender, EventArgs e) {
            GridViewRow selectedRow = gvIncidents.SelectedRow;
            Response.Redirect("~/Tech/ManageIncident.aspx?incidentID=" + selectedRow.Cells[1].Text);
        }
    }
}