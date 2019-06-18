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

namespace shoping
{
    public partial class ChatBox : System.Web.UI.Page
    {

        public static string id;
        public static string uid3;
        public static string uid1;

        protected void Page_Load(object sender, EventArgs e)
        {


           


        }

      

        


    }
}

public class Chat
{
    public string id { get; set; }
    public string name { get; set; }
}


public class GetUsers
{
    public string id { get; set; }
    public string friend_name { get; set; }
}

public class message
{
    public string text { get; set; }
    public string myid { get; set; }
    public string from_id { get; set; }
    public string to_id { get; set; }


}

