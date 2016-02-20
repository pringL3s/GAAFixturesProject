<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ClubInfo.aspx.cs" Inherits="GaaTemplate2.WebForm8" %>
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
            
            <div id="ClubContact">
                <h2 class="headings">Clubs Contact Info</h2>
                
                <asp:Repeater ID="Clubs" runat="server">
                    <HeaderTemplate>
                        <table width="100%">
                            <tr bgcolor="lightblue">
                                <th>Club Name </th>
                                <th>Pitch</th>
                                <th>Secretary</th>
                                <th>Telephone Number</th>
                                <th>Email</th>
                            </tr>                    
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                        <tr >
                            <td><%#Eval("ClubName")%></td>
                            <td><%#Eval("ClubPitch")%></td>
                            <td><%#Eval("ClubSec")%></td>
                            <td><%#Eval("TelNo")%></td>
                            <td><%#Eval("Email")%></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>                
            </div>


         <!--THE PLAYER INFORMATION -->
            <div id="PlayerInfo">
                <h2 class="headings">Players Info</h2>

                <asp:Repeater ID="Players" runat="server">
                    <HeaderTemplate>
                        <table  id="playersTable" width="100%">
                            <tr bgcolor="lightblue">
                                <th>Club </th>
                                <th>Level</th>
                                <th>Player</th>
                                <th>Age</th>
                                <th>Position</th>
                            </tr>                    
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                        <tr >
                            <td><%#Eval("ClubName")%></td>
                            <td><%#Eval("TeamName")%></td>
                            <td><%#Eval("PlayerName")%></td>
                            <td><%#Eval("PlayerDOB")%></td>
                            <td><%#Eval("PlayerPosition")%></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>                
            </div>
        </div>

        <div id="rightContent">
            <h2 class="headings">
                Leagues</h2>
        </div>
        <div id="bottomContent">
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
        </div>
    </div>
</asp:Content>
