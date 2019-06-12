using System;
using System.Collections.Generic;   
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shoping.user.asset
{
    public partial class trading : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14MIVL;Initial Catalog=bitcoin;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                dashbord.Visible = false;
                REGISTRATION.Visible = true;
                SINGIN.Visible = true;
            }
            else if (Session["email"] != null)
            {
                dashbord.Visible = true;
                REGISTRATION.Visible = false;
                SINGIN.Visible = false;
            }
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Buyer ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();


            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from Seller ";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            r2.DataSource = dt1;
            r2.DataBind();



        }
        protected void LOGOUT_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");


        }
        protected void dashbord_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinfo.aspx");
        }
        protected void SINGIN_Click(object sender, EventArgs e)

        {
            Response.Redirect("login.aspx");


        }
        protected void REGISTRATION_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");

        }
        protected void search_Clivk(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Buyer where country  = '" +DDL1.Text+ "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from Buyer where crurncy  = '" + DropDownList2.Text + "' ";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            r1.DataSource = dt1;
            r1.DataBind();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from Buyer where paymethod  = '" +DropDownList3.Text + "' ";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            r1.DataSource = dt2;
            r1.DataBind();

            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "select * from Buyer where price  = '" + TextBox4.Text + "' ";
            cmd3.ExecuteNonQuery();
            DataTable dt3 = new DataTable();
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            da3.Fill(dt3);
            r1.DataSource = dt3;
            r1.DataBind();

        }
        protected void search1_Clivk(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Seller where country  = '" + DropDownList4.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from Seller where crurncy  = '" +DropDownList5.Text+ "' ";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            r1.DataSource = dt1;
            r1.DataBind();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from Seller where paymethod  = '" + DropDownList6.Text + "' ";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            r1.DataSource = dt2;
            r1.DataBind();

            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "select * from Seller where price  = '" + TextBox1.Text + "' ";
            cmd3.ExecuteNonQuery();
            DataTable dt3 = new DataTable();
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            da3.Fill(dt3);
            r1.DataSource = dt3;
            r1.DataBind();

        }
    }
}