<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="GaaTemplate2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Shortcut Icon" href="Images/favicon.png" />
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery.jshowoff.js" type="text/javascript"></script>
    <script src="js/jquery.jshowoff.min.js" type="text/javascript"></script>
    <link href="js/jshowoff.css" rel="stylesheet" type="text/css" />
   
    <script type="text/javascript">
        function popWin() {
            window.open("https://www.facebook.com/", ",");
        }
        function popWin2() {
            window.open("https://www.twitter.com/", ",");
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () { $('#features').jshowoff({ controls: false, autoPlay: true, speed: 5000, effect: "slideLeft", links: false }); });  
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">
        <div id="loginSignUp">
            <asp:HyperLink ID="HyperLink1" CssClass="LoginSignUpHyperLink" runat="server" NavigateUrl="~/SignUp.aspx">LOGIN /SIGN UP</asp:HyperLink>
        </div>
        <div id="mainContent">
            <h2 class="headings">Home</h2>
            <div id="features">
                <div>
                    <img src="Images/1.jpg" alt="Image one" /></div>
                <div>
                    <a href="#">
                        <img src="Images/2.jpg" alt="Image two" /></a></div>
                <div>
                    <a href="#">
                        <img src="Images/3.jpg" alt="Image three" /></a></div>
                <div>
                    <a href="#">
                        <img src="Images/4.jpg" alt="Image four" /></a></div>
            </div>
            <br />
            <div id="welcome">
                <h2>Welcome to GAA Fixtures</h2>
                    <h3>What's the project about: </h3>
                <p>                   
                    The Project is a GAA Club fixture system where users can see all information about club matches like fixtures, locations, times of throw in, who's playing. 
                    This will be updated by a specific member in each club..
               </p>
            </div>
        </div>
        <div id="rightContent">
            <h2 class="headings">
                 Recent News</h2>

            <asp:ListView ID="ListView1" runat="server" DataSourceID="HompageNewsSource">
           
             <LayoutTemplate>
                    <div id="itemPlaceHolderContainer" runat="server">
                        <span id="ItemPlaceHolder" runat="server" />
                    </div>
            </LayoutTemplate>
            
            <ItemTemplate>
            
            <h3><a href="News.aspx"> <%#XPath("title")%></a></h3>
           
            <hr />
            </ItemTemplate>
                
             </asp:ListView>
            <asp:XmlDataSource ID="HompageNewsSource" runat="server" DataFile="~/news.xml">
            </asp:XmlDataSource>

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
                        <asp:HyperLink ID="HyperLink2" runat="server"></asp:HyperLink>
                    </td>
                </tr>
            </table>
            </div>
        </div>
        
    </div>
    
</asp:Content>
