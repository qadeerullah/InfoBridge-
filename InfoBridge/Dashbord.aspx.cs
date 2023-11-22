using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace InfoBridge
{
    public partial class Dashbord : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["infobridge"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)FindControl("TextBox10")).Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue = ((DropDownList)FindControl("DropDownList1")).SelectedValue;

            SqlDataSource1.InsertParameters["Phone"].DefaultValue = ((TextBox)FindControl("TextBox13")).Text;
            SqlDataSource1.InsertParameters["Address"].DefaultValue = ((TextBox)FindControl("TextBox14")).Text;
            SqlDataSource1.InsertParameters["DateOfBirth"].DefaultValue = ((TextBox)FindControl("TextBox12")).Text;

            int a = SqlDataSource1.Insert();
            

        }

       

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }
    }

}