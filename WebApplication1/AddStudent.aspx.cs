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

namespace WebApplication1
{
    public partial class AddStudent : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "admin2" )
            {
                addstu.Enabled = true;
                viewstu.Enabled = true;
                upb.Enabled = true;
            }
            else
            {
                addstu.Enabled = false;
                viewstu.Enabled = false;
                upb.Enabled = false;

                Response.Write("<script>alert('Unauthorized Access');</script>");
            }
        }

        protected void StuAddButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Create new SqlConnection and connect to the database using the connection string from web.config file
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Hash the password
                    string hashedPassword = HashPassword(pass.Text.Trim());

                    // Query to insert
                    SqlCommand cmd = new SqlCommand("INSERT INTO data ([id], [password], [name], [roll], [boarder], [room], [year], [term]) VALUES(@id, @password, @name, @roll, @boarder, @room, @year, @term)", con);

                    int rol = int.Parse(roll.Text.Trim());
                    int board = int.Parse(boarder.Text.Trim());
                    int r = int.Parse(room.Text.Trim());

                    cmd.Parameters.AddWithValue("@id", id.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", hashedPassword);
                    cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                    cmd.Parameters.AddWithValue("@roll", rol);
                    cmd.Parameters.AddWithValue("@boarder", board);
                    cmd.Parameters.AddWithValue("@room", r);
                    cmd.Parameters.AddWithValue("@year", year.SelectedValue);
                    cmd.Parameters.AddWithValue("@term", term.SelectedValue);

                    cmd.ExecuteNonQuery();

                    // Success message in alerts
                    Response.Write("<script>alert('Student added!');</script>");
                }
            }
            catch (Exception ex)
            {
                // Error message in alerts
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < hashedBytes.Length; i++)
                {
                    builder.Append(hashedBytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        protected void view_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStu.aspx");

        }

        protected void up_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStu.aspx");

        }
        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            
            Session.Clear();


            Response.Redirect("Login.aspx");
        }



    }
}
