﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace shoping.user.asset
{
    public partial class gust1 : System.Web.UI.Page
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
            TextBox7.Visible = false;
            em.Visible = false;
            passs.Visible = false;
            sub.Visible = false;
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

        protected void button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Response.Write("<script> alert('fill all fild') </script>");
            }
            else
            {

                TextBox7.Text = DateTime.Now.ToString();
                TextBox7.Text = DateTime.Now.ToString();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into gusoder values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "') ";
                cmd.ExecuteNonQuery();

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;

                smtp.Credentials = new NetworkCredential(em.Text, passs.Text);
                MailMessage mail = new MailMessage(em.Text, TextBox4.Text, sub.Text, TextBox3.Text);
                smtp.Send(mail);


                Response.Write("<script> alert('YOUR REQUEST HAS BEEN SENDET WE WILL CONTACT YOU IN 24 HOUES BY YOUR GMAIL ADDRESS') </script>");


            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
    }
}