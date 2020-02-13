using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Extra
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString;
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connectionString = @"Server = NDVORSVR02\SQL2014;Initial Catalog=Extra_db;User ID=wmuser; Password=wmuser";

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                sql = "INSERT INTO Extra(FirstName,LastName,Email,DateOfBirth,MobileNumber,Address)VALUES ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + txtDateOfBirth.Text + "','" + txtMobileNumber.Text + "','" + txtAddress.Text + "')";
                SqlCommand cmd = new SqlCommand(sql, con);

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.InsertCommand = new SqlCommand(sql, con);
                int i = adapter.InsertCommand.ExecuteNonQuery();

                cmd.Dispose();
                con.Close();
                if (i > 0)
                {
                    Response.Redirect("WebForm2.aspx");
                }
            }


            catch (Exception ex)
            {
                Response.Write("Connection Unsuccesfull");

            }




        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {

            
            connectionString = @"Server = NDVORSVR02\SQL2014;Initial Catalog=Extra_db;User ID=wmuser; Password=wmuser";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            sql = "DELETE Extra WHERE EmpID = '" + txtEmpID.Text + "' ";
            SqlCommand cmd = new SqlCommand(sql, con);

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.DeleteCommand = new SqlCommand(sql, con);
       int j = adapter.DeleteCommand.ExecuteNonQuery();

            cmd.Dispose();
            con.Close();

                if(j>0)
                {
                    Response.Redirect("WebForm2.aspx");
                }

           

         }
            catch(Exception exp)
            {
                Response.Write("Connection Unsuccesfull");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

          
            connectionString = @"Server = NDVORSVR02\SQL2014;Initial Catalog=Extra_db;User ID=wmuser; Password=wmuser";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            sql = "UPDATE Extra SET FirstName = '" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',Email='" + txtEmail.Text + "',DateOfBirth='" + txtDateOfBirth.Text + "',MobileNumber='" + txtMobileNumber.Text + "',Address='" + txtAddress.Text + "' WHERE EmpID = '" + txtEmpID.Text + "' ";
            SqlCommand cmd = new SqlCommand(sql, con);

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.UpdateCommand = new SqlCommand(sql, con);                          
          int k = adapter.UpdateCommand.ExecuteNonQuery();


            if(k>0)
            {
                Response.Redirect("WebForm2.aspx");
            }

            cmd.Dispose();
            con.Close();

                  }

            catch(Exception exc)
            {
                Response.Write("Connection Unsuccessful");
            }

         }


        protected void Button3_Click(object sender, EventArgs e)
        {
            txtEmpID.Text = string.Empty;
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtDateOfBirth.Text = string.Empty;
            txtMobileNumber.Text = string.Empty;
            txtAddress.Text = string.Empty;

         }

       

    }
}