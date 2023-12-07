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
    public partial class ViewSplCmpl : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"].ToString() == "admin1")
            {
                try
                {
                    //create new sqlconnection and connection to database by using connection string from web.config file  
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlDataAdapter sda = new SqlDataAdapter("SELECT [ID], [date], [roll], [name], [room], [splcmpl] FROM splcmpl", con);
                    DataTable dtbl = new DataTable();
                    sda.Fill(dtbl);

                    SplCmplGridView.DataSource = dtbl;
                    SplCmplGridView.DataBind();

                    // Close the connection
                    con.Close();
                }
                catch (Exception ex)
                {
                    // Error message in alerts
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
            else
            {
                

                Response.Write("<script>alert('Unauthorized Access');</script>");
            }


            
        }
        protected void SplCmplGridView_RowCommand(object sender, GridViewCommandEventArgs e)
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

                    SqlCommand cmd = new SqlCommand("DELETE FROM splcmpl WHERE ID=@ID", con);
                    cmd.Parameters.AddWithValue("@ID", e.CommandArgument.ToString().Trim());
                    cmd.ExecuteNonQuery();

                    // Close the connection
                    con.Close();

                    Response.Redirect("~/ViewSplCmpl.aspx");
                }
                catch (Exception ex)
                {
                    // Error message in alerts
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            
            Session.Clear();

            
            Response.Redirect("Login.aspx");
        }

    }
}