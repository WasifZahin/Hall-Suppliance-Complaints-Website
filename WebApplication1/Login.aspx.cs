using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;

namespace WebApplication1
{
    public partial class Login : Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void b_Click(object sender, EventArgs e)
        {
            string username = id.Text;
            string password = pass.Text;
            string hashedPassword = HashPassword(password);

            if (username == "admin1" && password == "scrtps")
            {
                Session["username"] = id.Text;
                

                Response.Redirect("ViewSplCmpl.aspx");

            }

            else if (username == "admin2" && password == "scrtps")
            {
                Session["username"] = id.Text;
            

                Response.Redirect("AddStudent.aspx");

            }

            else if (ValidateUser(username, hashedPassword))
            {
                Session["username"] = "student";
                

                Response.Redirect("AddSplCmpl.aspx");
            }
            else
            {
                // Display an error message
                Response.Write("Invalid username or password.");
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

        private bool ValidateUser(string username, string password)
        {
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string query = "SELECT COUNT(*) FROM [data] WHERE [id] = @username AND [password] = @password";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", password);

                    connection.Open();

                    int count = (int)command.ExecuteScalar();

                    return count > 0;
                }
            }
        }
    }
}
