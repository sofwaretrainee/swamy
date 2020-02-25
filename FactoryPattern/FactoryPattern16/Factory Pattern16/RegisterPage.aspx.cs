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
                    Cancel_Click(null,null);

                    var dbManager = new DBManager("constr");
                    int _studentId = Convert.ToInt16(Session["listPriceTextBox"]);
                    IDbConnection con = null;
                    var parameters = new List<IDbDataParameter>();
                    parameters.Add(dbManager.CreateParameter("@Student_id", _studentId, DbType.Int32));
                    parameters.Add(dbManager.CreateParameter("@Event", "Select", DbType.String));

                    var data = dbManager.GetDataSet("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

                    if (data.Tables[0].Rows.Count >= 0)
                    {
                        txtStudentName.Text = data.Tables[0].Rows[0]["student_name"].ToString();
                        string gender = data.Tables[0].Rows[0]["student_gender"].ToString();
                        if (gender == "male")
                        {
                            RadioButtonList1.SelectedIndex = 0;
                        }
                        else if (gender == "female")
                        {
                            RadioButtonList1.SelectedIndex = 1;
                        }
                        txtMarks.Text = data.Tables[0].Rows[0]["student_marks"].ToString();
                        txtPhoneNumber.Text = data.Tables[0].Rows[0]["student_phone"].ToString();
                        txtAddress.Text = data.Tables[0].Rows[0]["student_address"].ToString();

                    }
                }
            }
        }


        protected void Add_Click(object sender, EventArgs e)
        {
            var dbManager = new DBManager("constr");

            // var parameters = new List<IDbDataParameter>();
            // parameters.Add(dbManager.CreateParameter("@Student_name", txtStudentName.Text, DbType.String));
            // parameters.Add(dbManager.CreateParameter("@Student_gender", RadioButtonList1.SelectedItem.Value, DbType.String));
            // parameters.Add(dbManager.CreateParameter("@Student_marks", Convert.ToDouble(txtMarks.Text), DbType.Int64));
            // parameters.Add(dbManager.CreateParameter("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text), DbType.Int64));
            // parameters.Add(dbManager.CreateParameter("@Student_address", txtAddress.Text, DbType.String));

            // int lastId = 0;
            //dbManager.Insert("Student_Add", CommandType.StoredProcedure, parameters.ToArray(), out lastId);


            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Student_name", txtStudentName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_gender", RadioButtonList1.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_marks", Convert.ToDouble(txtMarks.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_address", txtAddress.Text, DbType.String));

            int lastId = 0;
            parameters.Add(dbManager.CreateParameter("@Event", "Add", DbType.String));
            dbManager.Insert("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray(), out lastId);
            Response.Redirect("GridPage.aspx");

        }

        protected void Update_Click(object sender, EventArgs e)
        {


            int _studentId = Convert.ToInt32(Session["listPriceTextBox"]);

            var dbManager = new DBManager("constr");

            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Student_name", txtStudentName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_gender", Convert.ToString(RadioButtonList1.Text), DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_marks", Convert.ToInt32(txtMarks.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_address", txtAddress.Text, DbType.String));

            int lastId = 0;
            parameters.Add(dbManager.CreateParameter("@Student_id", _studentId, DbType.Int32));
            parameters.Add(dbManager.CreateParameter("@Event", "Update", DbType.String));

            dbManager.Update("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

            Response.Redirect("GridPage.aspx");
        }



        protected void Cancel_Click(object sender, EventArgs e)
        {
            txtStudentName.Text = "";
            RadioButtonList1.Text = "";
            txtMarks.Text = "";
            txtPhoneNumber.Text = "";
            txtPhoneNumber.Text = "";
            txtAddress.Text = "";






        }
    }



        }
    

