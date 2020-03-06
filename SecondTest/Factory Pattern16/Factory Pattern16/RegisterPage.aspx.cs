using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Factory_Pattern16
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["listPriceTextBox"] != null)
                {
                    Cancel_Click(null, null);

                    //var dbManager = new DBManager("constr");
                    var dbManager = (DBManager)Application["dbManager"];
                    int _studentId = Convert.ToInt16(Session["listPriceTextBox"]);
                    IDbConnection con = null;
                    var parameters = new List<IDbDataParameter>();
                    parameters.Add(dbManager.CreateParameter("@Student_id", _studentId, DbType.Int32));
                //    parameters.Add(dbManager.CreateParameter("@Event", "Select", DbType.String));

                    var data = dbManager.GetDataSet("SelectById", CommandType.StoredProcedure, parameters.ToArray());

                    if (data.Tables[0].Rows.Count >= 0)
                    {
                        txtFirstName.Text = data.Tables[0].Rows[0]["studentFirst_Name"].ToString();
                        txtLastName.Text = data.Tables[0].Rows[0]["studentLast_name"].ToString();
                        txtEmail.Text = data.Tables[0].Rows[0]["studentEmail_Id"].ToString();
                        txtPassword.Text = data.Tables[0].Rows[0]["studentPassword"].ToString();
                        txtMobileNumber.Text = data.Tables[0].Rows[0]["studentMobile_Number"].ToString();

                        string gender = data.Tables[0].Rows[0]["student_Gender"].ToString();
                        if (gender == "Male")
                        {
                            RadioButtonList1.SelectedIndex = 0;
                        }
                        else if (gender == "Female")
                        {
                            RadioButtonList1.SelectedIndex = 1;
                        }

                        string s = Convert.ToString(data.Tables[0].Rows[0]["student_DOB"]);
                        DateTime DOB = Convert.ToDateTime(s);
                        txtDOB.Text = DOB.ToString("yyyy-MM-dd");

                        string address = data.Tables[0].Rows[0]["student_Address"].ToString();
                        string[] add = address.Split('|');
                        txtAddress1.Text = add[0];
                        txtAddress2.Text = add[1];
                        txtAddress3.Text = add[2];

                        DropDownList1.SelectedValue = data.Tables[0].Rows[0]["student_City"].ToString();
                        DropDownList2.SelectedValue = data.Tables[0].Rows[0]["student_State"].ToString();
                        DropDownList3.SelectedValue = data.Tables[0].Rows[0]["student_Country"].ToString();

                      

                    }
                }
            }
        }


        protected void Add_Click(object sender, EventArgs e)
        {
            //var dbManager = new DBManager("constr");
            var dbManager = (DBManager)Application["dbManager"];

            //var parameters = new List<IDbDataParameter>();

          //  parameters.Add(dbManager.CreateParameter("@Student_name", "s", DbType.String));
            //parameters.Add(dbManager.CreateParameter("@Student_gender", RadioButtonList1.SelectedItem.Value, DbType.String));
            //parameters.Add(dbManager.CreateParameter("@Student_marks", Convert.ToDouble(txtMarks.Text), DbType.Int64));
            //parameters.Add(dbManager.CreateParameter("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text), DbType.Int64));
            //parameters.Add(dbManager.CreateParameter("@Student_address", txtAddress.Text, DbType.String));

            // int lastId = 0;
            //dbManager.Insert("Student_Add", CommandType.StoredProcedure, parameters.ToArray(), out lastId);

            string add = txtAddress1.Text+"|"+txtAddress2.Text+"|"+txtAddress3.Text;

            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@StudentFirst_Name", txtFirstName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentLast_Name", txtLastName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentEmail_Id", txtEmail.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentPassword", txtPassword.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentMobile_Number", Convert.ToInt64(txtMobileNumber.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_Gender", RadioButtonList1.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_DOB", txtDOB.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_Address", add, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_City", DropDownList1.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_State", DropDownList2.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_Country", DropDownList3.SelectedItem.Value, DbType.String));


           
            //parameters.Add(dbManager.CreateParameter("@Student_marks", Convert.ToDouble(txtMarks.Text), DbType.Int64));
          
            //parameters.Add(dbManager.CreateParameter("@Student_address", txtAddress.Text, DbType.String));

            int lastId = 0;
           // parameters.Add(dbManager.CreateParameter("@Event", "Add", DbType.String));
            dbManager.Insert("Add_Student", CommandType.StoredProcedure, parameters.ToArray(), out lastId);
            Response.Redirect("GridPage.aspx");

        }

        protected void Update_Click(object sender, EventArgs e)
        {


            int _studentId = Convert.ToInt32(Session["listPriceTextBox"]);
            string add = txtAddress1.Text+ "|" + txtAddress2.Text+ "|" + txtAddress3.Text;
            //var dbManager = new DBManager("constr");
            var dbManager = (DBManager)Application["dbManager"];

            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@StudentFirst_Name", txtFirstName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentLast_Name", txtLastName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentEmail_Id", txtEmail.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentPassword", txtPassword.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@StudentMobile_Number", Convert.ToInt64(txtMobileNumber.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_Gender", RadioButtonList1.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_DOB", txtDOB.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_Address", add, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_City", DropDownList1.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_State", DropDownList2.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_Country", DropDownList3.SelectedItem.Value, DbType.String));
           

            int lastId = 0;
            parameters.Add(dbManager.CreateParameter("@Student_id", _studentId, DbType.Int32));
           // parameters.Add(dbManager.CreateParameter("@Event", "Update", DbType.String));

            dbManager.Update("Update_Student", CommandType.StoredProcedure, parameters.ToArray());

            Response.Redirect("GridPage.aspx");
        }



        protected void Cancel_Click(object sender, EventArgs e)
        {

            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtMobileNumber.Text = string.Empty;
            RadioButtonList1.Text = string.Empty;
            txtDOB.Text = string.Empty;
            txtAddress1.Text = string.Empty;
            txtAddress2.Text = string.Empty;
            txtAddress3.Text = string.Empty;
            DropDownList1.Text = string.Empty;
            DropDownList2.Text = string.Empty;
            DropDownList3.Text = string.Empty;



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }



}


