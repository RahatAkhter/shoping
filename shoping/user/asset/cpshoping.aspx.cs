using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoping.user.asset
{
    public partial class cpshoping : System.Web.UI.Page
    {
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
        protected void b1_Click(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("chose.aspx");
            }
            else
            {
                Response.Redirect("shop.aspx");
            }
        }
    }
}