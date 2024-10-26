using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TMS_Project.tutor
{
    public partial class View_Student : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx"); 
            }

            if (!IsPostBack)
            {
                BindRepeater();
            }
        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup";
            SqlDataAdapter Sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            Sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup where name like '%" + SearchText.Text + "%'";
            SqlDataAdapter Sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            Sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
            else
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Error!','Sorry No Record Found','error')", true);
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
        }
    }
}