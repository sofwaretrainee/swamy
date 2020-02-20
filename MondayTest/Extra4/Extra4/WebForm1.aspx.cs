using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace Extra4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"server=127.0.0.1;database=aspcruddb;uid=root;pwd=root;";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                GridField();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(connectionString);
                con.Open();



                MySqlCommand cmd = new MySqlCommand("select * from product", con);
                //cmd.Connection = con;
                //Create a data reader and Execute the command
                MySqlDataReader dataReader = cmd.ExecuteReader();

                //Read the data and store them in the list
                while (dataReader.Read())
                {
                    //list[0].Add(dataReader["id"] + "");
                    //list[1].Add(dataReader["name"] + "");
                    //list[2].Add(dataReader["age"] + "");
                }

                //close Data Reader
                dataReader.Close();

                //close Connection
                //this.CloseConnection();
                //cmd.CommandText = "ProductAddOrEdit";
                //cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("_productId", Convert.ToInt32(hfProductID.Value == "" ? "0" : hfProductID.Value));
                //cmd.Parameters.AddWithValue("_product", txtProduct.Text.Trim());
                //cmd.Parameters.AddWithValue("_price", Convert.ToDecimal(txtPrice.Text.Trim()));
                //cmd.Parameters.AddWithValue("_count", Convert.ToInt32(txtCount.Text.Trim()));
                //cmd.Parameters.AddWithValue("_description", txtDescription.Text.Trim());
                cmd.ExecuteNonQuery();
                GridField();
                Clear();


                lblSuccessMessage.Text = "Submited Succesfully";

            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;

            }
        }










        void Clear()
        {
            hfProductID.Value = "";
            txtProduct.Text = "";
            txtPrice.Text = "";
            txtCount.Text = "";
            txtDescription.Text = "";
            lblSuccessMessage.Text = "";
            lblErrorMessage.Text = "";

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        void GridField()
        {
            //MySqlConnection con = new MySqlConnection(connectionString);
            //con.Open();

            //MySqlCommand cmd = new MySqlCommand();
            //cmd.Connection = con;

            //cmd.CommandText = "ProductViewAll";
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            //DataTable table = new Datatable();
            //adapter.Fill(table);
            //gvProduct.DataSource = table;
            //gvProduct.DataBind();
        }


        protected void lnkSelect_Click(object sender, EventArgs e)
       {
          //int ProductID = Convert.ToInt32(sender as LinkButton).CommandArgument;

           
          //  MySqlConnection con = new MySqlConnection(connectionString);
          //  con.Open();

          //  MySqlCommand cmd = new MySqlCommand();
          //  cmd.Connection = con;

          //  cmd.CommandText = "ProductViewById";
          //  cmd.CommandType = System.Data.CommandType.StoredProcedure;
          // cmd.Parameters.AddWithValue("_productId",ProductID);


          //  MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
          //  Datatable table = new Datatable();
          //  adapter.Fill(table);

          
          //  txtProduct.Text = table.Rows[0][1].ToString();
          //  txtPrice.Text = table.Rows[0][2].ToString();
          //  txtCount.Text = table.Rows[0][3].ToString();
          //  txtDescription.Text = table.Rows[0][4].ToString();
          // hfProductID.Value = table.Rows[0][0].ToString();

          // btnSave.Text="Update";


         
       }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(connectionString);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "ProductDeleteById";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("_productId", Convert.ToInt32(hfProductID.Value == "" ? "0" : hfProductID.Value));

            cmd.ExecuteNonQuery();
            GridField();
            Clear();


            lblSuccessMessage.Text = "Deleted Succesfully";
        }
    }
}

        
          
            
            


        
       
            
        
    
