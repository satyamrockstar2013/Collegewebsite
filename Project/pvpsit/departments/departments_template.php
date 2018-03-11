<?php require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php'; ?>

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
  <center><h1><?php echo $page_heading; ?></h1></center>
  <div id="left_content">
    <div class="content ">
      <?php  include "dep_nav.php"; ?>
      <br>

      <h2 style="color:#000;">
        Career Oppurtunities
        <h2>
          <h2 style="color:#000;">
            Placements
            <h2>



            </div>
          </div>
          <div id="right_content">
            <div id="right_top">
              <div id="slider_and_flash">
                <div id="flash">
                  <marquee>

                    <?php include 'placements.php'; ?>

                  </marquee>
                </div>
                <div id="slider">
                  <div id="my-slideshow">
                    <ul class="bjqs">
                      <li>
                        <img src="img/slider/1.jpg" >
                      </img>
                    </li>
                    <li>
                      <img src="img/slider/2.jpg">
                    </img>
                  </li>
                  <li>
                    <img src="img/slider/3.jpg" >
                  </img>
                </li>
                <li>
                  <img src="img/slider/4.jpg" >
                </img>
              </li>
              <li>
                <img src="img/slider/5.jpg">
              </img>
            </li>
          </ul>
        </div>
      </div>
      <div class="clearfix">
      </div>
    </div>
    <div id="clearfix">
    </div>
    <div id="latest_news" class="cast_shadow border border_dark_blue">
      <div class="content_title shade_blue">
        LATEST NEWS
      </div>
      <div class="content">
        <ul class="list_of_links">
          <marquee direction="up"  scrollamount="3" height="365">
            <?php include 'latest_news.php'; ?>
          </marquee>
        </ul>
      </div>
    </div>
  </div>

  <div class="clearfix">
  </div>

  <div id="right_middle">
    <?php include 'tabs.php'; ?>    
  </div>

  <div class="clearfix">
  
  </div>

  <div id="right_bottom">
    <h2>
      Contact
    </h2>
    <hr>
    <p>
      <?php include 'contact.php'; ?>
    </p>
  </div>
</div>
</div>
<div class="clearfix">
</div>
</div>
<?php include SERVER_ROOT.'includes/footer.php'; ?>
</body>
</html>