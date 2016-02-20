<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Results.aspx.cs" Inherits="GaaTemplate2.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
     <link rel="Shortcut Icon" href="Images/favicon.png" />
     <%--<script runat="server">--%>
        
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">


     <div id="loginSignUp">
        <asp:HyperLink ID="HyperLink1" CssClass="LoginSignUpHyperLink" runat="server" NavigateUrl="~/SignUp.aspx">LOGIN /SIGN UP</asp:HyperLink>
   </div>
        <div id="mainContent">
            <h2 class="headings">Results</h2>
            
            <asp:Repeater ID="Leagues" runat="server">
                    <HeaderTemplate>
                        <table width="100%">
                            <tr bgcolor="lightblue">
                                <th>Ranking Position </th>
                                <th>Team Name</th>
                                <th>Played Games</th>
                                <th>Won</th>
                                <th>Draw</th>
                                <th>Lost</th>
                                <th>Point</th>
                            </tr>                    
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                        <tr >
                            <td><%#Eval("RankingPosition")%></td>
                            <td><%#Eval("TeamName")%></td>
                            <td><%#Eval("PlayedGames")%></td>
                            <td><%#Eval("Won")%></td>
                            <td><%#Eval("Draw")%></td>
                            <td><%#Eval("Lost")%></td>
                            <td><%#Eval("Pts")%></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>    
                
            <br/>
            <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=ALPHA;Initial Catalog=GAAFixtures;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [RankingPosition], [TeamName], [PlayedGames], [Won], [Draw], [Lost], [Pts] FROM [LeagueTbl] ORDER BY [Pts], [RankingPosition]">
            </asp:SqlDataSource>
            <br/>            
            </div>

            <%--<asp:GridView ID="GridView1" runat="server" 
                DataSourceID="GAAFixturesLeagueDataSource" AllowPaging="True" 
                AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RankingPosition" HeaderText="RankingPosition" 
                        SortExpression="RankingPosition" />
                    <asp:BoundField DataField="TeamName" HeaderText="TeamName" 
                        SortExpression="TeamName" />
                    <asp:BoundField DataField="PlayedGames" HeaderText="PlayedGames" 
                        SortExpression="PlayedGames" />
                    <asp:BoundField DataField="Won" HeaderText="Won" SortExpression="Won" />
                    <asp:BoundField DataField="Draw" HeaderText="Draw" SortExpression="Draw" />
                    <asp:BoundField DataField="Lost" HeaderText="Lost" SortExpression="Lost" />
                    <asp:BoundField DataField="Pts" HeaderText="Pts" SortExpression="Pts" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>--%>

            <%--<asp:SqlDataSource ID="GAAFixturesLeagueDataSource" runat="server" 
                ConnectionString="Data Source=HAZELFAITH-PC\SQLSERVER;Initial Catalog=GAAFixtures;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [RankingPosition], [TeamName], [PlayedGames], [Won], [Draw], [Lost], [Pts] FROM [LeagueTbl] WHERE ([TeamID] = @TeamID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="TeamID" QueryStringField="@TeamID" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
            


        </div>






        <!--RIGHT CONTENT -->
        <div id="rightContent">
            <h2 class="headings">Results</h2>
        </div>

        <!--BOTTOM CONTENT -->
        <div id="bottomContent">
            <h2 class="headings">Follow Us</h2>

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
        </div>
    </div>
</asp:Content>
