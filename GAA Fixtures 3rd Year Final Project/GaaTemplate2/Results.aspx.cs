using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GaaTemplate2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return
                System.Configuration.ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"]
                    .ConnectionString;
        }

        //end connection string

        private SqlConnection connString =
            new SqlConnection(ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            /* ************USER SHOWING THE NAME********** */
            string userID = (string) (Session["SessionUser"]);
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
                    var query2 = from t in dc.TeamTbls
                                 select t.TeamID;



                }
                else
                {


                }
            }

            //var results = from f in dc.FixturesMatchesTbls
            //              join Teams in dc.TeamTbls on f.Team1ID equals Teams.TeamID
            //              select new { Teams.TeamID };

            //foreach (var item in results)
            //{

            //    var draw = from t in dc.TeamTbls
            //               select t.TeamID;

            //}

            /* ************League Connection********** */
            using (SqlConnection LeagueConnection = connString)
            {
                /*Start of Player Info*/
                connString.Open();
                string LeagueInfoQuery =
                    "select lg.RankingPosition, lg.TeamName, PlayedGames, Won, Draw, Lost, Pts FROM dbo.LeagueTbl as lg inner join dbo.TeamTbl as tm on lg.TeamID = tm.TeamID";

                SqlCommand LeagueInfoCommand = new SqlCommand(LeagueInfoQuery, LeagueConnection);
                SqlDataReader LeagueDataReader = LeagueInfoCommand.ExecuteReader();
                Leagues.DataSource = LeagueDataReader;
                Leagues.DataBind();
                LeagueDataReader.Close();
                LeagueConnection.Close();
                /*End of player Info*/
            } //end sql leagueconnection
        }

        //end page load


        //foreach ( fixture in fixtures)
        //{
        //    if(score1 > score2)
        //    {
        //        team1.GamesWon++;
        //        team2.GamesLost++;
        //        team1.points+3;
        //        team1.scoreFor + score1;
        //        team1.scoreAgainst + score2;
        //    }
        //    else if(score2 > score1)
        //    {
        //        team2.GamesWon++;
        //        team1.GamesLost++;
        //        team2.points+3;
        //        team2.scoreFor + score2;
        //        team2.scoreAgainst + score1;
        //    }
        //    else if(score1 == score2)
        //    {
        //        team1.GamesDrawn++;
        //        team2.GamesDrawn++;
        //        team1.scoreFor + score1;
        //        team1.scoreAgainst + score2;
        //        team2.scoreFor + score2;
        //        team2.scoreAgainst - score1;
        //    }
        //}



        //void CallCode()
        //{
        //    string players = new string[] { "A", "B", "C", "D" };
        //    List<Fixture> fixtures = CalculateFixtures(players);
        //}

        //List<Fixture> CalculateFixtures(string[] players)
        //{
        //    //create a list of all possible fixtures (order not important)
        //    List<Fixture> fixtures = new List<Fixture>();
        //    for (int i = 0; i < players.Length; i++)
        //    {
        //        for (int j = 0; j < players.Length; j++)
        //        {
        //            if (players[i] != players[j])
        //            {
        //                fixtures.Add(new Fixture() { Home = players[i], Away = players[j] });
        //            }
        //        }
        //    }

        //    fixtures.Reverse();//reverse the fixture list as we are going to remove element from this and will therefore have to start at the end

        //    //calculate the number of game weeks and the number of games per week
        //    int gameweeks = (players.Length - 1) * 2;
        //    int gamesPerWeek = gameweeks / 2;

        //    List<Fixture> sortedFixtures = new List<Fixture>();

        //    //foreach game week get all available fixture for that week and add to sorted list
        //    for (int i = 0; i < gameweeks; i++)
        //    {
        //        sortedFixtures.AddRange(TakeUnique(fixtures, gamesPerWeek));
        //    }

        //    return sortedFixtures;
        //}

        //List<Fixture> TakeUnique(List<Fixture> fixtures, int gamesPerWeek)
        //{
        //    List<Fixture> result = new List<Fixture>();

        //    //pull enough fixture to cater for the number of game to play
        //    for (int i = 0; i < gamesPerWeek; i++)
        //    {
        //        //loop all fixture to find an unused set of teams
        //        for (int j = fixtures.Count - 1; j >= 0; j--)
        //        {
        //            //check to see if any teams in current fixtue have already been used this game week and ignore if they have
        //            if (!result.Any(r => r.Home == fixtures[j].Home || r.Away == fixtures[j].Home || r.Home == fixtures[j].Away || r.Away == fixtures[j].Away))
        //            {
        //                //teams not yet used
        //                result.Add(fixtures[j]);
        //                fixtures.RemoveAt(j);
        //            }
        //        }
        //    }

        //    return result;
        //}
    }
}