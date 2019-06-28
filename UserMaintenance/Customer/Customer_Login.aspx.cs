using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace UserMaintenance
{
    public partial class Login_Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            String check_user = "SELECT COUNT (*) FROM Customer WHERE USERNAME = '" + username_txtbox.Text + "'";
            SqlCommand command = new SqlCommand(check_user, conn);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            conn.Close();

            if(temp == 1)
            {
                 conn.Open();

                string check_pwd = "SELECT PWD FROM Customer WHERE USERNAME = '" + username_txtbox.Text + "' ";

                SqlCommand pwd_command = new SqlCommand(check_pwd, conn);

                string pwd = pwd_command.ExecuteScalar().ToString();

                if(pwd == pwd_txtbox.Text)
                {
                    Session["New"] = username_txtbox.Text;
                    Response.Write("Password match.");
                    Response.Redirect("Customer_Homepage.aspx");
                }
                else
                {
                    Response.Write("Password or Username not match.");
                }
            }
            conn.Close();
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {

        }
    }
}