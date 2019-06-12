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
    public partial class userinfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14MIVL;Initial Catalog=bitcoin;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] == null)
            {
                
                dashbord.Visible = false;
                REGISTRATION.Visible = true;
                
            }
            else if (Session["email"] != null)
            {
                
                dashbord.Visible = true;
                REGISTRATION.Visible = false;
                
            }


            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from cryptoshop where email ='" + Session["email"].ToString() + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();

        }
        protected void LOGOUT_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");


        }
        protected void SINGIN_Click(object sender, EventArgs e)

        {
            Response.Redirect("login.aspx");


        }
        protected void dashbord_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinfo.aspx");
        }
        protected void REGISTRATION_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");

        }
    }
}