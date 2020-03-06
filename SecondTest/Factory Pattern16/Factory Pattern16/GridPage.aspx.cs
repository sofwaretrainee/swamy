using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Factory_Pattern16
{
    public partial class GridPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {

                //var dbManager = new DBManager("constr");

                //IDbConnection con = null;

                //var parameters = new List<IDbDataParameter>();

                //parameters.Add(dbManager.CreateParameter("@Event", "Select", DbType.String));
                //var data = dbManager.GetDataTable("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());

                //GridView1.DataSource = data;

                //GridView1.DataBind();
            }

        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    var dbManager = new DBManager("constr");

        //    IDbConnection con = null;

        //    var data = dbManager.GetDataTable("Student_Select", CommandType.StoredProcedure);

        //    GridView1.DataSource = data;

        //    GridView1.DataBind();

        //}

        protected void lnkbtnreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Edit"))
            {
                GridViewRow row = ((LinkButton)e.CommandSource).NamingContainer as GridViewRow;
                Label listPriceTextBox = (Label)row.FindControl("lblStudId");
                Session["listPriceTextBox"] = listPriceTextBox.Text;
                Response.Redirect("RegisterPage.aspx");
            }
            else if (e.CommandName.Equals("Delete"))
            {
                GridViewRow row = ((LinkButton)e.CommandSource).NamingContainer as GridViewRow;
                Label listPriceTextBox = (Label)row.FindControl("lblStudId");
                Delete(listPriceTextBox);
            }
        }

        protected void Delete(Label listPriceTextBox)
        {
            int _studentId = Convert.ToInt32(listPriceTextBox.Text);
            //var dbManager = new DBManager("constr");
            var dbManager = (DBManager)Application["dbManager"];
            var parameters = new List<IDbDataParameter>();
            parameters.Add(dbManager.CreateParameter("@Student_id", _studentId, DbType.Int32));
           // parameters.Add(dbManager.CreateParameter("@Event","Delete", DbType.String));

            dbManager.Delete("Delete_Student", CommandType.StoredProcedure, parameters.ToArray());
            Response.Redirect("GridPage.aspx");
            


            //parameters.Delete(dbManager.CreateParameter("@Event", "Delete", DbType.String));
            //var data = dbManager.GetDataTable("StudentDetails_Proc", CommandType.StoredProcedure, parameters.ToArray());
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBManager dbManager = null;
            if (DropDownList1.SelectedValue == "mysql")
            {
                 dbManager = new DBManager("constring");
            }
            else if (DropDownList1.SelectedValue == "sql")
            {
                 dbManager = new DBManager("constr");
            }
            loadgrid(dbManager);
            Application["dbManager"] = dbManager;
        }

        private void loadgrid(DBManager dbManager)
        {

            var parameters = new List<IDbDataParameter>();

          //  parameters.Add(dbManager.CreateParameter("@Event", "Select", DbType.String));
            var data = dbManager.GetDataTable("Select_Student", CommandType.StoredProcedure, parameters.ToArray());

            GridView1.DataSource = data;

            GridView1.DataBind();
        }


    }

}
