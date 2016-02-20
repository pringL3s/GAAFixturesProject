<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Fixtures.aspx.cs" Inherits="GaaTemplate2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
     <link rel="Shortcut Icon" href="Images/favicon.png" />
     
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">
     <div id="loginSignUp">
        <asp:HyperLink ID="HyperLink1" CssClass="LoginSignUpHyperLink" runat="server" NavigateUrl="~/SignUp.aspx">LOGIN /SIGN UP</asp:HyperLink>
     </div>
      
       
        <div id="mainContent">
            
            <h2 class="headings">Fixtures</h2>

             
        <asp:Label ID="Label1" runat="server" Text="Please select the League whose fixtures you would like to view."></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1"  runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="LeagueName" 
            DataValueField="LeagueID" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True" EnableViewState="False">
        </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=ALPHA;Initial Catalog=GAAFixtures;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [LeagueID], [LeagueName] FROM [LeagueTbl]">
            </asp:SqlDataSource>
        <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="FixtureID" DataSourceID="SqlDataSource2" AllowPaging="True" 
                AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="FixtureID" HeaderText="FixtureID" ReadOnly="True" 
                        SortExpression="FixtureID" Visible="False" />
                    <asp:BoundField DataField="CompetitionID" HeaderText="CompetitionID" 
                        SortExpression="CompetitionID" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="LeagueID" HeaderText="LeagueID" 
                        SortExpression="LeagueID" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="TeamName" HeaderText="Home" 
                        SortExpression="TeamName" ReadOnly="True" />
                    <asp:BoundField DataField="ScoreTeam1" HeaderText="Goals" 
                        SortExpression="ScoreTeam1" />
                    <asp:BoundField DataField="Points1" HeaderText="Points" 
                        SortExpression="Points1" />
                    <asp:BoundField DataField="TeamName" HeaderText="Away" 
                        SortExpression="TeamName" ReadOnly="True" />
                    <asp:BoundField DataField="ScoreTeam2" HeaderText="Goals" 
                        SortExpression="ScoreTeam2" />
                    <asp:BoundField DataField="Points2" HeaderText="Points" 
                        SortExpression="Points2" />
                    <asp:BoundField DataField="Date" HeaderText="Date" 
                        SortExpression="Date" ReadOnly="True"  />
                    <asp:BoundField DataField="Time" HeaderText="Time" 
                        SortExpression="Time" ReadOnly="True" />
                    <asp:BoundField DataField="Location" HeaderText="Location" 
                        SortExpression="Location" ReadOnly="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="Data Source=ALPHA;Initial Catalog=GAAFixtures;Integrated Security=True" 
                DeleteCommand="DELETE FROM [FixturesMatchesTbl] WHERE [FixtureID] = @original_FixtureID AND (([CompetitionID] = @original_CompetitionID) OR ([CompetitionID] IS NULL AND @original_CompetitionID IS NULL)) AND [LeagueID] = @original_LeagueID AND (([Team1ID] = @original_Team1ID) OR ([Team1ID] IS NULL AND @original_Team1ID IS NULL)) AND (([ScoreTeam1] = @original_ScoreTeam1) OR ([ScoreTeam1] IS NULL AND @original_ScoreTeam1 IS NULL)) AND (([Points1] = @original_Points1) OR ([Points1] IS NULL AND @original_Points1 IS NULL)) AND (([Team2ID] = @original_Team2ID) OR ([Team2ID] IS NULL AND @original_Team2ID IS NULL)) AND (([ScoreTeam2] = @original_ScoreTeam2) OR ([ScoreTeam2] IS NULL AND @original_ScoreTeam2 IS NULL)) AND (([Points2] = @original_Points2) OR ([Points2] IS NULL AND @original_Points2 IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL))" 
                InsertCommand="INSERT INTO [FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [ScoreTeam1], [Points1], [Team2ID], [ScoreTeam2], [Points2], [Date], [Time], [Location]) VALUES (@FixtureID, @CompetitionID, @LeagueID, @Team1ID, @ScoreTeam1, @Points1, @Team2ID, @ScoreTeam2, @Points2, @Date, @Time, @Location)" 
                OldValuesParameterFormatString="original_{0}" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [FixtureID], [CompetitionID], [LeagueID], t1.TeamName, [ScoreTeam1], [Points1], t2.TeamName, [ScoreTeam2], [Points2], [Date], [Time], [Location] FROM [FixturesMatchesTbl] fm INNER JOIN TeamTbl t1 ON fm.Team1ID = t1.TeamID INNER JOIN TeamTbl t2 ON fm.Team2ID = t2.TeamID WHERE ([LeagueID] = @LeagueID)" 
                
                UpdateCommand="UPDATE [FixturesMatchesTbl] SET [ScoreTeam1] = @ScoreTeam1, [Points1] = @Points1, [ScoreTeam2] = @ScoreTeam2, [Points2] = @Points2, [Location] = @Location WHERE ([FixtureID] = @original_FixtureID)">
                
                <DeleteParameters>
                    <asp:Parameter Name="original_FixtureID" Type="Int32" />
                    <asp:Parameter Name="original_CompetitionID" Type="Int32" />
                    <asp:Parameter Name="original_LeagueID" Type="Int32" />
                    <asp:Parameter Name="original_Team1ID" Type="Int32" />
                    <asp:Parameter Name="original_ScoreTeam1" Type="Int32" />
                    <asp:Parameter Name="original_Points1" Type="Int32" />
                    <asp:Parameter Name="original_Team2D" Type="Int32" />
                    <asp:Parameter Name="original_ScoreTeam2" Type="Int32" />
                    <asp:Parameter Name="original_Points2" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_Date" />
                    <asp:Parameter DbType="Time" Name="original_Time" />
                    <asp:Parameter Name="original_Location" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FixtureID" Type="Int32" />
                    <asp:Parameter Name="CompetitionID" Type="Int32" />
                    <asp:Parameter Name="LeagueID" Type="Int32" />
                    <asp:Parameter Name="Team1ID" Type="Int32" />
                    <asp:Parameter Name="ScoreTeam1" Type="Int32" />
                    <asp:Parameter Name="Points1" Type="Int32" />
                    <asp:Parameter Name="Team2ID" Type="Int32" />
                    <asp:Parameter Name="ScoreTeam2" Type="Int32" />
                    <asp:Parameter Name="Points2" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter DbType="Time" Name="Time" />
                    <asp:Parameter Name="Location" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="LeagueID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CompetitionID" Type="Int32" />
                    
                <asp:ControlParameter ControlID="DropDownList1" Name="LeagueID" 
                        PropertyName="SelectedValue" Type="Int32" />
                    
                    <asp:Parameter Name="Team1ID" Type="Int32" />
                    <asp:Parameter Name="ScoreTeam1" Type="Int32" />
                    <asp:Parameter Name="Points1" Type="Int32" />
                    <asp:Parameter Name="Team2ID" Type="Int32" />
                    <asp:Parameter Name="ScoreTeam2" Type="Int32" />
                    <asp:Parameter Name="Points2" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter DbType="Time" Name="Time" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="original_FixtureID" Type="Int32" />
                    <asp:Parameter Name="original_CompetitionID" Type="Int32" />
                    <asp:Parameter Name="original_LeagueID" Type="Int32" />
                    <asp:Parameter Name="original_Team1ID" Type="Int32" />
                    <asp:Parameter Name="original_ScoreTeam1" Type="Int32" />
                    <asp:Parameter Name="original_Points1s" Type="Int32" />
                    <asp:Parameter Name="original_Team2ID" Type="Int32" />
                    <asp:Parameter Name="original_ScoreTeam2" Type="Int32" />
                    <asp:Parameter Name="original_Points2" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_Date" />
                    <asp:Parameter DbType="Time" Name="original_Time" />
                    <asp:Parameter Name="original_Location" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <br />


        <%--<div id="bottomContent">
            <h2 class="headings">
                Follow Us</h2>
                <div id="BottomContents">
            <table>
                <tr>
                    <td>
                        <asp:ImageButton ID="linkbtnfacebook" runat="server" ImageAlign="Left" ImageUrl="~/Images/facebook_icon.png"
                            Width="62px" Height="56px" />
                    </td>
                    <td>
                    <asp:ImageButton ID="linkbtnTwitter" runat="server" ImageAlign="Left" ImageUrl="~/Images/twitter-icon.png"
                            Width="47px" />
                    </td>
                </tr>
            </table>
            </div>
            
        </div>--%>
        
        
        <br />
        <br />
        &nbsp;&nbsp
            <br />
            <br />
            &nbsp;&nbsp
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            </div>


    </div>
</asp:Content>
