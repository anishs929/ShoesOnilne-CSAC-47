using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace ShoesWebApp
{
    public partial class AddCategory : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = conn.CreateCommand();
            comm.CommandType = CommandType.Text;
            comm.CommandText = "insert into Category values('" + txtCategoryname.Text + "')";
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Category.aspx");
           
        }

       
        

      
    }
}