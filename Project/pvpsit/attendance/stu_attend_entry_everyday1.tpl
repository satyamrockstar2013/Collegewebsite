{include file="header.tpl" title="Student Attendance Entry"}
<SCRIPT language=JavaScript src="menus/staffmenu.js" type=text/javascript></SCRIPT>
<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
  <TR><TD>&nbsp;</TD></TR>
  <TR><TD>&nbsp;</TD></TR>
  </TABLE>

{literal}
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<script language="javascript">
$(
	function()
	{
	$("#selectall").click
	(
		function()
		{	
			$('.case').attr('checked',this.checked);
		}
	);
	$(".case").click
	(
		function()
		{
			if($(".case").length==$(".case:checked").length)
			{
				$("#selectall").attr("checked","checked");
			}
			else
			{
				$("#selectall").removeAttr("checked");
			}
		}
	);
});</script>
{/literal}

<TABLE  border="0" width="100%" cellspacing="0" cellpadding="0"><!--main table-->
  
  <TR>
    <TD width="25%"></TD>
    <TD width="50%">
	  <TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
        <TR>
          {php}
		
			
				
				if($y==8)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>IV Year II Semester</TD>";
				}
				if($y==7)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>IV Year I Semester</TD>";
				}
				if($y==6)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>III Year II Semester</TD>";
				}
				if($y==5)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>III Year I Semester</TD>";
				}
				if($y==4)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>II Year II Semester</TD>";
				}
				if($y==3)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>II Year I Semester</TD>";
				}
				if($y==2)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>I Year II Semester</TD>";
				}
				if($y==1)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><b>I Year</TD>";
				}
			
			
				
			
		
	{/php}
	</TR>
	<TR>
			<TD align="right" width="25%"><font color='red'><b>Branch:</TD>
			<TD width="25%">&nbsp;<font color='blue'><b>{$branch}</TD>
			<TD align="right" width="25%"><font color='red'><b>Section:</TD>
			<TD width="25%">&nbsp;<font color='blue'><b>{$section}</TD>
	</TR>
	<TR>
		  <TD align="right"><font color='red'><b>Subject:</TD>
		  <TD colspan="3">&nbsp;<font color='blue'>{$sub}({$subname})</TD>
		</TR>
		<TR><TD>&nbsp;</TD></TR>
		<FORM  name="attend" action="index.sit" method="post" >
				<INPUT type="hidden" name="service" value="STU_ATTEND_ENTRY_EVERYDAY">
		{php}
				
				if($type == 'p')
				{
					echo "<TR>
						<TD align='center' colspan='3' align='right'><font color='red'><b>Total No. of Hours:
							<INPUT type='text' name='classes' value=3>
						</TD><td align='justify'><font color='blue'><b>If Lab session is more than 3 Hours Update the total No. of Hours</td>
						</TR><TR><TD>&nbsp;</TD></TR>";
				}
				
				
		{/php}
		
		
	  </TABLE>
    </TD>
	<TD>&nbsp;</TD>
  </TR>
  <TR><TD>&nbsp;</TD></TR>
</TABLE>


<TABLE  border="0" width="100%" cellspacing="0" cellpadding="0"><!--main table-->
<TR>
   <TD width="100%" align='center'><font color='#8A0808'><B><marquee width='600' scrollamount='4'> Don't CLICK SUBMIT BUTTON MORE THAN ONE TIME</marquee>  </td></tr>
  <TR>
   <TD width="100%" align='center'><font color='red'><B>**** &nbsp;&nbsp; Click Off  the Check Box if Absent  &nbsp;&nbsp;* *** </td></tr>
    </table>
<TABLE  border="0" width="100%" cellspacing="0" cellpadding="0"><!--main table-->
  <TR>
    <TD width="25%"></TD>
	<TD width="60%">
		<TABLE border="1" width="100%" cellspacing="0" cellpadding="0">
		<TR>
			<TD align="center" bgcolor="white"><STRONG><font color='green'>Attendance Entry On &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {$today}</U></STRONG></TD>
		</TR>
		<TR><TD>
			<!-- <FORM  name="attend" action="index.sit" method="post" onsubmit="return checkdata();"> -->
			
			<TABLE border="0" width="100%" cellspacing="0" cellpadding="0"><!--table inside the form-->
			
			<TR>
				<TD>
					<TABLE border="1" width="100%" cellspacing="0" cellpadding="0">
					<TR><TD align=center width=20%><FONT COLOR='LIGHT BLUE'><B>STID</TD>
					<TD align=JUSTIFY width=20%><FONT COLOR='LIGHT BLUE'><B>Select All /Un Select All    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="selectall" CHECKED></TD>  
					{php}
					//echo "type".$type;
					
					if($type == 't')
					{
						
						echo 	"<TD align=center width=45%><FONT COLOR='LIGHT BLUE'><B>STUDENT NAME </td>";
					}
					{/php}
					</tr>
				<TR>
				{php}
				$k=0;
				while(!$student->EOF)
				{     
				
					/*if($batch->fields[0]=='')
					{
						$batch1=1;
					}
					else
					{
						$batch1=$batch->fields[0];
					} */
					
					
					if($type == 't' ||  $type == 'e')
					{
						echo "<TR>
						<TD align=center width=20%>{$student->fields[0]}
						<INPUT type=\"hidden\" name=stid".$k." value=".$student->fields[0].">
						<INPUT type=\"hidden\" name=batch".$k." value=".$batch1.">
						
						</TD>";
						
						echo "<TD width='10%' align=center><INPUT type=checkbox name=".$student->fields[0]."c value=1 class='case' checked></TD>";
						echo "<TD align=\"left\" width=45%>";echo strtoupper($student->fields[1]); 
						echo "</TD>";
					}
					
						
					$student->MoveNext();
					//$batch->MoveNext();
				
					$k++;
				}
				echo "<INPUT type=hidden name=k value=".$k.">";
				{/php}
			</TR>
		</TABLE>
		</TD>
		</TR>
		<TR><TD><TABLE width="100%">
		<TD align="right"><INPUT type="submit" name="submit1"   value="Submit"></TD>
		<TD align="center"><INPUT type="reset" value="Reset"></TD>
		</TABLE></TD>
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
