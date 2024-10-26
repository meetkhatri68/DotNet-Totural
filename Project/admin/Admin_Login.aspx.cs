using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project.admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from admin_login where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",UsernameTxt.Text);
            cmd.Parameters.AddWithValue("@password",PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                //Response.Write("<script>alert('Login Successfuly');</script>");
                Session["admin_username"] = UsernameTxt.Text;
                Response.Redirect("Admin_Index.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Username Or Password Is Incorrect');</scriipt>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Error!','Username Or Password Incorret','error')", true);
            }
            con.Close();

        }
    }
}