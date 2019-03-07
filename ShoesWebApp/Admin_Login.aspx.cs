using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ShoesWebApp
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = "Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
            conn.Open();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Admin_Login where Admin_ID = '" + txtLoginID.Text + "' and Password= '" + txtPassword.Text + "'";
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Admin_Login");
            if(ds.Tables[0].Rows.Count>0)
            {
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Admin ID and Password";
            }
        }
    }
}
/*namespace ShoesWebApp
{ 
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = @"Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                conn.Open();
                SqlDataAdapter sqldap = new SqlDataAdapter("Select * from Admin_Login", conn);
                DataTable dtbl = new DataTable();
                sqldap.Fill(dtbl);

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-3S2V24R;Initial Catalog=Shoes;Integrated Security=True");
            conn.Open();
            string check = "select count(*) from Admin_Login where Admin_ID='" + txtLoginID.Text + "'";
            SqlCommand com = new SqlCommand(check, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if(temp == 1)
            {
                conn.Open();
                
                string checkpass = "select count (*) from Admin_Login where Password='" + txtPassword.Text + "'";
                SqlCommand passcom = new SqlCommand(checkpass, conn);
                string Password = passcom.ExecuteScalar().ToString();
                if(Password == txtPassword.Text)
                {
                    Session["New"] = txtLoginID.Text;
                    Response.Redirect("MainPage.text");
                }
                else
                {
                    lblmsg.Text = "Invalid ID and Password";
                }
            }
    
        }
    }
}*/