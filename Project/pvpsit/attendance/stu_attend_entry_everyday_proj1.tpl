{include file="header.tpl" title="Student Attendance Entry"}
<SCRIPT language=JavaScript src="menus/staffmenu.js" type=text/javascript></SCRIPT>
<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
	<TR><TD>&nbsp;</TD></TR>
	<TR><TD>&nbsp;</TD></TR>
</TABLE>

{literal}
<SCRIPT language="JavaScript">


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
});

   function checkdata()
   {
		count=document.attend.count.value
		for(i=0;i<count;i++)
		{
			if(document.attend['attend'+i].value=='')
			{
			        alert('Enter a value')
				document.attend['attend'+i].focus()
				return false
			}
			if(document.attend['batch'+i].value==1)
			{
			        if(document.attend.classes.value=='')
				{
					alert('Enter a value')
						  document.attend.classes.focus()
						  return false
					}
			        prevclass=document.attend.prevclass.value
		            classes=document.attend.classes.value
		            diff=classes-prevclass
					prev=document.attend['prev'+i].value
			        tot=eval(document.attend['prev'+i].value)+diff
				//alert 'hi'
				//alert tot
					if(eval(document.attend['attend'+i].value)>tot)
					{
					    //alert('hi')
					   alert('U cannot enter more than '+tot+' classes for this student')
						document.attend['attend'+i].value=''
						document.attend['attend'+i].focus()
						return false
					}
					if(eval(document.attend['attend'+i].value)<prev)
					{
					    alert('U cannot enter less than '+prev+' classes for this student')
						document.attend['attend'+i].value=''
						document.attend['attend'+i].focus()
						return false
					}
			}
			   if(document.attend['batch'+i].value==2)
			   {
			        if(document.attend.classes.value=='')
					{
					      alert('Enter a value')
					}
					if(document.attend.classes1.value=='')
					{
					      alert('Enter a value')
					}
			        prevclass1=document.attend.prevclass1.value
		            classes1=document.attend.classes1.value
		            diff1=classes1-prevclass1
					prev1=document.attend['prev'+i].value
			        tot1=eval(document.attend['prev'+i].value)+diff1
					if(eval(document.attend['attend'+i].value)>tot1)
					{
					     alert('hi1')
					    alert('U cannot enter more than '+tot1+' classes for this student')
						document.attend['attend'+i].value=''
						document.attend['attend'+i].focus()
						return false
					}
					if(eval(document.attend['attend'+i].value)<prev1)
					{
					    alert('U cannot enter less than '+prevclass1+' classes for this student')
						document.attend['attend'+i].value=''
						document.attend['attend'+i].focus()
						return false
					}
			   }
		  }
          return true
   }  
</SCRIPT>
{/literal}

<TABLE  border="0" width="100%" cellspacing="0" cellpadding="0"><!--main table-->
  
  <TR>
    <TD width="25%"></TD>
    <TD width="50%">
	  <TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
        <TR>
          {php}
		{
			
			if ($rid == 13 || $rid==14)
			{	
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
			}
			
			if ($rid != 13 && $rid != 14)
			{	if($y==7)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>IV Year II Semester</TD>";
				}
				if($y==6)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>IV Year I Semester</TD>";
				}
				if($y==5)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>III Year II Semester</TD>";
				}
				if($y==4)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>III Year I Semester</TD>";
				}
				if($y==3)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>II Year II Semester</TD>";
				}
				if($y==2)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>II Year I Semester</TD>";
				}
				if($y==1)
				{
				     echo "<TD colspan=\"4\" align=\"center\"><font color='blue'><b>I Year</TD>";
				}
			}
			
		}
	{/php}
	</TR>
	<TR>
			<TD align="right" width="25%"><font color='red'><b>Branch:</TD>
			<TD width="25%">&nbsp;<font color='blue'><b>{$branch}</TD>
			<TD align="right" width="25%"><font color='red'><b>Section:</TD>
			<TD width="25%">&nbsp;<font color='blue'><b>{$section}</TD>
			<!-- <TD align="right" width="25%"><font color='red'><b>Batch:</TD>
			<TD width="25%">&nbsp;<font color='blue'><b>{$lbatch}</TD> -->
	</TR>
	<TR>
		  <TD align="right"><font color='red'><b>Subject:</TD>
		  <TD colspan="3">&nbsp;<font color='blue'><B>{$sub}({$subname})</TD>
		</TR>
		<TR><TD>&nbsp;</TD></TR>
		<FORM  name="attend" action="index.sit" method="post" >
				<INPUT type="hidden" name="service" value="STU_ATTEND_ENTRY_EVERYDAY_PROJ">
		
		
	  </TABLE>
    </TD>
	<TD>&nbsp;</TD>
  </TR>
  <TR><TD>&nbsp;</TD></TR>
</TABLE>



<TABLE  border="0" width="100%" cellspacing="0" cellpadding="0"><!--main table-->
  <TR>
    <TD width="25%"></TD>
	<TD width="60%">
		<TABLE border="1" width="80%" cellspacing="0" cellpadding="0">
		<TR>
			<TD align="center" bgcolor="#768dc1"><STRONG><U><font color='white'>Attendance Entry</U></STRONG></TD>
		</TR>
		<TR><TD>
			<!-- <FORM  name="attend" action="index.sit" method="post" onsubmit="return checkdata();"> -->
			
			
  <TABLE border="0" width="80%" cellspacing="0" cellpadding="0">
  
  <TR>
    <TD colspan="1" align="center"><font color='blue'><B>Student ID</TD>
    	
  </TR> 
  <TR>
  <TD>&nbsp;</TD>
  </TR> 
  {php}
  $k=0;
  while(!$student->EOF)
  {
	echo "<TR>";
		
		echo "	<TD align=center width=20%>{$student->fields[0]}
			<INPUT type=\"hidden\" name=stid".$k." value=".$student->fields[0]."> </TD>";
		echo "<TD><INPUT type=radio name=".$student->fields[0]."r value=p>Present</TD>";
		echo "<TD><INPUT type=radio name=".$student->fields[0]."r value=a>Absent</TD>";
		echo "<TD><INPUT type=radio name=".$student->fields[0]."r value=n  class='case' checked> No Class Work</TD>";
		echo "</TR>";
		$k++;
   $student->MoveNext();
  }//eof while
  echo "<INPUT type=hidden name=k value=".$k.">";
  {/php}
  
  <TR>
    <TD align="right" colspan="2"><INPUT type="submit" name="submit1" value="Submit"></TD>
	<TD align="center" colspan="2"><INPUT type="reset" value="Clear"></TD>
  </TR>
 
</TABLE>
		</TD>
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
