using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Configuration;
using System.Data.Linq;

namespace GaaTemplate2
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, ImageClickEventArgs e)
        {
           //// this.DataList2.Visible = false;
           
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
                if (item == null)
                {
                    lblnewmessage.Visible = false;
                }
                else if (item == 1)
                {
                    lblnewmessage.Visible = true;
                }
                else if (item == 2)
                {
                    lblnewmessage.Visible = true;
                }
                else if (item == 3)
                {
                    lblnewmessage.Visible = false;
                }
            }


            foreach (var item in query)
            {
                if (item == 1)
                {
                   HyperLink2.Text = "";
                }
                else
                {
                   // if (userID = null)
                    HyperLink2.Text = "User Must Be Logged in";
                    HyperLink2.NavigateUrl = "SignUp.aspx";
                }
            }
        }


        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
        }


        protected void imgbtnMsg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reply.aspx");
            

            
            //string userID = (string)(Session["SessionUser"]);
            //DataClasses1DataContext dc = new DataClasses1DataContext(GetConnectionString());

            //var query = from u in dc.UserTbls
            //            where u.Name == userID
            //                select u;

            //foreach (var item in query)
            //{
            //if (item.RegID > 0)
            //{
            
            //      Response.Redirect("NewMessage.aspx");
            
            //}
            //else
            //{
            //    Label1.Visible = true;
            //Label1.Text = "User Must Be signed in to add a Message.";
            //}
            //}
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reply.aspx");
        }

        

       }
}