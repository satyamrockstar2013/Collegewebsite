<?php
session_start();

if(!$_SESSION['username'])
{

    header("Location: staff_login.php");//redirect to login page to secure the welcome page without login access.
}

?>

<?php include $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config.php'; ?>
<?php include 'config.php'; ?>
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
<div class="container">
  <center><h1>Welcome <?php echo $_SESSION['username']; ?> </h1></center>
  <div id="left_content">
    <div class="content ">
      <?php  include "dep_nav.php"; ?>
      <br>
            </div>
          </div>
          <div id="right_content">
             <h2>TEQUIP</h2>
			 <?php
			 			 $loginid=$_SESSION['username'];
			 $sql = "SELECT * FROM staff where staffid='".$loginid."'";
             $result = mysqli_query($conn, $sql);
             $numrows=mysqli_num_rows($result);
			 
       if ( $numrows > 0) {
    // output data of each row
	 echo "<table><tr><th>STAFFID</th><th>Name</th><th>Designation</th><th>Qualification</th></tr>";
        while($row = mysqli_fetch_assoc($result)) {
        //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
     echo "<tr><td>".$row['staffid']."</td><td>".$row['name']." </td><td>".$row['designation']."</td><td>".$row['qualification']."</td></tr>";
	
	
	}
}
 else {
 echo "0 results"; 
 }

mysqli_close($conn);
	?>		 
		
			 
</div>
</div>
<!--<?php include SERVER_ROOT.'includes/footer.php'; ?>
-->
</body>
</html>