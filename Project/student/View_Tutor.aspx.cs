using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project.student
{
    public partial class View_Tutor : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student_username"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }

            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup";
            SqlDataAdapter Sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            Sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup where name like '%" + SearchText.Text + "%'";
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