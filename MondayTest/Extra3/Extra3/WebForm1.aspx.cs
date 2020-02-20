using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Extra3
{
    public partial class WebForm1 : System.Web.UI.Page
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
                BindEmployeeData();
            }
        }

       



        public void BindEmployeeData()
        {
            try
            {
                con = new SqlConnection(strConnectionString);
                command = new SqlCommand();
                command.Connection = con;

                command.CommandText = "StudentDetails_Proc";
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Event", "Select");

                _sqlDataAdapter = new SqlDataAdapter(command);
                _dtSet = new DataSet();
                _sqlDataAdapter.Fill(_dtSet);
                gvStudent.DataSource = _dtSet;
                gvStudent.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("The Error is " + ex);
            }
            finally
            {
                if(con != null)
                    con.Close();
            }
        }

        protected void gvStudent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("Edit"))
            {
                GridViewRow clickedRow = ((LinkButton)e.CommandSource).NamingContainer as GridViewRow;
                Label listPriceTextBox = (Label)clickedRow.FindControl("lblStudId");
                Session["listPriceTextBox"] = listPriceTextBox.Text;

                Response.Redirect("WebForm2.aspx");

            }
            else if (e.CommandName.Equals("Delete"))
            {
                GridViewRow clickedRow = ((LinkButton)e.CommandSource).NamingContainer as GridViewRow;
                Label listPriceTextBox = (Label)clickedRow.FindControl("lblStudId");
                delete(listPriceTextBox);
            }
           
        }  
         void delete(Label listPriceTextBox)
        {
            
                //int studentId = Convert.ToInt16(listPriceTextBox.Text);
                //con = new SqlConnection(strConnectionString);
                //con.Open();
                //command = new SqlCommand();
                //command.Connection = con;

                //command.CommandText = "StudentDetails_Proc";
                //command.CommandType = CommandType.StoredProcedure;
                //command.Parameters.AddWithValue("@Event", "Delete");
                //command.Parameters.AddWithValue("@Student_id", "studentId");
                //int result = Convert.ToInt32(command.ExecuteNonQuery());

                System.Data.DataTable table = new System.Data.DataTable();
                con = new SqlConnection(strConnectionString);
                con.Open();
                command = new SqlCommand();
                command.CommandText = "StudentDetails_Proc";
                command.Connection = con;
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Event", "Delete");
                command.Parameters.AddWithValue("@Student_id", Convert.ToInt32(listPriceTextBox.Text));
                int result = Convert.ToInt32(command.ExecuteNonQuery());
                Response.Redirect("WebForm1.aspx");
                con.Close();
           
        }

         protected void lnkbtnreg_Click(object sender, EventArgs e)
         {
             Response.Redirect("WebForm2.aspx");
         }















    }
}