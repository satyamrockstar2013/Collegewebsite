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
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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

  <div id="left_content">
    <div class="content ">
      <?php  include "dep_nav.php"; ?>
      <br>
            </div>
          </div>
          <div id="right_content">
		<?php echo $_SESSION['username']; ?> 
           <?php echo $_SESSION['branch']; ?> 
		   <h2>ATTENDANCE ENTRY ON <?php $today = date("d.m.y"); 
				$d=substr($today,0,2);
				echo $today;  ?></h2>
			 <form class="form-horizontal" action="attendance1.php" method="post" role = "form" >
<fieldset>


<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic">Year</label>
  <div class="col-md-4">
    <select id="selectbasic" name="year" class="form-control" required>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Branch">Branch</label>
  <div class="col-md-4">
    <select id="Branch" name="branch" class="form-control" required>
      <option value="AE">AE</option>
      <option value="CSE">CSE</option>
      <option value="CIVIL">CIVIL</option>
      <option value="MECH">MECH</option>
      <option value="ECE">ECE</option>
      <option value="ECM">ECM</option>
      <option value="EEE">EEE</option>
      <option value="IT">IT</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Sem">Sem</label>
  <div class="col-md-4">
    <select id="Sem" name="sem" class="form-control" required>
      <option value="1">1</option>
      <option value="2">2</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="section">Section</label>
  <div class="col-md-4">
    <select id="section" name="section" class="form-control" required>
      <option value="1">1</option>
      <option value="2">2</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Hour">Hour</label>
  <div class="col-md-4">
    <select id="Hour" name="hour" class="form-control" required>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
    </select>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="Date">Date</label>
  <div class="col-md-4">
   <input type="date" name="date" class="form-control" id="Date">
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submitbutton"></label>
  <div class="col-md-4">
    <button class = "btn btn-lg btn-primary btn-block" type = "submit" 
               name = "submit">submit</button>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="resetbutton"></label>

  <div class="col-md-4">
    <button id="resetbutton" name="resetbutton" class="btn btn-warning">reset</button>
  </div>
</div>

</fieldset>
</form>

</div>
</div>
<!--<?php include SERVER_ROOT.'includes/footer.php'; ?>
-->
</body>
</html>