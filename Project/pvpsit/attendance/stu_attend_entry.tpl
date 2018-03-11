{include file="header.tpl" title="Student Attendance Entry"}
<SCRIPT language=JavaScript src="menus/staffmenu.js" type=text/javascript></SCRIPT>
<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
</TABLE>
{literal}

<SCRIPT language=JavaScript>
function checkdata()
{
     
	  if(document.attend.subject.value=='0')
	  {
	       alert("Select Subject")
		   document.attend.subject.focus()
		   return false
	  }
	  if(document.attend.month.value=='0')
	  {
	       alert("Select Month")
		   document.attend.month.focus()
		   return false
	  }
	  return true
}
</SCRIPT>
{/literal}
<TABLE  border="0" width="100%" cellspacing="0" cellpadding="0"><!--main table-->
  <TR>
    <TD width="30%"></TD>
    <TD width="50%">
      <TABLE border="1" width="100%" cellspacing="0" cellpadding="0">
	    <TR>
		  <TD colspan="2" align="center" bgcolor="#768DC1"><STRONG><U>Attendance Entry</U></STRONG></TD>
		</TR>
	    <TR><TD>
          <FORM name=attend action="index.sit" method="post" onsubmit="return checkdata();">
		  <INPUT type="hidden" name="service" value="STU_ATTEND_ENTRY">
          <TABLE border="0" width="100%" cellspacing="0" cellpadding="0"><!--table inside the form-->
		<TR>
			  <TD colspan="2" align="center"><FONT color="green">{$msg}</FONT></TD>
		</TR>
		    
            <TR>
			<TD align="right" width="35%">Subject:</TD>
			<TD>
			<SELECT name="subject">
				<OPTION value=0>Select</OPTION>
				{php}
				for($i=0;$i<$count;$i++)
				{
					//echo "hi";
				      echo "<OPTION value=".$value[$i].">$subject[$i]-$year[$i]-$branch[$i]-S$sec[$i]</OPTION>";
				}
				 {/php}
				</SELECT>
			  </TD>
			</TR>
			<TR>
			  <TD align="right">Month:</TD>
			  <TD><SELECT name="month">
			  {php}
				$month=date("m");
				
				if($month==1)
				{
					$prevmonth=12;
					$m='December';
					$m1='January';
				}
				else
				{
				
					$prevmonth=$month-1;
					if($prevmonth==1)
					{
						$m='January';
						$m1='February';
					}
					 if($prevmonth==2)
					{
						$m='February';
						$m1='March';
					}
					if($prevmonth==3)
					{
						$m='March';
						$m1='April';
					 }
					 if($prevmonth==4)
					{
					      $m='April';
						  $m1='May';
					}
					 if($prevmonth==5)
					{
					      $m='May';
						  $m1='June';
					}
					 if($prevmonth==6)
					{
					      $m='June';
						  $m1='July';
					}
					 if($prevmonth==7)
					{
					      $m='July';
						  $m1='August';
					}
					 if($prevmonth==8)
					{
						$m='August';
						$m1='September';
					}
					 if($prevmonth==9)
					{
					      $m='September';
						  $m1='October';
					}
					 if($prevmonth==10)
					{
					      $m='October';
						  $m1='November';
					}
					 if($prevmonth==11)
					{
					      $m='November';
						  $m1='December';
					}
					 if($prevmonth==12)
					{
						$m='December';
						$m1='January';
					}
				}
				
				$t='05';
				echo "<OPTION value=".$prevmonth.">{$m}</OPTION>";
				echo "<OPTION value=".$month.">{$m1}</OPTION>";
				echo "<OPTION value=".$t.">May</OPTION>";
			  {/php}
			    </SELECT>
		      </TD>
			</TR>
			<TR>
			  <TD align="right"><INPUT type="submit" name="submit" value="Submit"></TD>
			  <TD align="center"><INPUT type="reset" value="Reset"></TD>
			</TR>
	      </TABLE><!--eof table inside the form-->
          </FORM>
	    </TD></TR>
      </TABLE><!--eof border table-->
    </TD>
    <TD>&nbsp;</TD>
  </TR>
</TABLE><!--eof main table-->
</BODY>
</HTML>
