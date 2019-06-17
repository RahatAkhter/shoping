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

        [WebMethod]
        public static IEnumerable<GetUsers> Getuser()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"select u.name,u.User_id
from friends as f
left join Users as u
on u.User_id=f.friend_Id
where f.User_id='ab@gmail.com'" +
"", connection))
                {

                    if (connection.State == ConnectionState.Closed)
                        connection.Open();

                    using (var reader = command.ExecuteReader())
                        return reader.Cast<IDataRecord>()
                            .Select(x => new GetUsers()
                            {

                                friend_name = x.GetString(0),
                                id = x.GetString(1)

                            }).ToList();



                }
            }

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
}

