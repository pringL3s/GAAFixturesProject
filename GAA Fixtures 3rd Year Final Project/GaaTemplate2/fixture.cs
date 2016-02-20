using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project2
{
    public class fixture
    {
        public int FixtureID { get; set; }
        public int CompetitionID { get; set; }
        public int LeagueID { get; set; }
        public int TeamID { get; set; }
        public int Team1ID { get;set; }
        public int Team2ID { get; set; }
        public string Location { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time { get; set; }
        public int ScoreTeam1 { get; set; }
        public int ScoreTeam2 { get; set; }
        public int Goal1 { get; set; }
        public int Goal2 { get; set; }
        public int Points1 { get; set; }
        public int Points2 { get; set; }

        public fixture(int fixtureID, int teamID1,int teamID2)
        {
            fixtureID = FixtureID;
            teamID1 = Team1ID;
            teamID2 = Team2ID;


            
        }
        public fixture()
        {

        }

    





    }
}