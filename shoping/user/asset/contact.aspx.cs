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
    public partial class contact : System.Web.UI.Page
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

        protected void butt_Click(object sender, EventArgs e)
        {

            if (Session["email"] == null)
            {
                Response.Write("<script> alert('Login First') </script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script> alert(' Messages Sent ') </script>");
            }

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into feedback values('" + Textox1.Text + "','" + Session["email"] + "','" + TextBox3.Text + "','" + TextBox4.Text + "') ";
            cmd.ExecuteNonQuery();

        }
    }
}