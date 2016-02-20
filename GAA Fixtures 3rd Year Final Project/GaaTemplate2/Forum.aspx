<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Forum.aspx.cs" Inherits="GaaTemplate2.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Shortcut Icon" href="Images/favicon.png" />
    <link href="forumStyle.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        if (top != self) top.location.href = location.href;
    </script>
    <script language="JavaScript" type="text/javascript">
  

        // cause an <B style="COLOR: black; BACKGROUND-COLOR: #ffff66">error</B>:
    </script>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR" />
    <meta content="C#" name="CODE_LANGUAGE" />
    <meta content="JavaScript" name="vs_defaultClientScript" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
    <style type="text/css">
        A:link
        {
            text-decoration: none;
        }
        A:visited
        {
            text-decoration: none;
        }
        A:active
        {
            text-decoration: none;
        }
        A:hover
        {
            text-decoration: underline;
        }
        .style2
        {
            
            width: 270px;
        }
        .style3
        {
            
            text-align: center;
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">
        <div id="loginSignUp">
            <asp:HyperLink ID="HyperLink1" CssClass="LoginSignUpHyperLink" runat="server" NavigateUrl="~/SignUp.aspx">LOGIN /SIGN UP</asp:HyperLink>
        </div>
        <div id="forumContent">
            <h2 class="headings">
                Forum</h2>
            <table id="forumTableHolder" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr valign="top">
                        <td class="ContentPane">
                            <!-- Main Page Contents Start -->
                            <div onclick="OnOffPost(event)">
                                <table id="forumTable" cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                               <form name="myform" id="myform">
                                                <table id="ForumTable2" cellspacing="1" cellpadding="0">
                                                    <tbody>
                                                        <tr bgcolor="#f1f1f1">
                                                            <td>
                                                                
                                                                <table id="tablelblMsg"  class="textStyle">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:ImageButton ID="imgbtnMsg" runat="server" alt="screen" src="Images/forum_newmsg.gif"
                                                                                align="top" OnClick="imgbtnMsg_Click" />
                                                                            <asp:HyperLink ID="lblnewmessage" ForeColor="AntiqueWhite" runat="server" NavigateUrl="~/Reply.aspx">New Message</asp:HyperLink>
                                                                        </td>
                                                                        <td>
                                                                            <asp:HyperLink ID="HyperLink2" runat="server"></asp:HyperLink>
                                                                        </td>
                                                                        
                                                                    </tr>
                                                                </table>
                                                            
                                                        
                                                        <tr>
                                                            <td>
                                                                <hr class="forumHr" />
                                                            </td>
                                                        </tr>
                                                      
                                                    </tbody>
                                                </table>
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            
            <asp:DataList ID="DataList1" runat="server" 
                RepeatColumns="1" RepeatDirection="Horizontal" 
                onselectedindexchanged="DataList1_SelectedIndexChanged" 
                DataSourceID="SqlDataSource1" style="margin-right: 0px">
                <ItemTemplate>
                    <br />
                    <table ID="tableMessages0">
                        <tbody>
                            <tr>
                                <td class="textStyle">
                                    <table cellpadding="2" cellspacing="0" class="lightBlue">
                                        <tr>
                                            <td class="style2">
                                                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                                &nbsp;posted:<br /> </td>
                                            <td class="style3"  nowrap align="center" >
                                                Subject:
                                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                            </td>
                                            <td align="right" class="style2" nowrap >
                                                Date:
                                                <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="lightBlue">
                                    <hr class="forumHr" />
                                        <asp:Label ID="DescriptionLabel" runat="server" 
                                            Text='<%# Eval("Description") %>' />
                                    
                                    <hr class="forumHr" />
                                         <asp:ImageButton ID="imgbtnMsg" runat="server" alt="screen" src="Images/forum_newmsg.gif"
                                                                                align="top" OnClick="imgbtnMsg_Click" />
                                          <asp:HyperLink ID="lblnewmessage" ForeColor="AntiqueWhite" runat="server" NavigateUrl="~/Reply.aspx">New Message</asp:HyperLink>
                                                                       
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1">
                                    <img height="16" src="Images/t.gif" width="16" border="0" alt="" />
                                </td>
                            </tr>
                            <asp:Literal ID="ltlPost" runat="server"></asp:Literal>
                        </tbody>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <!--Change connectionString DataSource .\SQLServer | .\SQLExpress -->
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=ALPHA;Initial Catalog=GAAFixtures;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT [Title], [UserName], [Description], [DateAdded] FROM [ForumTbl] ORDER BY [DateAdded] ASC">
            </asp:SqlDataSource>
            
                            <a href="http://validator.w3.org/check?uri=referer">
                                <img src="http://www.w3.org/Icons/valid-html401" alt="Valid HTML 4.01 Transitional"
                                    height="31" width="88" border="0" /></a></div>
    </div>
</asp:Content>
