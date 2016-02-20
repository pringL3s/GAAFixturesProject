<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Admin.aspx.cs" Inherits="GaaTemplate2.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="forumStyle.css" rel="stylesheet" type="text/css" />
    <link rel="Shortcut Icon" href="~/Images/favicon.png" />
    <script src="js/jquery.js" type="text/javascript"></script>
 
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">
        <div id="AdminContent" class="textStyle">
            <div id="addRemove">
                <h2 class="headings">
                    Add/Remove Users</h2>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" DataKeyNames="RegID" DataSourceID="SqlDataSource1"
                    CssClass=" textStyle" BorderStyle="Solid">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="RegID" HeaderText="RegID" InsertVisible="False" ReadOnly="True"
                            SortExpression="RegID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Columns>
                    <FooterStyle CssClass="lightBlue" />
                    <PagerStyle CssClass="lightBlue" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="#5ba1e9" />
                    <RowStyle BackColor="#3b80c7" />
                    <HeaderStyle CssClass="lightBlue" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GAAFixturesConnectionString %>"
                    DeleteCommand="DELETE FROM [UserTbl] WHERE [RegID] = @RegID" InsertCommand="INSERT INTO [UserTbl] ([Name], [UserName], [Email]) VALUES (@Name, @UserName, @Email)"
                    SelectCommand="SELECT [RegID], [Name], [UserName], [Email] FROM [UserTbl]" UpdateCommand="UPDATE [UserTbl] SET [Name] = @Name, [UserName] = @UserName, [Email] = @Email WHERE [RegID] = @RegID">
                    <DeleteParameters>
                        <asp:Parameter Name="RegID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="RegID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <br />
            <hr />
            <h2 class="headings">
                Update News</h2>
            <div id="updateNews">
                <h3>
                    Title</h3>
                <asp:TextBox runat="server" ID="txtTitle"></asp:TextBox><br />
                <h3>
                    Contents</h3>
                <asp:TextBox runat="server" ID="txtContents" TextMode="MultiLine"></asp:TextBox><br />
                <div id="hidden" style="visibility: hidden">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </div>
                <asp:Button runat="server" Text="Update News" ID="btnNews" OnClick="btnNews_Click"
                    CssClass="btn" />
                <asp:Button runat="server" Text="Cancel" CssClass="btn" ID="btnCancelNews" OnClick="btnNews_Click" />
                <hr />
            </div>
            <h2 class="headings">
                Update League</h2>
            <div id="editLeagues">
                <table style="width: 100%;">
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblLeaguename" runat="server" Text="League Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DDLLeagueName" runat="server" Width="129px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblHome" runat="server" Text="Home Team:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DDLHomeTeam" runat="server" Width="126px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblAwayTeam" runat="server" Text="Away Team:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DDLAway" runat="server" Width="128px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="HomeTeam Score"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Away Team Score"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" />
                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn" OnClientClick="S" />
                        </td>
                    </tr>
                </table>
                <br />
                <hr />
            </div>
            <h2 class="headings">
                Edit Clubs</h2>
            <div>
                <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True" DataKeyField="ClubID"
                    AutoGenerateColumns="False" CellPadding="4" OnPageIndexChanged="Grid_PageIndexChanged"
                    OnCancelCommand="Grid_CancelCommand" OnDeleteCommand="Grid_DeleteCommand" OnEditCommand="Grid_EditCommand"
                    OnUpdateCommand="Grid_UpdateCommand">
                    <Columns>
                        <asp:BoundColumn HeaderText="Club ID" DataField="ClubID"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Club Name" DataField="ClubName"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Pitch" DataField="ClubPitch"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Secretary" DataField="ClubSec"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Telephone Number" DataField="TelNo"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Email" DataField="Email"></asp:BoundColumn>
                        <asp:EditCommandColumn EditText="Edit" CancelText="Cancel" UpdateText="Update" HeaderText="Edit">
                        </asp:EditCommandColumn>
                        <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                    <FooterStyle CssClass="lightBlue" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" />
                    <PagerStyle CssClass="lightBlue" HorizontalAlign="Center" Mode="NumericPages" />
                    <AlternatingItemStyle BackColor="#3b80c7" />
                    <ItemStyle BackColor="#5ba1e9" />
                    <HeaderStyle CssClass="lightBlue" />
                </asp:DataGrid>
                <asp:SqlDataSource ID="GAAFixtureDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:GAAFixturesConnectionString %>"
                    SelectCommand="SELECT [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email], [ClubID] FROM [ClubTbl]"
                    DeleteCommand="DELETE FROM [ClubTbl] WHERE [ClubID] = @ClubID" InsertCommand="INSERT INTO [ClubTbl] ([ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (@ClubName, @ClubPitch, @ClubSec, @TelNo, @Email)"
                    UpdateCommand="UPDATE [ClubTbl] SET [ClubName] = @ClubName, [ClubPitch] = @ClubPitch, [ClubSec] = @ClubSec, [TelNo] = @TelNo, [Email] = @Email WHERE [ClubID] = @ClubID">
                    <DeleteParameters>
                        <asp:Parameter Name="ClubID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ClubName" Type="String" />
                        <asp:Parameter Name="ClubPitch" Type="String" />
                        <asp:Parameter Name="ClubSec" Type="String" />
                        <asp:Parameter Name="TelNo" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ClubName" Type="String" />
                        <asp:Parameter Name="ClubPitch" Type="String" />
                        <asp:Parameter Name="ClubSec" Type="String" />
                        <asp:Parameter Name="TelNo" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="ClubID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <hr />
                <br />
                <br />
                <h2 class="headings">
                    Create new Club</h2>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblClubName" runat="server" Text="Name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPitch" runat="server" Text="Pitch"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtPitch" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSec" runat="server" Text="Secretary"></asp:Label>
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtSec" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTelNo" runat="server" Text="Contact Number:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtTelNo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Submit" OnClick="btnSubmit_Click"
                    Height="26px" />
                &nbsp; &nbsp;
                <asp:Button ID="btnReset" runat="server" CssClass="btn" Text="Reset" OnClick="btnReset_Click" />
                &nbsp;<br />
                <br />
                <hr />
                <br />
                <table>
                    <tr>
                        <td class="textStyle">
                            <asp:Label ID="lblClubID" runat="server" Text="Club Name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;
                            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5"
                                DataTextField="ClubID" DataValueField="ClubID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:GAAFixturesConnectionString %>"
                                DeleteCommand="DELETE FROM [ClubTbl] WHERE [ClubID] = @ClubID" SelectCommand="SELECT [ClubID] FROM [ClubTbl]">
                                <DeleteParameters>
                                    <asp:Parameter Name="ClubID" Type="Int32" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GAAFixturesConnectionString %>"
                                SelectCommand="SELECT [ClubName] FROM [ClubTbl]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GAAFixturesConnectionString %>"
                                DeleteCommand="DELETE FROM [TeamTbl] WHERE [TeamNo] = @TeamNo" InsertCommand="INSERT INTO [TeamTbl] ([ClubID], [TeamName], [TeamMngr]) VALUES (@ClubID, @TeamName, @TeamMngr)"
                                SelectCommand="SELECT * FROM [TeamTbl] WHERE ([ClubID] = @ClubID)" UpdateCommand="UPDATE [TeamTbl] SET [ClubID] = @ClubID, [TeamName] = @TeamName, [TeamMngr] = @TeamMngr WHERE [TeamNo] = @TeamNo">
                                <DeleteParameters>
                                    <asp:Parameter Name="TeamNo" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ClubID" Type="Int32" />
                                    <asp:Parameter Name="TeamName" Type="String" />
                                    <asp:Parameter Name="TeamMngr" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList5" Name="ClubID" PropertyName="SelectedValue"
                                        Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ClubID" Type="Int32" />
                                    <asp:Parameter Name="TeamName" Type="String" />
                                    <asp:Parameter Name="TeamMngr" Type="String" />
                                    <asp:Parameter Name="TeamNo" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="textStyle">
                            <asp:Label ID="lblPitch0" runat="server" Text="Team Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnameteam" runat="server" OnTextChanged="txtnameteam_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="textStyle">
                            <asp:Label ID="lblSec0" runat="server" Text="Manager"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtteammanager" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnSubmitteam" CssClass="btn" runat="server" Text="Submit" Style="height: 26px"
                    OnClick="btnSubmit_Click" />
                <asp:Button ID="btnResetTeam" runat="server" CssClass="btn" Text="Reset" OnClick="btnReset_Click" />
                <br />
            </div>
            <br />
            <hr />
            <br />
            <div>
                <asp:DataGrid ID="Grid1" runat="server" PageSize="5" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333">
                    <Columns>
                        <asp:BoundColumn HeaderText="PlayerID" DataField="PlayerNo"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Name" DataField="PlayerName"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Age" DataField="PlayerAge"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Position" DataField="PlayerPosition"></asp:BoundColumn>
                    </Columns>
                    <FooterStyle CssClass="lightBlue" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" />
                    <PagerStyle CssClass="lightBlue" HorizontalAlign="Center" Mode="NumericPages" />
                    <AlternatingItemStyle BackColor="#3b80c7" />
                    <ItemStyle BackColor="#5ba1e9" />
                    <HeaderStyle CssClass="lightBlue" />
                </asp:DataGrid>
                <br />
            </div>
        </div>
        <br />
        <br />
    </div>
</asp:Content>
