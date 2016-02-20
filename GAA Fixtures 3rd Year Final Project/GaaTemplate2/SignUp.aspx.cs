using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Data.ProviderBase;

namespace GaaTemplate2
{
    public partial class GaaFixtures : System.Web.UI.Page
    {
        //SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());

        /* #region Connections
             string ConnStrings = ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
         #endregion */

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["SessionUser"] = null;
        }


        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
        }

        private void ExecuteInsert(string name, string username, string email, string password, int admin)
        {
            password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPw.Text, "MD5");

            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO UserTbl (Name, UserName, Email, Password,AdminCap) VALUES " + " (@Name,@UserName,@Email,@Password,@AdminCap)";

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[5];
                //param[0] = new SqlParameter("@id", SqlDbType.Int, 20);
                param[0] = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@AdminCap", SqlDbType.Int);

                param[0].Value = name;
                param[1].Value = username;
                param[2].Value = email;
                param[3].Value = password;
                param[4].Value = admin;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "")
            {
                lblMsg.Text = "Please complete form";
            }
            else
            {
                ExecuteInsert(txtName.Text, txtUserN.Text, txtEmail.Text, txtPw.Text, 3);
                btnSubmit.Visible = true;
                txtName.Text = "";
                txtUserN.Text = "";
                txtEmail.Text = "";
                txtPw.Text = "";
                //conform.Visible = true;

                if (txtPw.Text == txtPw.Text)
                {
                   
                    //if (txtUserN.Text == "")
                    //{
                    //    lblErrorEmail.Text = ("Please enter valid an existing UserName");
                    //}
                    //else
                    //{
                    //    SqlConnection conn = new SqlConnection(GetConnectionString());
                    //    string sql = "SELECT Email FROM UserTbl WHERE (UserName) VALUES " + " (@UserName)";
                    //}

                    //call the method to execute insert to the database
                    //ExecuteInsert(txtName.Text,
                    //              txtUserN.Text,
                    //              txtEmail.Text,
                    //              txtPw.Text);
                    //DropDownList1.SelectedItem.Text,
                    //TxtAge.Text, TxtAddress.Text);
                    lblMsg.Text = ("Registration was successful");
                    //Response.Write("Record was successfully added!");
                    ClearControls(Page);
                    //Response.Redirect("Index.aspx");
                }
                else
                {
                    Response.Write("Password did not match");
                    txtPw.Focus();
                }
            }
        }//end registration submit button

        public static void ClearControls(Control Parent)
        {

            if (Parent is TextBox)
            { (Parent as TextBox).Text = string.Empty; }
            else
            {
                foreach (Control c in Parent.Controls)
                    ClearControls(c);
            }
        }


        /* //checking password
         if (txtPw.Text != txtCPw.Text)
         {
             lblMsg.Text = "Password must be the same";
         }
         else
         {
             SqlConnection mySqlConn = new SqlConnection();
             SqlCommand mySqlCommand = new SqlCommand();
             SqlDataReader mySqlDataReader;

             try
             {
                 mySqlConn.ConnectionString = ConnStrings;
                 mySqlConn.Open();
                 mySqlCommand.Connection = mySqlConn;

                 mySqlCommand.CommandText = "SELECT Email FROM UserTbl where (Email = ' " + txtEmail.Text + " ' ) ";
                 lblMsg.Text = "Email exist, choose a different one";
                 lblMsg.Text = mySqlCommand.CommandText;

                 mySqlDataReader = mySqlCommand.ExecuteReader();

                 if (mySqlDataReader.Read())
                 {
                     lblMsg.Text = "Email existed!, Please enter a different email";
                     mySqlDataReader.Close();
                     mySqlConn.Close();
                 }
                 else
                 {
                     mySqlDataReader.Close();

                     string hashedPassword;

                     hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPw.Text, "MD5");

                     mySqlCommand.CommandText = "INSERT INTO UserTbl (Name, UserName, Email, [Password]) values (' " + txtName.Text + " ', ' " + txtUserN.Text + " ', ' " + txtEmail.Text + " ', ' " + hashedPassword + " ')";
                     mySqlCommand.ExecuteNonQuery();

                     mySqlDataReader = mySqlCommand.ExecuteReader();
                     mySqlConn.Close();
                 }
                 mySqlDataReader.Close();
             }
             catch (SqlException ex)
             {
                 string errorMessage = "Error in registering user";
                 errorMessage += ex.Message;
                 throw new Exception(errorMessage);
             }
             finally
             {
                 lblMsg.Text = "User Registration successful";
                 //ClearControls(Page);
             }
         } */
        //} //end registration submit button

        //public static void ClearControls(Control Parent)
        //{
        //    foreach (Control c in Parent.Controls)
        //        ClearControls(c);

        //} //end clearcontrols



        /*LOGIN FORM */
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection myCon = new SqlConnection(GetConnectionString()))    //points the connection to the database by refrencing the connection string
            {


                myCon.Open();   //open connection to the database
                string UserName = txtLoginUserName.Text;    //takes text box value and stores into username variable
                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtLoginPw.Text, "MD5");
                SqlCommand cmdd = new SqlCommand(string.Format("select * from UserTbl where UserName='{0}'", UserName), myCon); //initializes new sql select command query 
                bool isMatch = false;
                SqlDataReader dr = cmdd.ExecuteReader(); //data reader to store the values from select statement

                while (dr.Read())
                {
                    if (dr["Password"].ToString() == hashedPassword)   //checks hashed password against hashed password stored in the database
                    {
                        isMatch = true;
                    }
                }
                dr.Close();
                myCon.Close();
                if (isMatch)
                {

                    Session["SessionUser"] = txtLoginUserName.Text;  //keeps the userID value in session variable
                    Session["SessionPass"] = txtLoginPw.Text;

                    Response.Redirect("Index.aspx"); //redirects to the home page
                }
                else
                {
                    lblLoginMsg.Text = "Incorrect username or password!";
                }


            }//end button login
        }//end class
    }
}//end namespace



        //    int Results = 0;

        //    if ( txtLoginUserName.Text != string.Empty && txtLoginPw.Text != string.Empty)
        //    {

        //        Results = Validate_Login(txtLoginUserName.Text.Trim(), txtLoginPw.Text.Trim());

        //        if (Results == 1)
        //        {
        //            lblLoginMsg.Text = "Login is Good, Send user to another page or enable controls.";
        //            Response.Redirect("Index.aspx");
        //        }
        //        else
        //        {
        //            lblLoginMsg.Text = "Username or Password is incorrect.";
        //            lblLoginMsg.ForeColor = System.Drawing.Color.Red;
        //        }
        //    }
        //    else
        //    {
        //        lblLoginMsg.Text = "Please make sure that your username and password is correct.";
        //    }
        //}//end login submit button

        /* protected int Validate_Login(String UserName, String Password)
        {
            // string ConnStrings = ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString.ToString());

            SqlCommand cmdselect = new SqlCommand();

            cmdselect.CommandType = System.Data.CommandType.StoredProcedure;

            cmdselect.CommandText = "[dbo].[UserTbl]";

            cmdselect.Parameters.Add("@UserName", System.Data.SqlDbType.VarChar, 50).Value = UserName;
            cmdselect.Parameters.Add("@Password", System.Data.SqlDbType.VarChar, 50).Value = Password;
            cmdselect.Parameters.Add("@OutRes", System.Data.SqlDbType.Int, 4);
            cmdselect.Parameters["@OutRes"].Direction = System.Data.ParameterDirection.Output;

            cmdselect.Connection = con;

            int Results = 0;

            try
            {
                con.Open();

                cmdselect.ExecuteNonQuery();

                Results = (int)cmdselect.Parameters["@OutRes"].Value;
            }
            catch (SqlException ex)
            {
                lblLoginMsg.Text = ex.Message;
            }
            finally
            {
                cmdselect.Dispose();

                if (con != null)
                {
                    con.Close();
                }
            }
            return Results;
        } */


   // } //end class
//} //end namespace


                
                            ////SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
                            ////tring insertSql = "INSERT INTO RegistrationTbl (Name,UserName,Email,Password) values (@Name,@UserName,@Email,@Password)";

                            ////string ConnStrings = ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
                            ////string insertSql = "INSERT INTO RegistrationTbl (Name, UserName, Email, [Password]) values (@Name, @UserName, @Email, @Password)";
                            ////Create SQL connection
                            //SqlConnection con = new SqlConnection(ConnStrings);

                            ////Create SQL Command And Sql Parameters

                            //SqlCommand cmd = new SqlCommand();
                            //cmd.Connection = con;
                            //cmd.CommandType = CommandType.Text;
                            //cmd.CommandText = insertSql;

                            //SqlParameter Name = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                            //Name.Value = txtName.Text.ToString();
                            //cmd.Parameters.Add(Name);

                            //SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
                            //userName.Value = txtUserN.Text.ToString();
                            //cmd.Parameters.Add(userName);

                            //SqlParameter PW = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                            //PW.Value = txtPw.Text.ToString();
                            //cmd.Parameters.Add(PW);

                            //SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                            //Email.Value = txtEmail.Text.ToString();
                            //cmd.Parameters.Add(Email);
                    

                            //try
                            //{
                            //    con.Open();
                            //    cmd.ExecuteNonQuery();
                            //    lblMsg.Text = "User Registration successful";
                            //    ClearControls(Page);
                            //}
                    //        catch (SqlException ex)
                    //        {
                    //            string errorMessage = "Error in registering user";
                    //            errorMessage += ex.Message;
                    //            throw new Exception(errorMessage);
                    //        }
                    //        finally
                    //        {
                    //            con.Close();
                    //        }   
                    //}//end second else
                //#endregion

        //    }//end first else
        //} //end button submit

//        public static void ClearControls(Control Parent)
//        {
//            foreach (Control c in Parent.Controls)
//                ClearControls(c);

//        } //end clearcontrols
//    }//end class
//}//end namespace