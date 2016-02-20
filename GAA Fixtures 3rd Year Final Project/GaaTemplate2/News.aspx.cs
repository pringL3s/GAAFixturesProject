using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GaaTemplate2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = (string)(Session["SessionUser"]);
            if (userID != null)
            {
                HyperLink1.Text = string.Format("Hello {0}, Log Out?", userID);
                HyperLink1.Target = "SignUp.aspx";
            }

        }
    }
}