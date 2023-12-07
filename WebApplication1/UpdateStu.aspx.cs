using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UpdateStu : System.Web.UI.Page
    {
        //Get connection string from web.config file  
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                //create new sqlconnection and connection to database by using connection string from web.config file  
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE data SET id=@id,  name=@Name, roll=@roll, boarder=@boarder, room=@room, year=@year, term=@term WHERE roll=@roll", con);

                int rol = int.Parse(roll.Text.Trim());
                int board = int.Parse(boarder.Text.Trim());
                int r = int.Parse(room.Text.Trim());

                cmd.Parameters.AddWithValue("@id", id.Text.Trim());
                cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@roll", rol);
                cmd.Parameters.AddWithValue("@boarder", board);
                cmd.Parameters.AddWithValue("@room", r);
                cmd.Parameters.AddWithValue("@year", year.SelectedValue);
                cmd.Parameters.AddWithValue("@term", term.SelectedValue);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Updated!');</script>");

                // Close the connection
                con.Close();

                

            }
            catch (Exception ex)
            {
                // Error message in alerts
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}