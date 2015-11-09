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

namespace AS3_TechSupport
{
    public partial class Technician : System.Web.UI.Page
    {
        //public int rowIndex = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = GetData();
                if (dt.Rows.Count > 0)
                {
                    txtName.Text = dt.Rows[0]["Name"].ToString();
                    txtEmail.Text = dt.Rows[1]["Email"].ToString();
                    txtPhone.Text = dt.Rows[2]["Phone"].ToString();

                    Session["dt"] = dt;
                }

            }
        }







        protected void btnNext_Click(object sender, EventArgs e)
        {

            int rowIndex = +1;
            rowIndex++;
            if (Session["dt"] != null)
            {
                DataTable dt = (DataTable)Session["dt"];
                if (rowIndex <= dt.Rows.Count)
                {
                    txtName.Text = dt.Rows[rowIndex]["Name"].ToString();
                    txtEmail.Text = dt.Rows[rowIndex]["Email"].ToString();
                    txtPhone.Text = dt.Rows[rowIndex]["Phone"].ToString();

                    {

                    }
                }
            }
        }



        private DataTable GetData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=D:\\C# ASP\\github\\AS3_TechSupport\\App_Data\\TechSupport.mdf;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Technicians", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(dt);
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Fetch Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
            return dt;
        }


        protected void btnPrevious_Click(object sender, EventArgs e)
        {

        }

        protected void btnTechnician_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddTechnician.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SearchTech();
        }

        protected void btnTechFirst_Click(object sender, EventArgs e)
        {


            First();

        }
        protected void SearchTech()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from technicians where TechID = '" + txtTechID.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            txtName.Text = dt.Rows[0][1].ToString();
            txtEmail.Text = dt.Rows[0][2].ToString();
            txtPhone.Text = dt.Rows[0][3].ToString();
            con.Close();
        }


        protected void First()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportDB"].ConnectionString);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from technicians where TechID = 11", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            txtName.Text = dt.Rows[0][1].ToString();
            txtEmail.Text = dt.Rows[0][2].ToString();
            txtPhone.Text = dt.Rows[0][3].ToString();
            con.Close();
        }










        protected void btnTechLast_Click(object sender, EventArgs e)
        {
        }
    }
}

        
            




        


    



