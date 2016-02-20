<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMessage.aspx.cs" Inherits="GaaTemplate2.NewMessage" %>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.0 transitional//EN" >
<HTML>
	<head>
   
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
		<title>Add New Comment </title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR"/>
		<meta content="C#" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<script type="text/javascript" language="Javascript1.2"><!--		    // load htmlarea
		    _editor_url = "htmlarea/";                     // URL to htmlarea files
		    var win_ie_ver = parseFloat(navigator.appVersion.split("MSIE")[1]);
		    if (navigator.userAgent.indexOf('Mac') >= 0) { win_ie_ver = 0; }
		    if (navigator.userAgent.indexOf('Windows CE') >= 0) { win_ie_ver = 0; }
		    if (navigator.userAgent.indexOf('Opera') >= 0) { win_ie_ver = 0; }
		    if (win_ie_ver >= 5.5) {
		        document.write('<scr' + 'ipt src="' + _editor_url + 'editor.js"');
		        document.write(' language="Javascript1.2"></scr' + 'ipt>');
		    } else { document.write('<scr' + 'ipt>function editor_generate() { return false; }</scr' + 'ipt>'); }
// --></script>
<script language="JavaScript1.2" defer>
						editor_generate('txtcomment');
</script>
	   
	</head>
    <body>
	
		<form id="Form1"  class="padding" method="post" runat="server">
			<br />
            <table id="table1" class="table" border="0">
				<tr>
					<td >&nbsp;
					</td>
					<td >
						<h2>Add a comment</h2>
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
					<td>
                        
                    </td>
				</tr>
				<tr>
					<td>
                        
					</td>
					<td>
						<table id="table2" class="textStyle" cellspacing="1">
							<tr>
								<td colspan="2" ><h3>Create New Comment</h3>
										<hr>
									
								</td>
							</tr>
							<tr>
								<td align="left">Title</td>
								<td>
									<asp:textbox id="txtsubject" runat="server" Width="500px"></asp:textbox>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server"
										ControlToValidate="txtsubject" ErrorMessage="Subject Required"></asp:requiredfieldvalidator></td>
							</tr>
							<tr>
								<td vAlign="top" align="left">Reply:</td>
								<td><asp:textbox id="txtcomment" runat="server" font-Size="10pt" Height="104px" Width="500px" TextMode="MultiLine"
											font-Names="Arial"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Comment required" ControlToValidate="txtcomment"
											font-Size="10pt"></asp:requiredfieldvalidator></td>
							</tr>
                            <tr>
                            <td align=left><font face="Arial" size="2">Name:</font></td><td><font face="Arial"><asp:label runat="server" id="lblUsee" Text=""></asp:label>
                         
                                </td>
                            
                            </td>
                            </tr>
							<tr>
								<td align="left">&nbsp;</td>
								<td><font color="maroon" face="Arial" size="2"><asp:button id="btnReply" runat="server" CssClass="btn" Text="Add Reply" onclick="btnReply_Click"></asp:button>&nbsp;&nbsp;
													<asp:Button id="Button2" runat="server" CssClass="btn" Text="Back" CausesValidation="False" OnClick="btnBack_Click"></asp:Button></font></td>
							
                            </tr>
							</table>
		<br />
			
		</form>
		
	</body>
</HTML>
