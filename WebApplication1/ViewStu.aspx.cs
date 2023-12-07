using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ViewStu : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                SqlDataAdapter sda = new SqlDataAdapter("SELECT [id], [name], [roll], [boarder],[room], [year], [term] FROM data", con);
                DataTable dtbl = new DataTable();
                sda.Fill(dtbl);

                

                StuGridView.DataSource = dtbl;
                StuGridView.DataBind();


                // Close the connection
                con.Close();
            }
            catch (Exception ex)
            {
                // Error message in alerts
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
        protected void StuGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           

             if (e.CommandName == "del")
            {
                try
                {
                    //create new sqlconnection and connection to database by using connection string from web.config file  
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM data WHERE roll=@roll", con);
                    cmd.Parameters.AddWithValue("@roll", e.CommandArgument.ToString().Trim());
                    cmd.ExecuteNonQuery();

                    // Close the connection
                    con.Close();

                    Response.Redirect("~/ViewStu.aspx");
                }
                catch (Exception ex)
                {
                    // Error message in alerts
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}