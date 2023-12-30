using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();

        using (SqlConnection cn = new SqlConnection(str))
        {
            string query = "select * from user_login where unm = @unm and password = @password";

            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@unm", unm.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);

                cn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();

                        string userType = reader["usertype"].ToString();
                        switch (userType)
                        {
                            case "admin":
                            case "customer":
                            case "editor":
                            case "merchant":

                                Session[userType] = unm.Text;

                                Response.Redirect("Dashboard.aspx");
                                break;
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Please enter a valid username no. or password')</script>");
                    }
                }

                cn.Close();
            }
        }
    }
}