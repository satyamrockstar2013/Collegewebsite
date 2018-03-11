<?php
session_start();

if(!$_SESSION['username'])
{

    header("Location: staff_login.php");//redirect to login page to secure the welcome page without login access.
}

?>
<?php include $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config.php'; ?>
<?php include 'config.php'; ?>
<?php

if(isset($_POST['submit']))
{
  echo "posting date:".$date= $_SESSION['date']."<br>";
  echo "userid:".$_SESSION['username']."<br>";
  echo "branch:". $_SESSION['branch']."<br>";
  echo "hour:".$_SESSION['hour']."<br>";   
      $count=$_POST['count'];
  echo "subject:".$subject="sub".$_SESSION['hour']."<br>";
  
   $count--;
   $studentid=array();
   	$userid1=$_SESSION['branch'];
	$studentbranch=strtolower($_SESSION['branch']);
	 echo $posting=$studentbranch."_stu_dailyattendance"."<br>";
					
   while($count >= 0)
   {
	   
	   $student="stu_id".$count;
	    $present="pres".$count;
		
		$count--;
	    $studentid=$_POST[$student];
          
		  echo $studentid."<br>";
		  if(isset($_POST[$present]))
					{
						
							$p=1;
									
					}
					else
					{
						$p=0;
					}
        echo $p."<br>";
		  $sql="select count(*) from". $posting ."where date='".$date."' and stid='".$studentid."' and". $subject."!= NULL";
   
   	      $result=mysqli_query($conn,$sql);

     if ($result)
	 {
		
		 //$sql1="update". $posting." set('".$subject."') values('".$p."') where date='".$date."' and stid='".$studentid."'";
		 
		 	$result1=mysqli_query($conn,$sql1);
			if(!$result1){
				echo "could not update database";
			}

	 }
	 else
	 {

		 $sql1="insert into". $posting." ('stid','date','".$subject."') values('".$studentid."','".$date."','".$p."')";
		 	$result2=mysqli_query($conn,$sql1);
           if(!$result2)
		   {
			   echo "result executed"."<br>";
		   }
	 }
 
		
  }
   

}
?>