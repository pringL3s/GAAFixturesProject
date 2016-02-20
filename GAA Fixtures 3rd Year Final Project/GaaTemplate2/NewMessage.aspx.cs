using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Configuration;


namespace GaaTemplate2
{
   
    public partial class NewMessage : System.Web.UI.Page
    {
        #region Connections
        string ConnStrings = ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
        #endregion

        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
        protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
        protected System.Web.UI.HtmlControls.HtmlForm Form1;
        private int commentid = 1;
        protected System.Web.UI.WebControls.Label lblStatus;
        protected System.Web.UI.WebControls.Button Button2;
        protected System.Web.UI.WebControls.RequiredFieldValidator Requiredfieldvalidator4;
        protected System.Web.UI.WebControls.TextBox txtname;
        protected System.Web.UI.WebControls.TextBox txtemail;
        protected System.Web.UI.WebControls.TextBox txtcomment;
        protected System.Web.UI.WebControls.TextBox txtsubject;
        protected System.Web.UI.WebControls.TextBox txtProfile;
        protected System.Web.UI.HtmlControls.HtmlInputRadioButton MsgType_4;
        protected System.Web.UI.HtmlControls.HtmlInputRadioButton MsgType_1;
        protected System.Web.UI.HtmlControls.HtmlInputRadioButton MsgType_2;
        protected System.Web.UI.HtmlControls.HtmlInputRadioButton MsgType_5;
        private int articleid = 1;

        private void Page_Load(object sender, System.EventArgs e)
        {
            // Put user code to initialize the page here
           // lblUsee.DataBind();

            if (Request.QueryString["id"] != null)
                articleid = Convert.ToInt32(Request.QueryString["id"]);

            if (Request.QueryString["Test"] != null)
            {
                if (String.Compare(Request.QueryString["Test"].ToLower(), "true") == 0)
                {
                    int mParentId = 0;
                    int mArticleId = articleid;
                    string mTitle = " ";
                    string mUserName = " ";
                    string mUserEmail = " ";
                    string mDescription = " ";
                    int mIndent = 0;
                    int mCommentType = 1;

                    if (MsgType_2.Checked)
                        mCommentType = 2;
                    //if (MsgType_3.Checked) 
                    //	mCommentType = 3;
                    if (MsgType_4.Checked)
                        mCommentType = 4;
                    if (MsgType_5.Checked)
                        mCommentType = 5;

                    try
                    {
                        SqlConnection myC = new SqlConnection();
                        myC.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["GAAFixturesConnectionString"];
                        string sqlQuery = "INSERT into ForumTbl (ParentId,ArticleId,Title,UserName,UserEmail,Description,Indent,CommentType) VALUES ('" + mParentId + "','" + mArticleId + "','" + mTitle + "','" + mUserName + "','" + mUserEmail + "','" + mDescription + "','" + mIndent + "','" + mCommentType + "')";
                        myC.Open();
                        SqlCommand myCommand = new SqlCommand();
                        myCommand.CommandText = sqlQuery;
                        myCommand.Connection = myC;
                        int i = myCommand.ExecuteNonQuery();
                        myC.Close();
                        /*lblStatus.ForeColor = Color.Green;
                        lblStatus.Text = "Status: Success";*/
                        lblUsee.ForeColor = Color.Green;
                        lblUsee.Text = "Status: Success";
                        Response.Redirect("Forum.aspx?id=" + articleid);

                    }
                    catch (Exception)
                    {
                        /*lblStatus.ForeColor = Color.Red;
                        lblStatus.Text = "Status: Error";*/
                        lblUsee.ForeColor = Color.Red;
                        lblUsee.Text = "Status: Error";
                    }

                }
            }

        }

        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
        }


        private void LoadComment()
        {
        }


        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
        //{
        //    this.txtProfile.TextChanged += new System.EventHandler(this.txtProfile_TextChanged);
        //    this.Button1.Click += new System.EventHandler(this.Button1_Click);
        //    this.Button2.Click += new System.EventHandler(this.Button2_Click);
        //    this.MsgType_2.ServerChange += new System.EventHandler(this.MsgType_2_ServerChange);
        //    this.MsgType_3.ServerChange += new System.EventHandler(this.MsgType_3_ServerChange);
        //    this.MsgType_5.ServerChange += new System.EventHandler(this.MsgType_5_ServerChange);
        //    this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion
/*
        private void Button1_Click(object sender, System.EventArgs e)
        {
            int mParentId = 0;
            int mArticleId = articleid;
            string mTitle = "Test";
            string mUserName = "quartz";
            
            string mDescription = "Test Description";
            int mIndent = 0;

            int mCommentType = 1;

            
            try
            {
                mTitle = txtsubject.Text;
                mUserName = (string)(Session["SessionUser"]);
                lblUsee.Text = mUserName.ToString(); 
                mDescription = txtcomment.Text;

                

                if (IsValid)
                {
                    SqlConnection myC = new SqlConnection(GetConnectionString());
                    //SqlConnection myC = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);

                   // string sqlQuery = "INSERT into " + ConfigurationManager.AppSettings["ForumTbl"] + "(ParentId,ArticleID,Title,UserName,UserEmail,Description,Indent,UserProfile) VALUES ('" + mParentId + "','" + mArticleId + "','" + mTitle + "','" + mUserName + "','" + mUserEmail + "','" + mDescription + "','" + mIndent + "','" + "http://www.codeproject.com/script/profile/whos_who.asp?id=81898" + "')";
                    string sqlQuery = "INSERT INTO ForumTbl(ParentId,ArticleId,Title,UserName,Description,Indent,DateAdded) VALUES ('" + mParentId + "','" + mArticleId + "','" + mTitle + "','" + mUserName + "','" + mDescription + "','" + mIndent + "','" + DateTime.Now + "')";
                    myC.Open();
                    SqlCommand myCommand = new SqlCommand();
                    myCommand.CommandText = sqlQuery;
                    myCommand.Connection = myC;
                    myCommand.CommandType = CommandType.Text;
                    int i = myCommand.ExecuteNonQuery();
                    myC.Close();
                    
                    Response.Redirect("Forum.aspx?id=" + articleid);
                }
            }
            catch (Exception)
            {

                lblStatus.ForeColor = Color.Red;
                lblStatus.Text = "Status: Error";
            }
        }*/
/*
        private void Button2_Click(object sender, System.EventArgs e)
        {
            
            Response.Redirect("Forum.aspx?id=" + articleid);
        }*/

        public void btnBack_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }


        //ADDING THE REPLY TO THE FORUM
        protected void btnReply_Click(object sender, System.EventArgs e)
        {
            int mParentId = 0;
            int mArticleId = articleid;
            string mTitle = " ";
            string mUserName = " ";
            string mDescription = " ";
            int mIndent = 0;
            int mCommentType = 1;

            try
            {
                mTitle = txtsubject.Text;
                mUserName = (string)(Session["SessionUser"]);
                lblUsee.Text = mUserName.ToString();
                mDescription = txtcomment.Text;

                if (IsValid)
                {
                    SqlConnection myC = new SqlConnection(GetConnectionString());
                    //SqlConnection myC = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);

                    // string sqlQuery = "INSERT into " + ConfigurationManager.AppSettings["ForumTbl"] + "(ParentId,ArticleID,Title,UserName,UserEmail,Description,Indent,UserProfile) VALUES ('" + mParentId + "','" + mArticleId + "','" + mTitle + "','" + mUserName + "','" + mUserEmail + "','" + mDescription + "','" + mIndent + "','" + "http://www.codeproject.com/script/profile/whos_who.asp?id=81898" + "')";
                    string sqlQuery = "INSERT INTO ForumTbl(ParentId,ArticleId,Title,UserName,Description,Indent,DateAdded) VALUES ('" + mParentId + "','" + mArticleId + "','" + mTitle + "','" + mUserName + "','" + mDescription + "','" + mIndent + "','" + DateTime.Now + "')";
                    myC.Open();
                    SqlCommand myCommand = new SqlCommand();
                    myCommand.CommandText = sqlQuery;
                    myCommand.Connection = myC;
                    myCommand.CommandType = CommandType.Text;
                    int i = myCommand.ExecuteNonQuery();
                    myC.Close();

                    Response.Redirect("Forum.aspx?id=" + articleid);
                }
            }
            catch (Exception)
            {
                //lblStatus.ForeColor = Color.Red;
                //lblStatus.Text = "Status: Error";
                lblUsee.ForeColor = Color.Red;
                lblUsee.Text="Status : Error";
            }
        }
    }
}