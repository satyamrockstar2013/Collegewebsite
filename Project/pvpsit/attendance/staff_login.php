<?php
session_start();//session starts here

?>

<?php

require_once('config.php');
$errors=array();
		if(!empty($_POST))
		{
		
			$username=strtoupper($_POST["staffid"]);
			//echo $username;
			//$username =mysql_real_escape_string($username);
			$password=$_POST["password"];
			
			//echo $password;
			$sql="select * from login where loginid='$username'";
			$result=mysqli_query($conn,$sql);
                 $numrows = mysqli_num_rows($result); 			
		//	$sql="select loginid,password from login where loginid='".$username."	'";
	           
     if ($numrows > 0) {
    // output data of each row
       while($row = mysqli_fetch_assoc($result)) {
            // echo $row['password'];
			//echo $res->fields[0];
			$branch=substr($username,0,3);
			//echo $sub;	
				if($row["password"]==$password)
				{
					$errors[]= "correct password";
					$_SESSION['username']=$username;
					$_SESSION['branch']=$branch;
					header('location:staff_details.php');
					
			
				}
				}
				
	 }
	 else{
					$errors[]="wrong password";
				}
}
else{
	$errors[]="Please Login YOU ENTERED";
}		
?>

<html class="no-js lt-ie9 lt-ie8 lt-ie7">
<!--[if IE 7]>
<!--[endif]-->
<html class="no-js lt-ie9 lt-ie8">
<!--[endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9">
<!--[endif]-->
<!--[if gt IE 8]>
  <!-->
  <html class="no-js">

<!--
  <![endif]-->
  <html>
  <head>
    <title>
		staffLogin
    </title>
  
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
<link href = "css/bootstrap.min.css" rel = "stylesheet">
      
      <style>
	 .container1{
    width: 350px;
    margin: 0 auto;
    padding-bottom: 30px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px #444 solid;
	  }
         body {
 
            padding-bottom: 40px;
            background-color: #ADABAB;
         }
         
         .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
            color: #017572;
			box-sizing:border-box;;
			border-radius:5px;
         }
         
         .form-signin .form-signin-heading,
         .form-signin .checkbox {
            margin-bottom: 10px;
         }
         
         .form-signin .checkbox {
            font-weight: normal;
         }
         
         .form-signin .form-control {
            position: relative;
			width:100%;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
         }
         
         .form-signin .form-control:focus {
            z-index: 2;
         }
         
         .form-signin input[type="email"] {
            margin-bottom: 12px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
            border-color:#017572;
         }
         
         .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-color:#017572;
         }
         
         h2{
            text-align: center;
            color: #017572;
         }
      </style>
      
   </head>



<?
   // error_reporting(E_ALL);
   // ini_set("display_errors", 1);
?>




<?php include $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config.php'; ?>

<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7">
<![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8">
<![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9">
<![endif]-->
<!--[if gt IE 8]>
  <!-->
  <html class="no-js">

<!--
  <![endif]-->
  <html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
      <?php echo $page_title; ?>
    </title>

    <?php include SERVER_ROOT.'templates/header.php'; ?>
    <script type="text/javascript">

//<![CDATA[

var tabLinks = new Array();
var contentDivs = new Array();

function init() {

// Grab the tab links and content divs from the page
var tabListItems = document.getElementById('tabs').childNodes;
for ( var i = 0; i < tabListItems.length; i++ ) {
  if ( tabListItems[i].nodeName == "LI" ) {
    var tabLink = getFirstChildWithTagName( tabListItems[i], 'A' );
    var id = getHash( tabLink.getAttribute('href') );
    tabLinks[id] = tabLink;
    contentDivs[id] = document.getElementById( id );
  }
}

// Assign onclick events to the tab links, and
// highlight the first tab
var i = 0;

for ( var id in tabLinks ) {
  tabLinks[id].onclick = showTab;
  tabLinks[id].onfocus = function() {
    this.blur() }
    ;
    if ( i == 0 ) tabLinks[id].className = 'selected';
    i++;
  }

// Hide all content divs except the first
var i = 0;

for ( var id in contentDivs ) {
  if ( i != 0 ) contentDivs[id].className = 'tabContent hide';
  i++;
}
}

function showTab() {
  var selectedId = getHash( this.getAttribute('href') );

// Highlight the selected tab, and dim all others.
// Also show the selected content div, and hide all others.
for ( var id in contentDivs ) {
  if ( id == selectedId ) {
    tabLinks[id].className = 'selected';
    contentDivs[id].className = 'tabContent';
  }
  else {
    tabLinks[id].className = '';
    contentDivs[id].className = 'tabContent hide';
  }
}

// Stop the browser following the link
return false;
}

function getFirstChildWithTagName( element, tagName ) {
  for ( var i = 0; i < element.childNodes.length; i++ ) {
    if ( element.childNodes[i].nodeName == tagName ) return element.childNodes[i];
  }
}

function getHash( url ) {
  var hashPos = url.lastIndexOf ( '#' );
  return url.substring( hashPos + 1 );
}

//]]>
</script>

</head>
<body onload="init();">

  <header>
    <div id='banner' class="">
      <img src="img/banner.jpg" width="100% ">
    </img>
  </div>
</header>
<?php include SERVER_ROOT.'includes/nav.php'; ?>

<div class="container1">
<h2>Staff Login</h2>

      
         <form class = "form-signin" role = "form" 
            action = "<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method = "post" onSubmit="return checkdata()">
            <h3 class = "form-signin-heading"><?php echo implode(" ",$errors); ?></h3>
            <input type = "text" class = "form-control" 
               name = "staffid" placeholder = "Enter Staffid"  required autofocus></br>
            <input type = "password" class = "form-control"
               name = "password" placeholder = "password" required>
            <button class = "btn btn-lg btn-primary btn-block" type = "submit" 
               name = "submit">Login</button>
         </form>
			
         
         

          
</div>
<!--<?php include SERVER_ROOT.'includes/footer.php'; ?>
-->
</body>

</html>