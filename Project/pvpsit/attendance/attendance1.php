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
   $year=$_POST['year'];
   $section=$_POST['section'];
   $hour=$_POST['hour'];
   $date=$_POST['date'];
   $sem=$_POST['sem'];
   $stu_branch=$_POST['branch'];
   $username=$_SESSION['username'];
   $staffbranch=$_SESSION['branch'];
  
  $_SESSION['date']=$date;
   $_SESSION['hour']=$hour;
   echo $_SESSION['hour'];

   $sql="select stu_id,stu_name from student_master where year='".$year."' and section='".$section."'and branch='".$stu_branch."'";
   
   	$result=mysqli_query($conn,$sql);
    
	$numrows = mysqli_num_rows($result); 			
     if ($numrows > 0) {

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
<script>
$("#checkAll").change(function () {
    $("input:checkbox").prop('checked', $(this).prop("checked"));
});
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
 <form action="attendance2.php" method="post">
 
<div class="tg-wrap"><table id="tg-zcGJj" class="tg">
  <tr>
    <th class="tg-yw4l" colspan="3">Attendance Entry on:<br><?php echo $_SESSION['date']?></th>
  </tr>
  <tr>
    <td class="tg-yw4l">Stu_id</td>
    <td class="tg-yw4l">Select all/Unselect all<input type="checkbox" id="checkAll"><br></td>
    <td class="tg-yw4l">Student name<br></td>
  </tr>
  
 <?php 
 $count=0;
 while($row = mysqli_fetch_assoc($result)) {
	 $stid="stu_id".$count;
	 $pid="pres".$count;
	 echo $count;

?>


  <tr>
 
    <td class="tg-yw4l"> <?php  echo $row['stu_id'];?><input type="text" name="<?php echo $stid; ?>" value="<?php  echo $row['stu_id'];?>" hidden></td>
    <td class="tg-yw4l"><center><input type="checkbox" name="<?php echo $pid?>" checked></center></td>
    <td class="tg-6kuv"><?php  echo $row['stu_name'];?><br></td>
  </tr>
  

	<?php				
			$count++;
				}
				
		}
				
	 
?>
<tr>
<td>
<input type="number" name="count" value="<?php echo $count;?>" hidden>
<input type="submit" name="submit">
</td>
<td colspan="2">
<input type="reset" name="reset">
</td>
</form>
<?php } ?>
</tr>
</table></div>
</form>
</div>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;margin:0px auto;width:500px;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-6kuv{color:#333333;vertical-align:top}
.tg .tg-yw4l{vertical-align:top}
th.tg-sort-header::-moz-selection { background:transparent; }
th.tg-sort-header::selection      { background:transparent; }
th.tg-sort-header { cursor:pointer; }
table th.tg-sort-header:after {  content:'';  float:right;  margin-top:7px;  border-width:0 4px 4px;  border-style:solid;  border-color:#404040 transparent;  visibility:hidden;  }
table th.tg-sort-header:hover:after {  visibility:visible;  }
table th.tg-sort-desc:after,table th.tg-sort-asc:after,table th.tg-sort-asc:hover:after {  visibility:visible;  opacity:0.4;  }
table th.tg-sort-desc:after {  border-bottom:none;  border-width:4px 4px 0;  }
@media screen and (max-width: 767px) {.tg {width: auto !important;}
.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;margin: auto 0px;}}
</style>

<script type="text/javascript" charset="utf-8">var TgTableSort=window.TgTableSort||function(n,t){"use strict";function r(n,t){for(var e=[],o=n.childNodes,i=0;i<o.length;++i){var u=o[i];if("."==t.substring(0,1)){var a=t.substring(1);f(u,a)&&e.push(u)}else u.nodeName.toLowerCase()==t&&e.push(u);var c=r(u,t);e=e.concat(c)}return e}function e(n,t){var e=[],o=r(n,"tr");return o.forEach(function(n){var o=r(n,"td");t>=0&&t<o.length&&e.push(o[t])}),e}function o(n){return n.textContent||n.innerText||""}function i(n){return n.innerHTML||""}function u(n,t){var r=e(n,t);return r.map(o)}function a(n,t){var r=e(n,t);return r.map(i)}function c(n){var t=n.className||"";return t.match(/\S+/g)||[]}function f(n,t){return-1!=c(n).indexOf(t)}function s(n,t){f(n,t)||(n.className+=" "+t)}function d(n,t){if(f(n,t)){var r=c(n),e=r.indexOf(t);r.splice(e,1),n.className=r.join(" ")}}function v(n){d(n,L),d(n,E)}function l(n,t,e){r(n,"."+E).map(v),r(n,"."+L).map(v),e==T?s(t,E):s(t,L)}function g(n){return function(t,r){var e=n*t.str.localeCompare(r.str);return 0==e&&(e=t.index-r.index),e}}function h(n){return function(t,r){var e=+t.str,o=+r.str;return e==o?t.index-r.index:n*(e-o)}}function m(n,t,r){var e=u(n,t),o=e.map(function(n,t){return{str:n,index:t}}),i=e&&-1==e.map(isNaN).indexOf(!0),a=i?h(r):g(r);return o.sort(a),o.map(function(n){return n.index})}function p(n,t,r,o){for(var i=f(o,E)?N:T,u=m(n,r,i),c=0;t>c;++c){var s=e(n,c),d=a(n,c);s.forEach(function(n,t){n.innerHTML=d[u[t]]})}l(n,o,i)}function x(n,t){var r=t.length;t.forEach(function(t,e){t.addEventListener("click",function(){p(n,r,e,t)}),s(t,"tg-sort-header")})}var T=1,N=-1,E="tg-sort-asc",L="tg-sort-desc";return function(t){var e=n.getElementById(t),o=r(e,"tr"),i=o.length>0?r(o[0],"td"):[];0==i.length&&(i=r(o[0],"th"));for(var u=1;u<o.length;++u){var a=r(o[u],"td");if(a.length!=i.length)return}x(e,i)}}(document);document.addEventListener("DOMContentLoaded",function(n){TgTableSort("tg-zcGJj")});</script>

<script type="javascript">
$("#checkAll").change(function () {
    $("input:checkbox").prop('checked', $(this).prop("checked"));
}); 	
</script>

<!--<?php include SERVER_ROOT.'includes/footer.php'; ?>
-->
</body>
</html>	