using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Configuration;
namespace shoping.user
{
    public partial class Notification : System.Web.UI.Page
    { public static string id="";
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["email"] == null)
            {
                Response.Redirect("asset/login.aspx");

            }
            else
            {
                id = Session["email"].ToString();

            }

        }

        [WebMethod]
        public static List<Notifications> Get_Notification()
        {
            List<Notifications> list_item = new List<Notifications>();


            DataTable dt = get_Noti_Data();
            for (Int32 i = 0; i < dt.Rows.Count; i++)
            {
                Notifications u = new Notifications();

                u.msg = dt.Rows[i]["msg"].ToString();
                list_item.Add(u);
            }
            return list_item;

        }


        private static DataTable get_Noti_Data()
        {
                string con1 = System.Configuration.ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString;
                SqlConnection conn = new SqlConnection(con1);
            // yahan niche Userid maine hardcode rakhi he idhr session ki id dal dena 
                SqlCommand cmd = new SqlCommand(@"select * from Notifications where User_id='cd@gmail.com'", conn);
                conn.Open();
                DataTable dt = new DataTable();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                dr.Close();
                conn.Close();

                return dt;
            
        }




    }
}

public class Notifications
{
    public string msg { get; set; }
}