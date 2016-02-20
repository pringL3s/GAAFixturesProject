using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GaaTemplate2
{
    public class LeagueTable
    {

        private string TeamName;
        private int Position;
        private int GamesPlayed;
        private int GamesWon;
        private int GamesLost;
        private int GamesDrawn;
        private int ScoreFor;
        private int ScoreAgainst;
        private int ScoreDiff;
        private int Points;

        public LeagueTable() //constructor, default 
        {

        }

        public LeagueTable(string TeamNameIn, int PositionIn, int GamesPlayedIn, int GamesWonIn, int GamesLostIn,
            int GamesDrawnIn, int ScoreForIn, int ScoreAgainstIn, int ScoreDiffIn, int PointsIn) // overloaded constructor
        {
            TeamName = TeamNameIn;
            Position = PositionIn;
            GamesPlayed = GamesPlayedIn;
            GamesWon = GamesWonIn;
            GamesLost = GamesLostIn;
            GamesDrawn = GamesDrawnIn;
            ScoreFor = ScoreForIn;
            ScoreAgainst = ScoreAgainstIn;
            ScoreDiff = ScoreDiffIn;
            Points = PointsIn;
        }


        public string Name // Property to access and modify private data
        {
            get
            {
                return TeamName;
            }
            set
            {
                TeamName = value;
            }
        }

        public int Posit // Property to access and modify private data
        {
            get
            {
                return Position;
            }
            set
            {
                Position = value;
            }
        }

        public int GameP // Property to access and modify private data
        {
            get
            {
                return GamesPlayed;
            }
            set
            {
                GamesPlayed = value;
            }
        }

        public int GameW // Property to access and modify private data
        {
            get
            {
                return GamesWon;
            }
            set
            {
                GamesWon = value;
            }
        }

        public int GameL // Property to access and modify private data
        {
            get
            {
                return GamesLost;
            }
            set
            {
                GamesLost = value;
            }
        }

        public int GameD // Property to access and modify private data
        {
            get
            {
                return GamesDrawn;
            }
            set
            {
                GamesDrawn = value;
            }
        }

        public int ScoreF // Property to access and modify private data
        {
            get
            {
                return ScoreFor;
            }
            set
            {
                ScoreFor = value;
            }
        }

        public int ScoreAg // Property to access and modify private data
        {
            get
            {
                return ScoreAgainst;
            }
            set
            {
                ScoreAgainst = value;
            }
        }

        public int ScoreD // Property to access and modify private data
        {
            get
            {
                return ScoreDiff;
            }
            set
            {
                ScoreDiff = value;
            }
        }

        public int Pts // Property to access and modify private data
        {
            get
            {
                return Points;
            }
            set
            {
                Points = value;
            }
        }



    }

}