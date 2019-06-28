using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace UserMaintenance.Artist
{
    public partial class Artist_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                String check_user = "SELECT COUNT (*) FROM Artist WHERE USERNAME = '" + username_txtbox.Text + "'";
                SqlCommand command = new SqlCommand(check_user, conn);

                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "alert('Username not valid. Please try again!');", true);
                    Response.Redirect("Artist_Register.aspx");
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
            String insert = "INSERT INTO Artist (ID, NAME, USERNAME, WORKSHOP_NAME, PWD, CONFIRM_PWD)" +
                "VALUES (@ID, @NAME, @USERNAME, @WORKSHOP_NAME, @PWD, @CONFIRM_PWD)";
            SqlCommand command = new SqlCommand(insert, conn);

            command.Parameters.AddWithValue("@ID", newID.ToString());
            command.Parameters.AddWithValue("@NAME", name_txtbox.Text);
            command.Parameters.AddWithValue("@USERNAME", username_txtbox.Text);
            command.Parameters.AddWithValue("@WORKSHOP_NAME", workshopName_txtbox.Text);
            command.Parameters.AddWithValue("@PWD", pwd_txtbox.Text);
            command.Parameters.AddWithValue("@CONFIRM_PWD", confirmpwd_txtbox.Text);

            command.ExecuteNonQuery();

            Response.Write("Registration is successful!");
            conn.Close();
        }
            catch(Exception ex)
            {
                Response.Write("Error :" + ex.ToString());
            }
}
    }
}