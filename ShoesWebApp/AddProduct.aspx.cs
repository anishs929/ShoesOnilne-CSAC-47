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
    
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop();
             
        }
        private void filldrop()
        {
            ddlCategoryName.DataSource = Getuserdata();
            ddlCategoryName.DataTextField = "Category_Name";
            ddlCategoryName.DataValueField = "Category_ID";
            ddlCategoryName.DataBind(); 
        }

        public DataTable Getuserdata()
        {
            cmd = new SqlCommand("getcategory", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = conn.CreateCommand();
            comm.CommandType = CommandType.Text;
            comm.CommandText = "insert into Product values('"+txtProductName.Text+"','"+txtSalesPrice.Text+"','"+txtavaquantity.Text+"','"+ddlCategoryName.SelectedItem.Text+"')";
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Product.aspx");

        }
    }
}