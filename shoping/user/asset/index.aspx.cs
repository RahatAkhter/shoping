using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoping.user.asset
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Button4.Visible = false;
                Button5.Visible = true;
                Button6.Visible = true;
            }
            else if (Session["email"] != null)
            {
                Button4.Visible = true;
                Button5.Visible = false;
                Button6.Visible = false;
            }
        }
        protected void button4_Click(object sender, EventArgs e)

        {
            Response.Redirect("logout.aspx");


        }
        protected void dashbord_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinfo.aspx");
        }
        protected void button5_Click(object sender, EventArgs e)

        {
            Response.Redirect("login.aspx");


        }
        protected void button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");

        }
    }
}