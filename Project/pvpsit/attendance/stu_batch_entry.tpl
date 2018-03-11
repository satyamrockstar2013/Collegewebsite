{include file="header.tpl" title="Student Lab Batches Entry"}
<SCRIPT language=JavaScript src="menus/staffmenu.js" type=text/javascript></SCRIPT>

{literal}
<SCRIPT language=JavaScript>
function checkdata()
{    
	  if(document.stulab.subject.value=='0')
	  {
	       alert("Select Subject")
		   document.stulab.subject.focus()
		   return false
	  }
	  return true
}
</SCRIPT>
{/literal}
<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
</TABLE>

{php}
  if($count2==0)
  {
        echo "<TABLE width=100% border=0 cellspacing=0 cellpadding=0><TR><TD align=center><FONT color=red>U are not assigned any Labs</FONT></TD></TR></TABLE>";
  }
  else
  {
  {/php}
<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="25%">&nbsp;</TD>
    <TD width="50%">
      <TABLE width="100%" border="1" cellspacing="0" cellpadding="0">
        <TR>
          <TD colspan="3" align="center" bgcolor="#768DC1"><u>Student Lab Batches Entry Form</u></TD>
        </TR>
        <TR>
		  <TD>
            <FORM name="stulab" method="post" action="index.sit" onsubmit="return checkdata();">
            <INPUT type="hidden" name="service" value="STU_BATCH_ENTRY">
            <TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
              <TR>
			    <TD align="center" colspan="2"><FONT color="red">{$msg}</FONT></TD>
			  </TR>  
               <TR>
			  <TD align="right" width="35%">Subject:</TD>
			  <TD>
			    <SELECT name="subject">
				 <OPTION value=0>Select</OPTION>
				 {php}
				 for($i=0;$i<$count;$i++)
				 {
				      if($subject[$i]!='' && $year[$i]!='' && $branch[$i]!='' && $sec[$i]!='')
				           echo "<OPTION value=".$value[$i].">$subject[$i]-$year[$i]-$branch[$i]-$sec[$i]</OPTION>";
				 }
				 {/php}
				</SELECT>
			  </TD>
			</TR>
              <TR>
                <TD align="right"><INPUT type="submit" name="submit" value="Submit"></TD>
	            <TD align="center"><INPUT type="reset" value="Clear"></TD>
              </TR> 
            </TABLE>
            </FORM>
          </TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="25%">&nbsp;</TD>
  </TR>
</TABLE>
{php}
}
{/php}
</BODY>
</HTML>
