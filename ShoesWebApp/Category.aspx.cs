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
    public partial class Category : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox Category_ID = GridView1.FooterRow.FindControl("TextBox2") as TextBox;
            TextBox Category_Name = GridView1.FooterRow.FindControl("TextBox3") as TextBox;
            String query = "insert into Category(Category_Name) values ('" + Category_Name.Text.ToString().Trim() + "')";
            String mycon = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Label4.Text = "New row inserted successfully";
            SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label4.Text = " ";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
            
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label4.Text = " ";

        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            //Label Category_ID = GridView1.Rows[e.RowIndex].FindControl("Label3") as Label;
            TextBox Category_Name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            String mycon = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            String Updatedata = "UPDATE Category SET Category_Name ='" + Category_Name.Text.ToString().Trim() + "' "; /* WHERE Category_ID =" + Category_ID + "";*/
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Updatedata;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Label4.Text = "Row data has been updated successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label Category_ID = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            String Updatedata = "delete from Category where Category_ID=" + Category_ID.Text;
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Updatedata;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Label4.Text = "Row data has been Deleted successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}
