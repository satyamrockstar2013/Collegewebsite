{include file="header.tpl" title="Staff Login"}


{literal}
<SCRIPT language="JavaScript">
function checkdata()
{
      if(document.staff.staffid.value=='')
	  {
	         alert("Enter a Staffid")
			 document.staff.staffid.focus()
			 return false;
	  }
	  if(document.staff.password.value=='')
	  {
	         alert("Enter a Password")
			 document.staff.password.focus()
			 return false;
	  }
	  return true;
}     
</SCRIPT>
{/literal}
<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
<TR><TD>&nbsp;</TD></TR>
<TR><TD>&nbsp;</TD></TR>
<TR><TD>&nbsp;</TD></TR>
<TR><TD>&nbsp;</TD></TR>
<TR><TD>&nbsp;</TD></TR>

</TABLE>

</SCRIPT>
{literal}
<style type="text/css">
<!-- 
A:hover.link {
	background-color: #E9E9E9;
}
//-->

</style>
{/literal}
</head>

<center>
<form name="staff" action=index.sit METHOD="post" onSubmit="return checkdata()">
<input type="hidden" name="service" value="STAFF_LOGIN">
<table WIDTH="100%" CELLPADDING="0" CELLSPACING="0"><TR><TD align="center"><FONT color="red">{$msg}</FONT></TD></TR><tr><td ALIGN="center" VALIGN="middle">

	
	<table WIDTH="404" HEIGHT="249" CELLPADDING="0" CELLSPACING="0" BACKGROUND="images/bg_lock.gif"><tr><td ALIGN="center" VALIGN="middle">
		<table CELLPADDING="4" WIDTH="100%" HEIGHT="100%" BACKGROUND="">
		<tr><td ALIGN="center" COLSPAN="2"><h1>Staff Login</h1></td></tr>

		<tr><td ALIGN="center" COLSPAN="2">
			<b><i><nobr></nobr></i></b>
		</td></tr>
		
		<tr>
		<td ALIGN="right" VALIGN="bottom" colspan="2">
			<table cellpadding=4 cellspacing=1 BACKGROUND="">
			<tr><td><b><font FACE="Arial,Helvetica,sans-serif" SIZE="-1">Staffid: </font></b></td>

			<td> <input TYPE="text" NAME="staffid" STYLE="font-size: 9pt;" TABINDEX="1"></td></tr>
			<tr><td><b><font FACE="Arial,Helvetica,sans-serif" SIZE="-1">Password: </font></b></td>
			<td> <input TYPE="password" NAME="password" STYLE="font-size: 9pt;" TABINDEX="1"></td></tr>
			</table>
			</td></tr><tr><td width="50%">&nbsp;</td><td align="center"><input TYPE="submit" name="submit" value="Login"></td></tr>
		</td></tr></table>
	</td></tr></table>

	
</td></tr></table>
</form>
</center>

</BODY>
</HTML>
