using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Extra
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        string connectionString, sql;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            connectionString = @"Server = NDVORSVR02\SQL2014;Initial Catalog=Extra_db;User ID=wmuser; Password=wmuser";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            sql = "SELECT * FROM Extra";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
          
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}