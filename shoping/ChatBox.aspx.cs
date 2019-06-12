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


            string Us = "rahatakhter61@gmail.com";
            id = Convert.ToString(Us.ToString());

           // string  uid2 = (string)Session["email2"];
           // uid3 = Convert.ToString(uid2.ToString());
            //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14MIVL;Initial Catalog=bitcoin;Integrated Security=True");
            //con.Open();
            //SqlCommand cmdi = con.CreateCommand();
            //cmdi.CommandType = CommandType.Text;
            //cmdi.CommandText = "insert into friends values('" + id + "','" + uid1 + "')";
            //cmdi.ExecuteNonQuery();
            //con.Close();

        }
        [WebMethod]
        public static IEnumerable<message> GetMessages()
        {
            var uid = uid3;
            try
            {
                
                uid1 = Convert.ToString(uid);
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O14MIVL;Initial Catalog=bitcoin;Integrated Security=True");
                con.Open();
                SqlCommand cmdi = con.CreateCommand();
                cmdi.CommandType = CommandType.Text;
                cmdi.CommandText = "insert into friends values('" + id + "','" + uid1 + "')";
                cmdi.ExecuteNonQuery();
                con.Close();
                using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString))
                {    
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(@"
select m.[text],m.[from_id],m.[to_id]
from Messges as m
where (m.[to_id]='"+id+"' and m.[from_id]='"+uid1+"') or (m.[to_id]='"+uid1+"' and m.[from_id]='"+id+"')", connection))
                    {
                        // Make sure the command object does not already have
                        // a notification object associated with it.
                        command.Notification = null;
                        //  SqlDependency.Stop(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString);
                        SqlDependency.Start(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString);
                        SqlDependency dependency = new SqlDependency(command);
                        dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);

                        if (connection.State == ConnectionState.Closed)
                            connection.Open();

                        using (var reader = command.ExecuteReader())
                            return reader.Cast<IDataRecord>()
                                .Select(x => new message()
                                {
                                    text = x.GetString(0)
                                    


                                }).ToList();



                    }
                }
            }
            catch (Exception ex)
            {
                message obj = new message();

                List<message> list = new List<message>();
                list.Add(obj);
                return list;



            }
        }


        [WebMethod]

        public static string Send_Msg(string txt)
        {
            string from = id;
            string toid = uid3;

            string con1 = System.Configuration.ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString;
            try
            {
                SqlConnection con = new SqlConnection(con1);
                SqlCommand cmd = new SqlCommand("insert into Messges values(@txt,@toid,@from)", con);
                cmd.Parameters.AddWithValue("@txt", txt);
                cmd.Parameters.AddWithValue("@toid", toid);
                cmd.Parameters.AddWithValue("@from", from);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                con.Dispose();
                return "Saved";
            }
            catch (Exception ex)
            {
                return "" + ex.Message;
            }

        }




        [WebMethod]
        public static IEnumerable<GetUsers> Getusers()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"select u.name,u.User_id
from friends as f
left join Users as u
on u.User_id=f.friend_Id
where f.User_id='"+id+"'" +
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



        [WebMethod]
        public static IEnumerable<Chat> Get_Chat()
        {


            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"select m.[id],m.[name]
        from mesg as m", connection))
                {
                    // Make sure the command object does not already have
                    // a notification object associated with it.
                    command.Notification = null;
                    //  SqlDependency.Stop(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString);
                    SqlDependency.Start(ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString);
                    SqlDependency dependency = new SqlDependency(command);
                    dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);

                    if (connection.State == ConnectionState.Closed)
                        connection.Open();

                    using (var reader = command.ExecuteReader())
                        return reader.Cast<IDataRecord>()
                            .Select(x => new Chat()
                            {
                                id = x.GetString(0),
                                name = x.GetString(1)

                            }).ToList();



                }
            }

        }
        private static void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            MyHub.show();
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
    
