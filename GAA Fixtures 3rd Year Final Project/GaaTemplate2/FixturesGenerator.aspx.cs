using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Data.ProviderBase;
//using System.Windows.Forms;
using System.Windows.Forms;
using GaaTemplate2;


namespace project2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       public ArrayList fixturess;
        public int teams;
    
        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["GAAFixturesConnectionString"].ConnectionString;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //int teams;
            DataClasses1DataContext dc = new DataClasses1DataContext(GetConnectionString());
            var query = from t in dc.TeamTbls
                        select t.TeamID + " " + t.TeamName;
            foreach (var item in query)
            {

                ListBox1.Items.Add(item.ToString());
            }

            //var query1 = from t in dc.TeamTbls
            //             select t.TeamName;
            teams = query.Count();

            //foreach (var item in query1)
            //{

            //    teams = query1.Count();
            //}

        }
        

        private static String flip(String match)
		{
			String[] components = match.Split('v');
			return components[1] + " v " + components[0];
		}

        void gfixture()
        {
            int totalRounds = teams - 1;
            int matchesPerRound = teams / 2;
            String[][] rounds = new String[totalRounds][];
            for (int i = 0; i < totalRounds; i++)
            {
                rounds[i] = new String[matchesPerRound];
            }

            for (int round = 0; round < totalRounds; round++)
            {
                for (int match = 0; match < matchesPerRound; match++)
                {
                    int home = (round + match) % (teams - 1);
                    int away = (teams - 1 - match + round) % (teams - 1);
                    if (match == 0)
                    {
                        away = teams - 1;
                    }
                    rounds[round][match] = "TeamID:" + (home + 1) + " v TeamID:" + (away + 1);
                    //fixture fixture1 = new fixture();
                    //fixture1.Team1ID.Equals(home + 1);
                    //fixture1.Team2ID.Equals(away + 1);
                   // fixturess.Add(new fixture(1,1,1));
                    //(0, (home + 1), (away + 1));
                    //rounds[round][match] = ListBox1.SelectedItem.ToString() + (home + 1) + ListBox1.SelectedItem.ToString() + (away + 1);
          
                   // rounds[round][match] = ListBox1.SelectedItem.Text + (home + 1) + "v" + ListBox1.SelectedItem.Text + (away + 1);
                   // fixture fixture1 = new fixture(round,int.Parse(ListBox1.SelectedValue),int.Parse(ListBox1.SelectedValue));
                    //fixture fixture = new fixture(1,rounds[round][match],rounds[round][match])
                    }
            }


            // Interleave so that home and away games are fairly evenly dispersed.
            String[][] interleaved = new String[totalRounds][];
            for (int i2 = 0; i2 < totalRounds; i2++)
            {
                interleaved[i2] = new String[matchesPerRound];
            }
            int evn = 0;
            int odd = (teams / 2);
            for (int i = 0; i < rounds.Length; i++)
            {
                if (i % 2 == 0)
                {
                    interleaved[i] = rounds[evn++];
                }
                else
                {
                    interleaved[i] = rounds[odd++];
                }
            }
            rounds = interleaved;
            for (int round = 0; round < rounds.Length; round++)
            {
                if (round % 2 == 1)
                {
                    rounds[round][0] = flip(rounds[round][0]);
                }
            }
            // Display the fixtures
            lst.Items.Clear();
            lst2.Items.Clear();
            for (int i = 0; i < rounds.Length; i++)
            {
                lst.Items.Add("------");
                lst.Items.Add("Match Day:" + (i + 1));
                for (int j = 0; j < matchesPerRound; j++)
                    lst.Items.Add(rounds[i][j]);
            }
            try
            {
                if (int.Parse(DropDownList1.SelectedValue) == 2)
                {
                    for (int round = 0; round < rounds.Length; round++)
                        for (int j = 0; j < matchesPerRound; j++)
                            rounds[round][j] = flip(rounds[round][j]);

                    for (int i = 0; i < rounds.Length; i++)
                    {
                        lst2.Items.Add("------");
                        lst2.Items.Add("Match Day:" + (i + rounds.Length + 1));
                        for (int j = 0; j < matchesPerRound; j++)
                            lst2.Items.Add(rounds[i][j]);
                    }
                }
            }
                
            catch { MessageBox.Show("Invalid Input"); }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gfixture();
        }

        protected void Lst_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }





    }
}