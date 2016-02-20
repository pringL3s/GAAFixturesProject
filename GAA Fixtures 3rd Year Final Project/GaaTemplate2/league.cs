using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project2
{
    public class league
    {


        public int LeagueID { get; set; }
        public int TeamID { get; set; }
        public string leagueName { get; set; }
        public string  LeagueType { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time { get; set; }
        public int PlayedGames { get; set; }
        public int Wins { get; set; }
        public int Losses { get; set; }
        public int Draws { get; set; }
        public int ScoresFor { get; set; }
        public int ScoresAgainst { get; set; }
        public int Points { get; set; }
        public int Rank { get; set; }


    }


}