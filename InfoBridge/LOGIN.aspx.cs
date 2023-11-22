using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace InfoBridge
{
    public partial class LOGIN : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["infobridge"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

      

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void login(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);
            string query = "select * from Ulogin where UserId = @user and password = @pass";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = TextBox1.Text;
                 //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Success')</script>");
                Response.Redirect("Dashbord.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Un-Successful')</script>");
            }
            conn.Close();

        }
    }
}