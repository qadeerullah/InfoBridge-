using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Data.Common;

namespace InfoBridge
{
    public partial class Dashbord : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["infobridge"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fillGridView();
            }
            if (IsPostBack)
            {
                fillGridView();
            }

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
           // SqlDataSource1.InsertParameters["DateOfBirth"].DefaultValue = ((TextBox)FindControl("TextBox12")).Text;

            int a = SqlDataSource1.Insert();
            if (a>0)
            {

            }
            

        }

       

        protected void Button2_Click1(object sender, EventArgs e)

        {
            SqlConnection con = new SqlConnection(cs);

            string path = Server.MapPath("Images/");
            if(FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string extension =Path.GetExtension(FileUpload1.FileName);
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                int lenth = postedFile.ContentLength;
                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == "jpeg" || extension.ToLower() == ".webp") 
                {
                    if(lenth <=1000000)
                    {
                        FileUpload1.SaveAs(path+fileName);
                        string name = "Images/" + fileName;
                        string qurey = "Insert into Image values(@img)";
                        SqlCommand cmd = new SqlCommand(qurey, con);
                        cmd.Parameters.AddWithValue("@img", name);
                        con.Open();
                       //int a= cmd.ExecuteNonQuery();
                       // if(a>0)
                       // {

                       // }
                        con.Close();
                    }
                }


            }
            else
            {

                
            }
           

        }
        void fillGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string qurey = "select * from Image";
            SqlDataAdapter sda = new SqlDataAdapter(qurey, con);
                DataTable data =new DataTable();
            sda.Fill(data);
           //GridView1.DataSource = data;

        }
    }

}