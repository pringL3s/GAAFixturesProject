using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data.ProviderBase;
using System.Data;

namespace GaaTemplate2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        //THIS IS FOR THE NEWS - UPDATING THE NEWS AND CREATING A NEWS
        protected void btnNews_Click(object sender, EventArgs e)
        {
            Label3.Text = System.DateTime.Now.ToLongDateString() + " " + System.DateTime.Now.ToShortTimeString(); ;
            if (txtTitle.Text == "" )
            {
                 Response.Write("<script>alert('Must enter a Title')</Script>");
                 txtTitle.Focus();

                
            }
            else if (txtContents.Text == "")
            {
                Response.Write("<script>alert('Must enter some Content')</Script>");
                txtContents.Focus();               
            }
            else
            {
                XmlDocument xmlFile = new XmlDocument();
                xmlFile.Load(Server.MapPath("//news.xml"));
         
                XmlElement newsTag = xmlFile.CreateElement("news");
                XmlElement titleTag = xmlFile.CreateElement("title");
                XmlElement contentsTag = xmlFile.CreateElement("contents");
                XmlElement timeTag = xmlFile.CreateElement("time");

                XmlText titleText = xmlFile.CreateTextNode(txtTitle.Text);
                XmlText contentsText = xmlFile.CreateTextNode(txtContents.Text);
                XmlText timeText = xmlFile.CreateTextNode(Label3.Text);

                titleTag.AppendChild(titleText);
                contentsTag.AppendChild(contentsText);
                timeTag.AppendChild(timeText);

                newsTag.AppendChild(titleTag);
                newsTag.AppendChild(contentsTag);
                newsTag.AppendChild(timeTag);

                xmlFile.DocumentElement.PrependChild(newsTag);
                xmlFile.Save(Server.MapPath("//news.xml"));               
            }

            Response.Write("<script>alert('NewsUpdated')</Script>");
               txtTitle.Text = "";
               txtContents.Text = "";
        }

        protected void btnCancelNews_Click(object sender, EventArgs e)
        {
            txtContents.Text = "";
            txtTitle.Text = "";
        }




        //FOR CREATING DELETING AND UPDATING THE CLUB
        public void BindData()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
            //con = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);
            cmd.CommandText = "Select * from ClubTbl";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            Grid.DataSource = ds;
            Grid.DataBind();
            con.Close();
        }

        protected void Grid_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            Grid.CurrentPageIndex = e.NewPageIndex;
            BindData();
        }

        protected void Grid_EditCommand(object source, DataGridCommandEventArgs e)
        {
            Grid.EditItemIndex = e.Item.ItemIndex;
            BindData();
        }

        protected void Grid_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            Grid.EditItemIndex = -1;
            BindData();
        }

        protected void Grid_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
            //con = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);
            cmd.Connection = con;
            int ClubID = (int)Grid.DataKeys[(int)e.Item.ItemIndex];
            cmd.CommandText = "Delete from ClubTbl where ClubID=" + ClubID;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Grid.EditItemIndex = -1;
            BindData();
        }

        protected void Grid_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
            //con = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);
            cmd.Parameters.Add("@ClubID", SqlDbType.Int).Value = ((TextBox)e.Item.Cells[0].Controls[0]).Text;
            cmd.Parameters.Add("@ClubName", SqlDbType.Char).Value = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
            cmd.Parameters.Add("@ClubPitch", SqlDbType.Char).Value = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
            cmd.Parameters.Add("@ClubSec", SqlDbType.Char).Value = ((TextBox)e.Item.Cells[3].Controls[0]).Text;
            cmd.Parameters.Add("@TelNo", SqlDbType.Char).Value = ((TextBox)e.Item.Cells[4].Controls[0]).Text;
            cmd.Parameters.Add("@Email", SqlDbType.DateTime).Value = DateTime.Now.ToString();
            cmd.CommandText = "Update ClubTbl set ClubName=@ClubName, ClubPitch=@ClubPitch, ClubSec=@ClubSec, TelNo=@TelNo, Email=@Email where ClubID=@ClubID";
            cmd.Connection = con;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Grid.EditItemIndex = -1;
            BindData();
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
            //con = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);
            con.Open();
            SqlCommand cmd;
            cmd = new SqlCommand("INSERT into ClubTbl (ClubName, ClubPitch, ClubSec, TelNo, Email) values('" + txtName.Text + "','" + txtPitch.Text + "','" + txtSec.Text + "','" + txtTelNo.Text + "','" + txtEmail.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnSubmitteam_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
            //con = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);
            con.Open();
            SqlCommand cmd;
            cmd = new SqlCommand("INSERT into TeamTbl (ClubID, TeamName, TeamManager) values('" + DropDownList5.SelectedItem +  "','" + txtnameteam.Text + "','" + txtteammanager.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            
            txtName.Text = "";
            txtPitch.Text = "";
            txtSec.Text = "";
            txtTelNo.Text = "";
            txtEmail.Text = "";
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            BindData1(); 
        }

        public void BindData1()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
            //con = new SqlConnection(ConfigurationManager.AppSettings["GAAFixturesConnectionString"]);
            cmd.CommandText = "Select * from PlayerTbl";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            Grid1.DataSource = ds;
            Grid1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // GridView1.DeleteRow(GridView1.SelectedIndex);
        }

        protected void txtnameteam_TextChanged(object sender, EventArgs e)
        {

        }
    }
}