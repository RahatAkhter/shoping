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
    public partial class SelloPtionaspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14MIVL;Initial Catalog=bitcoin;Integrated Security=True");
        int id;
        string email1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            if (Session["email"] == null)
            {
                dashbord.Visible = false;
                REGISTRATION.Visible = true;
                SINGIN.Visible = true;
                chat.Visible = false;
            }
            else if (Session["email"] != null)
            {
                dashbord.Visible = true;
                REGISTRATION.Visible = false;
                SINGIN.Visible = false;
                chat.Visible = true;
            }
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Seller where id=" + id + " ";
            
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();

           

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select email from registration where email= (select email from Seller where id = " + id + " )";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            email1 = dt1.Rows[0][0].ToString();


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
        protected void chat_Click(object sender, EventArgs e)
        {
            Session["email2"] = email1;  
            Response.Redirect("..\\..\\ChatBox.aspx");
        }
    }
}