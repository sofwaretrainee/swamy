using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Extra3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        private SqlDataAdapter _sqlDataAdapter;
        DataSet _dtSet;
        SqlConnection con;
        SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Cancel_Click(null, null);
                BindTextBoxvalues();
            }
        }
        
        

         private void BindTextBoxvalues()
         {

             try
             {
                 ButtonAdd.Visible = true;
                 ButtonUpdate.Visible = false;
                 ButtonCancel.Visible = true;

                 if (Session["listPriceTextBox"] != null)
                 {

                     int studentId = Convert.ToInt32(Session["listPriceTextBox"]);
                     strConnectionString = @"Server = NDVORSVR02\SQL2014;Initial Catalog=student_db1 ;User ID= wmuser; Password= wmuser";

                     con = new SqlConnection(strConnectionString);

                     con.Open();

                     command = new SqlCommand();
                     command.CommandText = "StudentDetails_Proc";
                     command.Connection = con;
                     command.CommandType = CommandType.StoredProcedure;
                     command.Parameters.AddWithValue("@Event", "Select");
                     command.Parameters.AddWithValue("@Student_id", studentId);
                     _sqlDataAdapter = new SqlDataAdapter(command);

                     DataTable table = new DataTable();

                     _sqlDataAdapter.Fill(table);

                     if (table.Rows.Count > 0)
                     {

                         txtStudentName.Text = table.Rows[0]["student_name"].ToString();
                         string gender = table.Rows[0]["student_gender"].ToString();
                         if (gender == "Male")
                         {
                             RadioButtonList1.SelectedIndex = 0;
                         }
                         else if (gender == "Femle")
                         {
                             RadioButtonList1.SelectedIndex = 1;
                         }
                         txtMarks.Text = table.Rows[0]["student_marks"].ToString();
                         txtPhoneNumber.Text = table.Rows[0]["student_phone"].ToString();
                         txtAddress.Text = table.Rows[0]["student_address"].ToString();
                     }
                     ButtonAdd.Visible = true;
                     ButtonUpdate.Visible = false;
                     ButtonCancel.Visible = true;

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
            try
            {

                con = new SqlConnection(strConnectionString);
                con.Open();
                command = new SqlCommand();
                command.Connection = con;


                command.CommandText = "StudentDetails_Proc";
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@Event", "Add");

                command.Parameters.AddWithValue("@Student_name", Convert.ToString(txtStudentName.Text.Trim()));
                command.Parameters.AddWithValue("@Student_gender", Convert.ToString(RadioButtonList1.Text.Trim()));
                command.Parameters.AddWithValue("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text.Trim()));
                command.Parameters.AddWithValue("@Student_marks", Convert.ToString(txtMarks.Text.Trim()));
                command.Parameters.AddWithValue("@Student_address", Convert.ToString(txtAddress.Text));
                int result = command.ExecuteNonQuery();





            }

            catch (Exception ex)
            {
                Response.Redirect("connection unsuccessful");
            }

            finally
            {
                con.Close();
                Response.Redirect("~/WebForm1.aspx");


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

            try
            {

                con = new SqlConnection(strConnectionString);
                con.Open();
                command = new SqlCommand();
                command.Connection = con;

                command.CommandText = "StudentDetails_Proc";
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Event", "Update");


                command.Parameters.AddWithValue("@Student_name", Convert.ToString(txtStudentName.Text.Trim()));
                command.Parameters.AddWithValue("@Student_gender", Convert.ToString(RadioButtonList1.Text.Trim()));
                command.Parameters.AddWithValue("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text.Trim()));
                command.Parameters.AddWithValue("@Student_marks", Convert.ToString(txtMarks.Text.Trim()));
                command.Parameters.AddWithValue("@Student_address", Convert.ToString(txtAddress.Text));
                command.Parameters.AddWithValue("@Student_id", Convert.ToInt32(Session["listPriceTextBox"]));  
                int result = command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Redirect("connection unsuccessful");
            }

            finally
            {
                con.Close();
                Response.Redirect("~/WebForm1.aspx");
            }
        }
    }
}

            
               
               






        
    

                
                  
        

        
    
