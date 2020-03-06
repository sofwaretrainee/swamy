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

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            var dbManager = new DBManager("constr");

            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Student_name", txtStudentName.Text, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_gender", RadioButtonList1.SelectedItem.Value, DbType.String));
            parameters.Add(dbManager.CreateParameter("@Student_marks", Convert.ToDouble(txtMarks.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_phone", Convert.ToInt64(txtPhoneNumber.Text), DbType.Int64));
            parameters.Add(dbManager.CreateParameter("@Student_address", txtAddress.Text, DbType.String));

            int lastId = 0;
           dbManager.Insert("Student_Add", CommandType.StoredProcedure, parameters.ToArray(), out lastId);
       }

        protected void Update_Click(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }






        }
    }
