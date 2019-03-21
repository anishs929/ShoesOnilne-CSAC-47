using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ShoesWebApp
{
    
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True");   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                refreshdata();
            }
        }

        public void refreshdata()
        {
            SqlCommand cmd = new SqlCommand("select * from Product", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            refreshdata();
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            /*Label Product_ID = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox Product_Name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Sales_Price = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox Available_Quantity = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            DropDownList Category_Name = GridView1.Rows[e.RowIndex].FindControl("DropDownList2") as DropDownList;
            String mycon = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            
            SqlConnection conn = new SqlConnection(mycon);
            String Updatedata = "UPDATE Product SET Product_Name = '" + Product_Name.Text + "', Sales_Price ='" + float.Parse(Sales_Price.Text) + "', Available_Quantity ='" + int.Parse(Available_Quantity.Text) + "', Category_Name ='" + Category_Name.SelectedValue.ToString() + "' where Product_ID = '" + Product_ID.Text + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Updatedata;
            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@Product_Name", Product_Name.Text);
            cmd.Parameters.AddWithValue("@Sales_Price", Sales_Price.Text);
            cmd.Parameters.AddWithValue("@Available_Quantity", Available_Quantity.Text);
            cmd.Parameters.AddWithValue("@Category_Name", Category_Name.Text);
            
            cmd.ExecuteNonQuery();
            
            Label7.Text = "Row data has been updated successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();*/
            Label Product_ID = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox Product_Name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Sales_Price = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox Available_Quantity = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            DropDownList Category_Name = GridView1.Rows[e.RowIndex].FindControl("DropDownList4") as DropDownList;
            SqlCommand cmd = new SqlCommand("update Product set Product_Name=@Product_Name,Sales_Price=@Sales_Price,Available_Quantity=@Available_Quantity,Category_Name=@Category_Name where Product_ID=@Product_ID", conn);
            cmd.Parameters.AddWithValue("@Product_Name", Product_Name.Text);
            cmd.Parameters.AddWithValue("@Sales_Price", Sales_Price.Text);
            cmd.Parameters.AddWithValue("@Available_Quantity", Available_Quantity.Text);
            cmd.Parameters.AddWithValue("@Category_Name", Category_Name.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Product_ID", Product_ID.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            Label7.Text = "Row data has been updated successfully";
            conn.Close();
            refreshdata();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            /*Label Product_ID = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            String Updatedata = "delete from Product where Product_ID=" + Product_ID.Text;
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Updatedata;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Label7.Text = "Row data has been Deleted successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();*/
            Label Product_ID = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            SqlCommand cmd = new SqlCommand("delete from Product where Product_ID=@Product_ID", conn);
            cmd.Parameters.AddWithValue("@Product_ID", Product_ID.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            Label7.Text = "Row data has been Deleted successfully";
            conn.Close();
            refreshdata();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox Product_Name = GridView1.FooterRow.FindControl("TextBox4") as TextBox;
            TextBox Sales_Price = GridView1.FooterRow.FindControl("TextBox5") as TextBox;
            TextBox Available_Quantity = GridView1.FooterRow.FindControl("TextBox6") as TextBox;
            DropDownList Category_Name = GridView1.FooterRow.FindControl("DropDownList3") as DropDownList;
            SqlCommand cmd = new SqlCommand("insert into Product (Product_ID,Product_Name,Sales_Price,Available_Quntity,Category_Name) values (@Product_ID, @Product_Name, @Sales_Price, @Available_Quantity, @Category_Name)", conn);
            cmd.Parameters.AddWithValue("@Product_Name", Product_Name.Text );
            cmd.Parameters.AddWithValue("@Sales_Price", Sales_Price.Text);
            cmd.Parameters.AddWithValue("@Available_Quantity", Available_Quantity.Text);
            cmd.Parameters.AddWithValue("@Category_Name", Category_Name.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@Product_ID",Produc);
            conn.Open();
            cmd.ExecuteNonQuery();
            Label7.Text = "New row inserted successfully";
            conn.Close();
            SqlDataSource1.DataBind();
            refreshdata();
            /*TextBox Product_Name = GridView1.FooterRow.FindControl("TextBox4") as TextBox;
            TextBox Sales_Price = GridView1.FooterRow.FindControl("TextBox5") as TextBox;
            TextBox Available_Quantity = GridView1.FooterRow.FindControl("TextBox6") as TextBox;
            DropDownList Category_Name = GridView1.FooterRow.FindControl("DropDownList3") as DropDownList;
            String query = "insert into Product(Product_Name,Sales_Price,Available_Quantity,Category_Name) values ('" + Product_Name.Text.ToString().Trim() + "','" + Sales_Price.Text +"','" + Available_Quantity.Text +"', '" + Category_Name.SelectedItem.Text +"')";
            String mycon = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Label7.Text = "New row inserted successfully";
            conn.Close();

            SqlDataSource1.DataBind();
            refreshdata();*/
        }
    }
    }
