using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;


namespace Extra5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
           string strConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
              MySqlDataAdapter adapter;
              DataSet ds;
              MySqlConnection con;
              MySqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ButtonUpdate.Visible = false;
                ButtonAdd.Visible = true;
                ButtonCancel.Visible = true;
                Cancel_Click(null, null);
                BindTextBoxvalues();
            }
        }

      
       

             void BindTextBoxvalues()
             {

            MySqlConnection con = new MySqlConnection(strConnectionString);
          
               try
               {
                   if (Session["listPriceTextBox"] != null)
                   {
                     int  studentId = Convert.ToInt32(Session["listPriceTextBox"]);

                     var sql = "SELECT * FROM studentinfo1 WHERE student_id = '" + studentId + "' ";

                       con.Open();

                       MySqlCommand cmd = new MySqlCommand(sql, con);

                       MySqlDataAdapter adapter = new MySqlDataAdapter();

                       adapter.SelectCommand = cmd;

                       DataTable dt = new DataTable();

                       adapter.Fill(dt);

                       if (dt.Rows.Count > 0)
                       {
                           txtStudentName.Text = dt.Rows[0]["student_name"].ToString();
                           string gender = dt.Rows[0]["student_gender"].ToString();
                           if (gender == "Male")
                           {
                               RadioButtonList1.SelectedIndex = 0;
                           }
                           else if (gender == "Femle")
                           {
                               RadioButtonList1.SelectedIndex = 1;
                           }
                           txtMarks.Text = dt.Rows[0]["student_marks"].ToString();
                           txtPhoneNumber.Text = dt.Rows[0]["student_phone"].ToString();
                           txtAddress.Text = dt.Rows[0]["student_address"].ToString();
                       }
                       ButtonAdd.Visible = false;
                       ButtonCancel.Visible = false;
                       ButtonUpdate.Visible = true;

                   }
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
             
            

        
          protected void Add_Click(object sender, EventArgs e)
        {
               MySqlConnection con = new MySqlConnection(strConnectionString);

           try
           {
               var sql = "INSERT INTO `student_db1`.`studentinfo1`(`student_name`,`student_gender`,`student_marks`,`student_phone`,student_address)VALUES('" + txtStudentName.Text + "','" + RadioButtonList1.SelectedItem.Value + "','" + Convert.ToDouble(txtMarks.Text) + "','" + Convert.ToInt64(txtPhoneNumber.Text) + "','" + txtAddress.Text + "')";

               con.Open();

               MySqlCommand cmd = new MySqlCommand(sql, con);

               MySqlDataAdapter adapter = new MySqlDataAdapter();

               adapter.InsertCommand = cmd;

               int result = cmd.ExecuteNonQuery();

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


        protected void Cancel_Click(object sender, EventArgs e)
        {

            txtStudentName.Text = string.Empty;
            RadioButtonList1.Text = string.Empty;
            txtMarks.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
            txtAddress.Text = string.Empty;
        }

      

        protected void Update_Click(object sender, EventArgs e)
        {
              MySqlConnection con = new MySqlConnection(strConnectionString);

              try
              {
                  if (Session["listPriceTextBox"] != null)
                  {
                      int stdId = Convert.ToInt32(Session["listPriceTextBox"]);



                      var sql = "UPDATE `student_db1`.`studentinfo1` SET `student_name` = '" + txtStudentName + "',`student_gender` = '" + RadioButtonList1 + "',`student_phone` = '" + txtPhoneNumber + "',`student_marks` = '" + txtMarks + "',`student_address` = '" + txtAddress + "' WHERE `student_id` = '" + stdId + "' ";



                      con.Open();

                      MySqlCommand cmd = new MySqlCommand(sql, con);

                      MySqlDataAdapter adapter = new MySqlDataAdapter();

                      adapter.UpdateCommand = cmd;

                      int result = cmd.ExecuteNonQuery();

                      Response.Redirect("WebForm1.aspx");

                  }
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
    }
}
