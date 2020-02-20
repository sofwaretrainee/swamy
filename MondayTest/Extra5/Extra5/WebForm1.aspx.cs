using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace Extra5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         string strconnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        MySqlDataAdapter adapter;
        DataSet ds;
        MySqlConnection con;
        MySqlCommand command;
        




        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindEmployeeData();

            }
        }

         void BindEmployeeData()
        {
            try
            {
                con = new MySqlConnection(strconnectionString);
                con.Open();
              

                command = new MySqlCommand("select * from studentinfo1", con);
                adapter = new MySqlDataAdapter(command);

                ds = new DataSet();
                adapter.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();

                con.Close();

            }
            catch (Exception ex)
            {

                Response.Write("Connection Unsuccesfull" + ex);
            }
             finally
            {
                if (con != null)
                    con.Close();
            }

        }


         protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
         {

       
           if (e.CommandName.Equals("Delete"))
           {
               GridViewRow row = ((LinkButton)e.CommandSource).NamingContainer as GridViewRow;
               Label listPriceTextBox = (Label)row.FindControl("lblStudId");
               Delete(listPriceTextBox);
           }
           else if (e.CommandName.Equals("Edit"))
           {
               GridViewRow row = ((LinkButton)e.CommandSource).NamingContainer as GridViewRow;
               Label listPriceTextBox = (Label)row.FindControl("lblStudId");
               Session["listPriceTextBox"] = listPriceTextBox.Text;
               Response.Redirect("WebForm2.aspx");
           }
       }
       protected void Delete(Label listPriceTextBox)
       {

           int stuId = Convert.ToInt32(listPriceTextBox.Text);

           MySqlConnection con = new MySqlConnection(strconnectionString);
           try
           {
               var sql = "DELETE FROM `student_db1`.`studentinfo1` WHERE student_id = '" + stuId + "' ";

               con.Open();

               MySqlCommand cmd = new MySqlCommand(sql, con);

               MySqlDataAdapter adapter = new MySqlDataAdapter();

               int result = Convert.ToInt32(cmd.ExecuteNonQuery());

               Response.Redirect("WebForm1.aspx");
           }

           catch (Exception ex)
           {

           }
           finally
           {
               if (con != null)
                   con.Close();
           }



       }

       protected void lnkbtnreg_Click(object sender, EventArgs e)
       {
           Response.Redirect("WebForm2.aspx");
       }
   }
}

       

    
