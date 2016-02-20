<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="News.aspx.cs" Inherits="GaaTemplate2.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Shortcut Icon" href="Images/favicon.png" />
    <script runat="server">
        
        void Page_load(object sender, EventArgs e)
        {
            linkbtnfacebook.Attributes.Add("onclick", "popWin(); return false; ");
            linkbtnTwitter.Attributes.Add("onclick", "popWin2(); return false; ");
            
        }
    </script>
    <script type="text/javascript">
        function popWin() {
            window.open("https://www.facebook.com/", ",");
        }
        function popWin2() {
            window.open("https://www.twitter.com/", ",");
        }
    </script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">
        <div id="loginSignUp">
            <asp:HyperLink ID="HyperLink1" CssClass="LoginSignUpHyperLink" runat="server" NavigateUrl="~/SignUp.aspx"></asp:HyperLink>
        </div>
        <div id="mainContent">
            <h2 class="headings">
                News</h2>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="newsSource" >
            <LayoutTemplate>
                    <div id="itemPlaceHolderContainer" runat="server">
                        <span id="ItemPlaceHolder" runat="server" />
                    </div>
            </LayoutTemplate>
            
            <ItemTemplate>
            
            <h2><%#XPath("title")%></h2>
            <p><%#XPath("contents") %></p>
            <p>Created: <%#XPath("time") %></p>
            <br />
            <hr />
            </ItemTemplate>
                
            
            </asp:ListView>
            
            <asp:XmlDataSource ID="newsSource" runat="server" DataFile="~/news.xml">
            </asp:XmlDataSource>
        </div>
        <div id="rightContent">
            <h2 class="headings">
            Tweeter Feed</h2>
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
