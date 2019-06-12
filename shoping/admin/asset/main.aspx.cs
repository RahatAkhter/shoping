using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace shoping.admin.asset
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void b1_Click(object sender, EventArgs e)

        {
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new NetworkCredential(Textox1.Text, Textbox2.Text);
            MailMessage mail = new MailMessage(Textox1.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
            smtp.Send(mail);
        }
    }
}