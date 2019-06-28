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
    public partial class Register_Artist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                String check_user = "SELECT COUNT (*) FROM Customer WHERE USERNAME = '" + username_txtBox.Text + "'";
                SqlCommand command = new SqlCommand(check_user, conn);

                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "alert('Username not valid. Please try again!');", true);
                    Response.Redirect("Customer_Register.aspx");
                }

                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                String insert = "INSERT INTO Customer (ID, NAME, USERNAME, ADDRESS, POSTCODE, PWD, CONFIRM_PWD, EMAIL, COUNTRY)" +
                    "VALUES (@ID, @NAME, @USERNAME, @ADDRESS, @POSTCODE, @PWD, @CONFIRM_PWD, @EMAIL, @COUNTRY)";
                SqlCommand command = new SqlCommand(insert, conn);

                command.Parameters.AddWithValue("@ID", newID.ToString());
                command.Parameters.AddWithValue("@NAME", name_txtBox.Text);
                command.Parameters.AddWithValue("@USERNAME", username_txtBox.Text);
                command.Parameters.AddWithValue("@ADDRESS", address_txtBox.Text);
                command.Parameters.AddWithValue("@POSTCODE", postcode_txtBox.Text);
                command.Parameters.AddWithValue("@PWD", pwd_txtBox.Text);
                command.Parameters.AddWithValue("@CONFIRM_PWD", confirmpwd_txtBox.Text);
                command.Parameters.AddWithValue("@EMAIL", email_txtBox.Text);
                command.Parameters.AddWithValue("@COUNTRY", country_ddl.SelectedItem.ToString());

                command.ExecuteNonQuery();

                Response.Write("Registration is successful!");
                Response.Redirect("Customer_Profile.aspx");
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error :" + ex.ToString());
            }
        }

    }
}