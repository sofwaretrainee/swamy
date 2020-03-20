using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WorkFromHome1
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = @"Server = NDVORSVR02\SQL2014;Initial Catalog=WFM;User ID=wmuser; Password=wmuser";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();

            if (FileUpload1.HasFile == false)
            {
                //Label6.Text = "please insert image";

                Response.Write("<script>alert('please insert image " + Label6.Text + "') </script>");

            }

            else
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                String query = "insert into WFM_info(name,email,city,state,country,image) values(@name,@email,@city,@state,@country,@image)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@city", TextBox3.Text);
                cmd.Parameters.AddWithValue("@state", TextBox4.Text);
                cmd.Parameters.AddWithValue("@country", TextBox5.Text);
                cmd.Parameters.AddWithValue("@image", pic);
                cmd.ExecuteNonQuery();

                //Label6.Text = "Image Uploaded Succcesfully.....";

                Response.Write("<script>alert('Image Uploaded Succcesfully..... " + Label6.Text + "') </script>");

            }


        }


    }
}






