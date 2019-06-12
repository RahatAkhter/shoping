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
    public partial class registration : System.Web.UI.Page
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
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = 0;
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from registration where email='" + email.Text + "' ";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            i = Convert.ToInt32(dt1.Rows.Count.ToString());

            if (i == 0)
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into registration values('" + firstname.Text + "','" + lastname.Text + "','" + username.Text + "','" + email.Text + "','" + contact.Text + "','" + password.Text + "')";
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "insert into Users values('" + email.Text + "','" + username.Text + "')";
                cmd2.ExecuteNonQuery();
                Response.Write("<script> alert('registration successfully') </script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script> alert('try another email') </script>");
            }
            firstname.Text = "";
            lastname.Text = "";
            username.Text = "";
            email.Text = "";
            contact.Text = "";
            password.Text = "";


        }
    }
}