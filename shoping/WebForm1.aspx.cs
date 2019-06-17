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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        [WebMethod]
        public static List<All_Employees> GetUserDetail()
        {

            string con1 = System.Configuration.ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString;
            SqlConnection conn = new SqlConnection(con1);



            List<All_Employees> list_det = new List<All_Employees>();


            DataTable dt = getprint();
            for (Int32 i = 0; i < dt.Rows.Count; i++)
            {
                All_Employees p = new All_Employees();

                p.emp_name = Convert.ToString(dt.Rows[i]["emp_name"]);
                p.emp_id = Convert.ToInt32(dt.Rows[i]["emp_id"]);

                list_det.Add(p);
            }
            return list_det;
        }

        private static DataTable getprint()
        {

            string con1 = System.Configuration.ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString;
            SqlConnection conn = new SqlConnection(con1);
            SqlCommand cmd = new SqlCommand(@"select * from Employee  where status=1  and exception=0", conn);
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


public class All_Employees
{
    public int emp_id { get; set; }
    public string emp_name { get; set; }
    public string mobile { get; set; }
    public string Designation { get; set; }
    public string Img { get; set; }
    public string gender { get; set; }
    public string salary { get; set; }
    public string DOB { get; set; }
    public string edu { get; set; }
    public string located { get; set; }
    public string job_type { get; set; }
    public string father { get; set; }
    public string dep_name { get; set; }
    public string cnic { get; set; }
    public string license { get; set; }
    public string curadd { get; set; }
    public string per_add { get; set; }
    public string emer_num { get; set; }
    public string exp { get; set; }
    public string bankAccount { get; set; }
    public string degree { get; set; }
    public string emp_type { get; set; }
    public int status { get; set; }
}