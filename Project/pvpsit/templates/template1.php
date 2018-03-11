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
<?php echo stripslashes($page_content); ?>
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