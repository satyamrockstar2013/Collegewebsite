<!-- Contains all the stylesheets and java script files -->

<?php require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php'; ?>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut-icon" href="img/sat.jpg" \>
</link>
<!-- NORMALIZE.CSS RESET ALL THE STYLES TO DEFAULT STYLES TO MAINTAIN CONSISTENCY ACROSS BROWSERS-->
<link rel="stylesheet" href="<?php echo CSS_PATH.'normalize.css' ?>">
<!--MAIN.CSS CONTAINS ALL THE USER DEFINED STYLING-->
<link  rel="stylesheet" href="<?php echo CSS_PATH.'main.css' ?>">
<!--MENU.CSS CONTAINS THE STYLES FOR THE MENU BAR -->
<link rel="stylesheet" href="<?php echo CSS_PATH.'menu.css' ?>">
<!-- EXTRA EFFECTS SUCH AS SHADOWS ARE INCLUDED IN BLING.CSS -->
<link  rel="stylesheet" href="<?php echo CSS_PATH.'bling.css' ?>">
<!--BJQS.CSS CONTAINS THE STYLES FOR THE SLIDER -->
<link rel="stylesheet" href="<?php echo CSS_PATH.'slider/bjqs.css' ?>">
<!-- INCLUDING THE LATEST JQUERY FROM CDN -->
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<!-- MODERNIZR ENABLES OLD BROWSERS WITH HTML5 CAPABILITY -->
<script src="<?php echo JS_PATH.'vendor/modernizr-2.6.2.min.js'; ?>"></script>

<script src="<?php echo JS_PATH.'slider/bjqs.js'; ?>"></script>


<script>
  jQuery(document).ready(function($) {
    $('#slider').bjqs({
      'height' : 240,
      'width' : 500,
      'responsive' : true,
// animation values
animtype : 'slide', // accepts 'fade' or 'slide'
animduration : 450, // how fast the animation are
animspeed : 3000, // the delay between each slide
automatic : true, // automatic
// control and marker configuration
showcontrols:false, // show next and prev controls
centercontrols : false, // center controls verically
nexttext : '>', // Text for 'next' button (can use HTML)
prevtext : '<', // Text for 'previous' button (can use HTML)
showmarkers : false, // Show individual slide markers
centermarkers : true, // Center markers horizontally

// interaction values
keyboardnav : true, // enable keyboard navigation
hoverpause : false, // pause the slider on hover
}
);
  }
  );

</script>
