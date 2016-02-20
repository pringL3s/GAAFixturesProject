using System;
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
    public partial class WebForm8 : System.Web.UI.Page
    {
        //connection string for the playerconnection
        SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());
        //connection string for clubconnection
        SqlConnection ConnStrings = new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());

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

            using (SqlConnection ClubConnection = ConnStrings)
            {
                /*Start of Player Info*/
                ConnStrings.Open();
                string ClubInfoQuery = "select ClubName, ClubPitch, ClubSec, TelNo, Email FROM ClubTbl";

                SqlCommand ClubInfoCommand = new SqlCommand(ClubInfoQuery, ClubConnection);
                SqlDataReader ClubDataReader = ClubInfoCommand.ExecuteReader();
                Clubs.DataSource = ClubDataReader;
                Clubs.DataBind();
                ClubDataReader.Close();
                ClubConnection.Close();
                /*End of player Info*/
            }

            using (SqlConnection PlayerConnection = connString)
            {

                /*Start of Player Info*/
                connString.Open();
                string PlayerQuery = "select clb.ClubName, TeamName, pl.PlayerName, PlayerDOB, PlayerPosition from dbo.ClubTbl as clb inner join dbo.TeamTbl as tm on clb.ClubID = tm.ClubID inner join dbo.PlayerTbl as pl on tm.ClubID = pl.ClubID";

                SqlCommand PlayerCommand = new SqlCommand(PlayerQuery, PlayerConnection);
                SqlDataReader PlayerDataReader = PlayerCommand.ExecuteReader();
                Players.DataSource = PlayerDataReader;
                Players.DataBind();
                PlayerDataReader.Close();
                PlayerConnection.Close();
                /*End of player Info*/
            }
        }
    }
}