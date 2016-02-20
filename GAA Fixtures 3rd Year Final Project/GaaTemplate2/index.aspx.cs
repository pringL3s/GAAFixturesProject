using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace GaaTemplate2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            linkbtnfacebook.Attributes.Add("onclick", "popWin(); return false; ");
            linkbtnTwitter.Attributes.Add("onclick", "popWin2(); return false; ");

            string userID = (string)(Session["SessionUser"]);
            if (userID != null)
            {
                HyperLink1.Text = string.Format("Hello {0}, Log Out?", userID);
                HyperLink1.Target = "SignUp.aspx";
            }


            DataClasses1DataContext dc = new DataClasses1DataContext(GetConnectionString());

            var query = from u in dc.UserTbls
                        where u.UserName == userID
                        select u.AdminCap;


            foreach (var item in query)
            {
                if (item == 1)
                {
                    HyperLink2.Text = "Admin Page";
                    HyperLink2.NavigateUrl = "Admin.aspx";
                }
                else 
                {
                    HyperLink2.Text = ""; 
                }
            }
        }

        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
        }
       
    }
}