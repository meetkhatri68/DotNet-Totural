﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
    public partial class Tutor_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Tutor_LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string querry = "select * from tutor_signup where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(querry, con);
            cmd.Parameters.AddWithValue("username", UsernameTxt.Text);
            cmd.Parameters.AddWithValue("password", PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Session["tutor_username"] = UsernameTxt.Text;
                Response.Redirect("tutor/Tutor_Index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Error!','Username Or Password Incorret','error')", true);
            }
            con.Close();
        }
    }
}