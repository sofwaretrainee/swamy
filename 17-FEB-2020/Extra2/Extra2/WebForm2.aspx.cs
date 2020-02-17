using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Extra2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = @"Server = NDVORSVR02\SQL2014; Initial Catalog=Swamy-db;User ID=wmuser;Password=wmuser";
        SqlConnection con;
        SqlCommand command;
        SqlDataAdapter adapter;
        DataSet ds;
        



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEmployeeData();

            }  
        }

     

    public void BindEmployeeData()
     {
             try
                {
                    con = new SqlConnection(connectionString);
                    command = new SqlCommand();
                    command.Connection = con;
                    con.Open();

                    command.CommandText = "Sp_GridCrud";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Event", "Select");
                    adapter = new SqlDataAdapter(command);
                    ds = new DataSet();
                    adapter.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                catch(Exception ex)
                {
                    Response.Redirect("Connection Unsuccesfull");
                }
                finally
                {
                    if(con != null)
                        con.Close();
                }
     }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


    }

    }

}
                
             
               

                
            



        
    



        




            
           







        
    
