using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NewTask
{
    public partial class Upgrade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!this.IsPostBack)
            {
                BindGridView();
            }
        
        }

       


        private void BindGridView()
        {

            SqlConnection con = new SqlConnection(@"Server = NDVORSVR02\SQL2014; Initial Catalog=NewTask_db;User ID=wmuser;Password=wmuser");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from NewTaskInfo", con);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        private void DeleteUser(int userId)
        {
            if (userId != 0)
            {
                SqlConnection con = new SqlConnection(@"Server = NDVORSVR02\SQL2014; Initial Catalog=NewTask_db;User ID=wmuser;Password=wmuser");
                con.Open();

                SqlCommand cmd = new SqlCommand("delete from NewTaskInfo where userId=" + userId + "", con);

                int result = cmd.ExecuteNonQuery();

                if (result == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record deleted Successfully');", true);
                }
                con.Close();

            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                 Response.Redirect("~/WebForm1.aspx?userId=" + row.Cells[0].Text);

            }
          if (e.CommandName == "DeleteButton")
           {
               int index = Convert.ToInt32(e.CommandArgument);
               GridViewRow row = GridView1.Rows[index];
               int userId = Convert.ToInt16(row.Cells[0].Text);
               DeleteUser(userId);
               Response.Redirect("~/WebForm1.aspx");
               

           }

           }
              
           }

            }
        
    
