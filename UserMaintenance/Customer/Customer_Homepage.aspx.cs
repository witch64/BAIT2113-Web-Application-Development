using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserMaintenance
{
    public partial class Customer_Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] != null)
            {
                banner.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Customer_Login.aspx");
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Customer_Login.aspx");
        }
    }
}