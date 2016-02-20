<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reply.aspx.cs" Inherits="GaaTemplate2.Reply" %>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>NewMessage</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="Javascript1.2">
		    <!-- // load htmlarea
                _editor_url = "htmlarea/";                     // URL to htmlarea files
            var win_ie_ver = parseFloat(navigator.appVersion.split("MSIE")[1]);
            if (navigator.userAgent.indexOf('Mac')        >= 0) { win_ie_ver = 0; }
            if (navigator.userAgent.indexOf('Windows CE') >= 0) { win_ie_ver = 0; }
            if (navigator.userAgent.indexOf('Opera')      >= 0) { win_ie_ver = 0; }
            if (win_ie_ver >= 5.5) {
             document.write('<scr' + 'ipt src="' +_editor_url+ 'editor.js"');
             document.write(' language="Javascript1.2"></scr' + 'ipt>');  
            } else { document.write('<scr'+'ipt>function editor_generate() { return false; }</scr'+'ipt>'); }
        // -->
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" border="0" width="100%">
				<TR>
					<td></td>
					<td>
						<asp:Label id="lblStatus" runat="server" Font-Bold="True" Font-Names="Arial">Add a comment</asp:Label>
                    </td>
				</TR>
				<TR>
					<td>&nbsp;
					</td>
					<%--<td align="top">--%>
                    <td style="vertical-align:top;">
					    
                        <TABLE width="100%" border="0">
							<TR>
								<td colSpan="2"><FONT face="arial" size="2"><B>View comment</B>
										<HR>
										<FONT face="Arial"><FONT size="2"><FONT color="maroon"></FONT></FONT></FONT></FONT>
								</td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Title:</FONT></td>
								<td><asp:label id="lbltitle" runat="server" Font-Size="X-Small" Font-Names="Arial">Label</asp:label><FONT face="Arial"></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Comments:</FONT></td>
								<td><asp:label id="lblComment" runat="server" Font-Size="X-Small" Font-Names="Arial">Label</asp:label><FONT face="Arial"></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Name:</FONT></td>
								<td><asp:label id="lblname" runat="server" Font-Size="X-Small" Font-Names="Arial">Label</asp:label><FONT face="Arial"></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Email:</FONT></td>
								<td><asp:label id="lblemail" runat="server" Font-Size="X-Small" Font-Names="Arial">Label</asp:label><FONT face="Arial"></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">DateAdded:</FONT></td>
								<td><asp:label id="lblDate" runat="server" Font-Size="X-Small" Font-Names="Arial">Label</asp:label><FONT face="Arial"></FONT></td>
							</TR>
						</TABLE>
						
					</td>
				</TR>

				<TR>
					<td>&nbsp;
					</td>
					<td></td>
				</TR>

				<TR>
					<td>&nbsp;
					</td>
					<td>
					    <TABLE id="Table2" width="100%" border="0">
							<TR>
								<td colSpan="2"><FONT face="arial" size="2"><B>Reply to&nbsp;Comment</B>
										<HR>
										<FONT face="Arial"><FONT size="2"><FONT color="maroon"></FONT></FONT></FONT></FONT>
								</td>
							</TR>
							<tr valign="middle">
								<td valign="middle" nowrap align="left" width="10%"><FONT face="Arial" size="2">Message 
										Type:</FONT></td>
							    <td valign="top"><FONT face="Arial" size="2"> <input type="radio" name="MsgType" ID="MsgType_4" value="4" runat="server"/>

										<Label for="MsgType_4"><img title='Question' align="absMiddle" src='images/question.gif'>
							            Question &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_1" value="1" checked runat="server"/>

										<Label for="MsgType_1"><img title='General Comment' align="absMiddle" src='images/general.gif'>
							            General &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_2" value="2" runat="server"/>

										<Label for="MsgType_2"><img title='News' align="absMiddle" src='images/info.gif'> News
							            &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_3" value="3" runat="server"/>

										<Label for="MsgType_8"><img title='Answer' align="absMiddle" src='images/answer.gif'>
							            Answer &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_5" value="5" runat="server"/>

										<Label for="MsgType_16"><img title='Joke / Game' align="absMiddle" src='images/game.gif'>
											Joke/Game&nbsp;&nbsp;&nbsp;</Label></FONT></td>
							</tr>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Title</FONT></td>
								<td>
									<asp:textbox id="txtsubject" width="500px" runat="server"></asp:textbox>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" Font-Names="Arial" Font-Size="10pt"
										ControlToValidate="txtsubject" ErrorMessage="Subject Required"></asp:requiredfieldvalidator></td>
							</TR>
							<TR>
								<td vAlign="top" width="10%"><FONT face="Arial" size="2">Reply:</FONT></td>
								<td><FONT face="Arial">
										<asp:textbox id="txtcomment" runat="server" Font-Names="Arial" Font-Size="10pt" TextMode="MultiLine"
											width="500px" Height="104px"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" Font-Size="10pt" ControlToValidate="txtcomment"
											ErrorMessage="Comment required"></asp:requiredfieldvalidator></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Name:</FONT></td>
								<td><FONT face="Arial">
										<asp:textbox id="txtname" width="500px" runat="server"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Size="10pt" ControlToValidate="txtname"
											ErrorMessage="Name required"></asp:requiredfieldvalidator></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Email:</FONT></td>
								<td><FONT face="Arial">
										<asp:textbox id="txtemail" width="500px" runat="server"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" Font-Size="10pt" ControlToValidate="txtemail"
											ErrorMessage="Email required"></asp:requiredfieldvalidator></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">User Profile/URL</FONT>
								</td>
								<td>
									<asp:textbox id="txtProfile" runat="server" Width="500px">http://codeproject.com</asp:textbox></td>
							</TR>
							<TR>
								<td width="10%">&nbsp;</td>
								<td>&nbsp;</td>
							</TR>
							<TR>
								<td width="10%"></td>
								<td><FONT size="5"><FONT face="Arial"><FONT size="2"><FONT color="maroon">
													<asp:button id="Button1" runat="server" Width="90" Height="24" Text="Add Reply"></asp:button>&nbsp;&nbsp;
													<asp:Button id="Button2" runat="server" Width="90px" Height="24px" Text="Back" CausesValidation="False"></asp:Button></FONT></FONT></FONT></FONT></td>
							</TR>
						</TABLE>
						<%--<TABLE id="Table2" width="100%" border="0">
							<TR>
								<td colSpan="2"><FONT face="arial" size="2"><B>Reply to&nbsp;Comment</B>
										<HR>
										<FONT face="Arial"><FONT size="2"><FONT color="maroon"></FONT></FONT></FONT></FONT>
								</td>
							</TR>
							<tr valign="middle">
								<td valign="middle" nowrap align="left" width="10%"><FONT face="Arial" size="2">Message 
										Type:</FONT></td>
								<td valign="top"><FONT face="Arial" size="2"> <input type="radio" name="MsgType" ID="MsgType_4" value="4" runat="server">
										<Label for="MsgType_4"><img title='Question' align="absMiddle" src='images/question.gif'>
											Question &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_1" value="1" checked runat="server">
										<Label for="MsgType_1"><img title='General Comment' align="absMiddle" src='images/general.gif'>
											General &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_2" value="2" runat="server">
										<Label for="MsgType_2"><img title='News' align="absMiddle" src='images/info.gif'> News 
											&nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_3" value="3" runat="server">
										<Label for="MsgType_8"><img title='Answer' align="absMiddle" src='images/answer.gif'>
											Answer &nbsp;&nbsp;</Label> <input type="radio" name="MsgType" ID="MsgType_5" value="5" runat="server">
										<Label for="MsgType_16"><img title='Joke / Game' align="absMiddle" src='images/game.gif'>
											Joke/Game&nbsp;&nbsp;&nbsp;</Label></FONT></td>
							</tr>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Title</FONT></td>
								<td>
									<asp:textbox id="txtsubject" width="500px" runat="server"></asp:textbox>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" Font-Names="Arial" Font-Size="10pt"
										ControlToValidate="txtsubject" ErrorMessage="Subject Required"></asp:requiredfieldvalidator></td>
							</TR>
							<TR>
								<td vAlign="top" width="10%"><FONT face="Arial" size="2">Reply:</FONT></td>
								<td><FONT face="Arial">
										<asp:textbox id="txtcomment" runat="server" Font-Names="Arial" Font-Size="10pt" TextMode="MultiLine"
											width="500px" Height="104px"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" Font-Size="10pt" ControlToValidate="txtcomment"
											ErrorMessage="Comment required"></asp:requiredfieldvalidator></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Name:</FONT></td>
								<td><FONT face="Arial">
										<asp:textbox id="txtname" width="500px" runat="server"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Size="10pt" ControlToValidate="txtname"
											ErrorMessage="Name required"></asp:requiredfieldvalidator></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">Email:</FONT></td>
								<td><FONT face="Arial">
										<asp:textbox id="txtemail" width="500px" runat="server"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" Font-Size="10pt" ControlToValidate="txtemail"
											ErrorMessage="Email required"></asp:requiredfieldvalidator></FONT></td>
							</TR>
							<TR>
								<td width="10%"><FONT face="Arial" size="2">User Profile/URL</FONT>
								</td>
								<td>
									<asp:textbox id="txtProfile" runat="server" Width="500px"></asp:textbox></td>
							</TR>
							<TR>
								<td width="10%">&nbsp;</td>
								<td>&nbsp;</td>
							</TR>
							<TR>
								<td width="10%"></td>
								<td><FONT size="5"><FONT face="Arial"><FONT size="2"><FONT color="maroon">
													<asp:button id="Button1" runat="server" Width="90" Height="24" Text="Add Reply"></asp:button>&nbsp;&nbsp;
													<asp:Button id="Button2" runat="server" Width="90px" Height="24px" Text="Back" CausesValidation="False"></asp:Button></FONT></FONT></FONT></FONT></td>
							</TR>
						</TABLE>--%>
					</td>
				</TR>
			</TABLE>
			<script language="JavaScript1.2" defer>
						editor_generate('txtcomment');
</script>
		</form>
	</body>
</HTML>

