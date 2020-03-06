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

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var dbManager = new DBManager("constr");

            IDbConnection con = null;

            var data = dbManager.GetDataTable("Student_Select", CommandType.StoredProcedure);

            GridView1.DataSource = data;

            GridView1.DataBind();
           
        }

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
                Response.Redirect("WebForm2.aspx");
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
           var dbManager = new DBManager("constr");

           var parameters  = new List<IDbDataParameter>();
           parameters.Add(dbManager.CreateParameter("@Student_id", _studentId, DbType.Int32));
           dbManager.Delete("Student_Delete", CommandType.StoredProcedure, parameters.ToArray());
       }




        }

    }
