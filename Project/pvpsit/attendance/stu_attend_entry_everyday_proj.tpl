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
		if(document.attend.daya.value=='0')
		{
			alert("Select Day")
			document.attend.daya.focus()
			return false
		}
		if(document.attend.montha.value=='0')
		{
			
			alert("Select Month")
			document.attend.montha.focus()
			return false
		}
		if(document.attend.yeara.value=='0')
		{
			alert("Select Year")
			document.attend.yeara.focus()
			return false
		}
		
		/* if(document.attend.period.value=='5')
		{
			alert("5Th Hour is Lunch Break")
			document.attend.period.focus()
			return false
		} */
		
		if(document.attend.period.value=='0')
		{
			alert("Select Hour")
			document.attend.period.focus()
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
		  <TD colspan="2" align="center" bgcolor="#768DC1"><STRONG><font color='white'>Attendance Entry on 
			{php}
				$today = date("d.m.y"); 
				echo $today;  {/php}  </U></STRONG></TD>
			
		</TR>
		
	    <TR><TD>
          <FORM name=attend action="index.sit" method="post" onsubmit="return checkdata();">
		  <INPUT type="hidden" name="service" value="STU_ATTEND_ENTRY_EVERYDAY_PROJ">
          <TABLE border="0" width="100%" cellspacing="0" cellpadding="0"><!--table inside the form-->
<TR><TD>&nbsp;</TD></TR> 		 
		 <TR>
			  <TD colspan="2" align="center"><FONT color="blue"><b>{$msg}</FONT></TD>
			</TR>
		
		
		
		  <TR><TD>&nbsp;</TD></TR> 
            <TR>
			<TD align="right" width="35%">Subject:</TD>
			<TD>
				<SELECT name="subject">
					<OPTION value=0>Select</OPTION>
					{php}
					//echo "date".$d;
					for($i=0;$i<$count;$i++)
					{
						//echo $subject[$i];
						echo "<OPTION value=".$value[$i].">$subject[$i]-$year[$i]-$branch[$i]-S$sec[$i]</OPTION>";
					}
					{/php}
				</SELECT>
			  </TD>
			  
			</TR>
			
			<TR>
			  <TD align="right">Date:</TD>
			   <TD>
							<TABLE>
							{php}
								//echo "date**************".$d;
									//$d=date('d');
									//$d=$d-3;
									//echo "date".$d;
									///echo "date".$d;
							{/php}
							<TR><td>
							
									<SELECT name="daya">
									<!-- <OPTION value="0">Day</OPTION>-->
							{php}
								//echo "date**************".$d;
									$d=date('d');
									
									$j=31;
									//for($i=$d;$i>=$d-28;$i--)
									//for($i=$d;$i>=$d-26;$i--)
									for($i=1;$i<=31;$i++)
									{		
											$l=strlen($i);
											if(($i <=9) && ($l==1) && ($i >= 1 ))
												echo "<OPTION value=0".$i.">0".$i."</OPTION>";
											
											else if ($i >= 1 )
												echo "<OPTION value=".$i.">".$i."</OPTION>";
											
											else if ($i < 1 )
											{
												echo "<OPTION value=".$j.">".$j."</OPTION>";
												$j=$j-1;
											}
									} 
											//else
											//echo "<OPTION value=".$d.">".$d."</OPTION>";	
											
							{/php}
									</SELECT>
								</TD>
							
								<TD>
									<SELECT name="montha">
									<!-- {html_options values=$values output=$names selected="0"} -->
									
						{php}
						$month=date("m");
						$m=$month;
						/*if($month==1)
						{
							$prevmonth=12;
							$m='December';
							$m1='January';
						}
						else
						{*/
							$prevmonth=$month-1;
							if($month==1)
							{
									$p='December';
									$m='January';
									$m1='February';
							}
							if($month==2)
								{
									$p='January';
									$m='February';
									$m1='March';
								}
							if($month==3)
								{
									$p='February';
									$m='March';
									$m1='April';
								}
							if($month==4)
								{
									$p='March';
									$m='April';
									$m1='May';
								}
							if($month==5)
								{
									$p='April';
									$m='May';
									$m1='June';
								}
							if($month==6)
								{
									$p='May';
									$m='June';
									$m1='July';
								}
							if($month==7)
								{
									$p='June';
									$m='July';
									$m1='August';
								}
							if($month==8)
								{
									$p='July';
									$m='August';
									$m1='September';
								}
							if($month==9)
								{
									$p='August';
									$m='September';
									$m1='October';
								}
							if($month==10)
								{
									$p='September';
									$m='October';
									$m1='November';
								}
							if($month==11)
								{
									$p='October';
									$m='November';
									$m1='December';
								}
							if($month==12)
								{
									$p='November';
									$m='December';
									$m1='January';
								}
						//} 
							
							if ($d == '01' ||  $d =='02' || $d == '03' || $d == '04' || $d == '05' || $d == '06' || $d == '07' || $d == '08' || $d == '09')
							{
								echo "<OPTION value=".$m.">{$m}</OPTION>";
								echo "<OPTION value=".$p.">{$p}</OPTION>";
							}
							else 
							{
								echo "<OPTION value=".$m.">{$m}</OPTION>";
							}
							//echo "<OPTION value=".$month.">{$m}</OPTION>";
							//echo "<OPTION value=".$month.">{$m1}</OPTION>";  
						{/php}
				
						</SELECT>
						</TD>
							<TD>
								<SELECT name="yeara">
								<!-- <OPTION value="0" selected>year</OPTION>-->
								{php}
								//echo "date".$d;
									$year=date("Y");	
									$y=$year;
									for($i=2015;$i<=2016;$i++)
									//echo "<OPTION value=".$y.">".$y."</OPTION>";
									echo "<OPTION value=".$i.">".$i."</OPTION>";
									//echo "<OPTION value=".$y.">".$y."</OPTION>";
						{/php}
									</SELECT>
								</TD>
							</TR>
							</TABLE><!--end of inner table-->
						</TD>
			  
			  
			  
			</TR>
			<tr>
			  <TD align="right">Period:</TD>
			    <td>
									<SELECT name="period">
									<OPTION value="0">Select</OPTION>
							{php}
									
									for($i=1;$i<=8;$i++)
										echo "<OPTION value=".$i.">".$i."</OPTION>";
							{/php}
									</SELECT>
								</TD>
								</tr>
			<tr>
			  <TD align="right">Total Periods:</TD>
			    <td>
									<SELECT name="classes">
									<OPTION value="0">Select</OPTION>
							{php}
									
									for($i=1;$i<=5;$i++)
										echo "<OPTION value=".$i.">".$i."</OPTION>";
							{/php}
									</SELECT>
								</TD>
								</tr>
			
			<TR>
			<!-- <tr>
				<TD align="right">Lab Batch:</TD>
				<td>
									<SELECT name="lbatch">
									<OPTION value="0">Select</OPTION>
							{php}
									
									for($i=1;$i<=3;$i++)
										echo "<OPTION value=".$i.">".$i."</OPTION>";
							{/php}
									</SELECT>
								</TD>
								</tr> -->
			
			<TR>

		<TR><TD>&nbsp;</TD></TR> 
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
