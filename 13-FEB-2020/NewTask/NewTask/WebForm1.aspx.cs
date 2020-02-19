using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace NewTask
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlDataReader dataReader;
        string connectionString;
        SqlCommand command;
        SqlConnection con;
        String sql;
        int userId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["userId"] != null)
            {
                userId = Convert.ToInt32(Request.QueryString["userId"].ToString());
            }
            if (!IsPostBack)
            {
                BindTextBoxvalues();
            }
        }

      

        private void BindTextBoxvalues()
        {
            SqlConnection con = new SqlConnection(@"Server = NDVORSVR02\SQL2014; Initial Catalog=NewTask_db;User ID=wmuser;Password=wmuser");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from NewTaskInfo where userId='" + userId + "'", con);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dataReader = cmd.ExecuteReader();
            if (dt.Rows.Count > 0)
            {
                txtFirstName.Text = dt.Rows[0][1].ToString();
                txtLastName.Text = dt.Rows[0][2].ToString();
                txtEmail.Text = dt.Rows[0][3].ToString();
                txtPassword.Text = dt.Rows[0][4].ToString();
                txtGender.Text = dt.Rows[0][5].ToString();
                txtDateOfBirth.Text = dt.Rows[0][6].ToString();
                txtMobileNumber.Text = dt.Rows[0][7].ToString();
                txtAddress.Text = dt.Rows[0][8].ToString();


            }


            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            {
                if (userId != null)
                {
                    SqlConnection con = new SqlConnection(@"Server = NDVORSVR02\SQL2014; Initial Catalog=NewTask_db;User ID=wmuser;Password=wmuser");
                    con.Open();

                    SqlCommand cmd = new SqlCommand("update NewTaskInfo set FirstName='" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',Email='" + txtEmail.Text + "',Password='" + txtPassword.Text + "',Gender='" + txtGender.Text + "',DateOfBirth='" + txtDateOfBirth.Text + "',MobileNumber='" + txtMobileNumber.Text + "',Address='" + txtAddress.Text + "'  where userId=" + userId + "", con);

                    int result = cmd.ExecuteNonQuery();

                    if (result == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record Updated Successfully');", true);
                    }
                    con.Close();
                    Response.Redirect("~/Upgrade.aspx");

                }
                else
                {
                    DataTable dt = new DataTable();
                    dt.Columns.AddRange(new DataColumn[8] { new DataColumn("FirstName"), new DataColumn("LastName"), new DataColumn("Email"), new DataColumn("Password"), new DataColumn("Gender"), new DataColumn("DateOfBirth"), new DataColumn("MobileNumber"), new DataColumn("Address") });
                    ViewState["NewTaskInfo"] = dt;
                    this.BindGrid();
                }
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtGender.Text = string.Empty; 
            txtDateOfBirth.Text = string.Empty;
            txtMobileNumber.Text = string.Empty;
            txtAddress.Text = string.Empty;
            Response.Redirect("~/Upgrade.aspx");

        }


        private void AddNewUsers(string FirstName, string LastName, string Email, string Password, string Gender, string DateOfBirth, string MobileNumber, string Address)
        {
            SqlConnection con = new SqlConnection(@"Server = NDVORSVR02\SQL2014; Initial Catalog=NewTask_db;User ID=wmuser;Password=wmuser");


            try
            {
                con.Open();
                String query = "INSERT INTO NewTaskInfo  ([FirstName],[LastName],[Email],[Password],[Gender],[DateOfBirth],[MobileNumber],[Address]) VALUES (@FirstName,@LastName,@Email, @Password,@Gender,@DateOfBirth,@MobileNumber,@Address)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add("@FirstName", FirstName);
                cmd.Parameters.Add("@LastName", LastName);
                cmd.Parameters.Add("@Email", Email);
                cmd.Parameters.Add("@Password", Password);
                cmd.Parameters.Add("@Gender", Gender);
                cmd.Parameters.Add("@DateOfBirth", DateOfBirth);
                cmd.Parameters.Add("@MobileNumber", MobileNumber);
                cmd.Parameters.Add("@Address", Address);
                cmd.ExecuteNonQuery();
                Console.WriteLine("Records Inserted Successfully");
                con.Close();
            }
            catch (SqlException e)
            {
                Console.WriteLine("Error Generated. Details: " + e.ToString());
            }
            finally
            {
                con.Close();
                Console.ReadKey();
            }

           

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            AddNewUsers(txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtPassword.Text, txtGender.Text, txtDateOfBirth.Text, txtMobileNumber.Text, txtAddress.Text);
            

        }
    }
}
























