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
    <title>
      PVPSIT
    </title>
    <?php include SERVER_ROOT.'includes/essentials.php'; ?>

</head>
<body>
  <header>
    <div id='banner' class="">
      <img src="<?php echo IMAGES_PATH.'banner.jpg' ?>" width="100% ">
    </img>
  </div>
</header>
<?php include SERVER_ROOT.'includes/nav.php'; ?>
<div class="container">
  <div id="left_content" class="cast_shadow border border_blue">
  <div class="content">
    
    <?php  include "dep_nav.php"; ?>
  </div>
    

  </div>
      <div id="right_content">
          <h1>This is right content !! </h1>

          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>


      </div>
<div class="clearfix"></div>
</div>
<?php include 'includes/footer.php' ?>
<div class="search">
  <img class="searchimg" src="<?php echo IMAGES_PATH.'search.png' ?>" >
</img>
<div class="searchbox cast_shadow">
  Enter search term
  <input type="text">
</div>
</div>

</body>
</html>