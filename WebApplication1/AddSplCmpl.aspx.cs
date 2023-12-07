using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class AddSplCmpl: System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "student")
            {
                addsplcmpl.Enabled = true;
                
            }
            else
            {
                addsplcmpl.Enabled = false;

                Response.Write("<script>alert('Unauthorized Access');</script>");
            }
        }

        protected void SplcmplAddButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Create new SqlConnection and connect to the database using the connection string from web.config file
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();



                    // Query to insert
                    SqlCommand cmd = new SqlCommand("INSERT INTO splcmpl ([date], [roll], [name], [room], [splcmpl]) VALUES(@date, @roll, @name, @room, @splcmpl)", con);


                    int rol = int.Parse(roll.Text.Trim());
                    int r = int.Parse(room.Text.Trim());

                    cmd.Parameters.AddWithValue("@date", DateTime.Now);
                    cmd.Parameters.AddWithValue("@roll", rol);
                    cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                    cmd.Parameters.AddWithValue("@room", r);
                    cmd.Parameters.AddWithValue("@splcmpl", splcmpl.Text.Trim());



                    cmd.ExecuteNonQuery();

                    // Success message in alerts
                    Response.Write("<script>alert('Supply Complaints added!');</script>");
                }
            }
            catch (Exception ex)
            {
                // Error message in alerts
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
        protected void LogoutButton_Click(object sender, EventArgs e)
        {

            Session.Clear();


            Response.Redirect("Login.aspx");
        }


    }
}
