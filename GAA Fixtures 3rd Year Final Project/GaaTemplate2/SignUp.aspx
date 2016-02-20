<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="SignUp.aspx.cs" Inherits="GaaTemplate2.GaaFixtures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
     <link rel="Shortcut Icon" href="Images/favicon.png" />
  
        
    
    <style type="text/css">
        .style1
        {
            width: 146px;
        }
        .style2
        {
            width: 230px;
        }
    </style>
  
        
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainContainer">
        <div id="mainContent">

            <h2 class="headings">Sign Up</h2>
            <h3>
                Have your say by becoming a member!
            </h3>
            <table id="signUpTable">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserN" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtUserN" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        &nbsp; &nbsp; 
                        <td class="style1">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ForeColor="Red"
                                ErrorMessage="Please Enter Valid Email" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">
                            </asp:RegularExpressionValidator>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPW" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtPw" runat="server" TextMode="Password"></asp:TextBox>
                       <%-- &nbsp; &nbsp; <asp:CompareValidator ID="pwVal" runat="server" 
                            ErrorMessage="Password Must Be the Same" ControlToCompare="txtCPw" 
                            ControlToValidate="txtPw" ForeColor="Red"></asp:CompareValidator>--%>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCPw" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtCPw" runat="server" TextMode="Password"></asp:TextBox>
                         &nbsp; &nbsp; <asp:CompareValidator ID="pwVal" runat="server" 
                            ErrorMessage="Password Must Be the Same" ControlToCompare="txtPw" 
                            ControlToValidate="txtCPw" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" CssClass="lbl" Font-Bold="true"
                                        ForeColor="Red"></asp:Label>
                                        &nbsp;
                        <asp:Label ID="lblErrorEmail" runat="server" CssClass="lbl" Font-Bold="true"
                                        ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>                    
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn" 
                            onclick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <hr />
        </div>


        <div id="rightContent">
            <h2 class="headings">
                Log In</h2>
            <h3>
                Already a member
                <br />
                Sign In Here!</h3>
            <table id="login">
                <tr>                    
                    <td>
                        <asp:TextBox ID="txtLoginUserName" runat="server" Text="User Name" OnClick="this.value=''"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtLoginPw" runat="server" TextMode="Password" Text="Password"  OnClick="this.value=''"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="btn" 
                            onclick="btnLogin_Click"  />
                        <br />
                        <br />
                        <asp:Label ID="lblLoginMsg" runat="server" CssClass="lbl" Font-Bold="true"
                                        ForeColor="Red"/>
                    </td> 
                 </tr>
            </table>
             <%--<input id="txtloginEmail" type="text" value="Email" onfocus="this.value='';" /><br />
            <input id="txtloginPw" type="password" value="Password" onfocus="this.value='';" /><br /><br />
            <input id="Sign In" type="button" value="Sign In" class="btn" />--%>
        </div>
    </div>
</asp:Content>
