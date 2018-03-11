<?php
require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php';
require SERVER_ROOT.'lib/db_connection.php';
?>

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
        <img src="img/banner.jpg" width="100% ">
      </img>
    </div>
  </header>
  <?php include SERVER_ROOT.'includes/nav.php'; ?>
  <div class="container">
    <div id="left_content" class="cast_shadow border border_blue">
      <?php include SERVER_ROOT.'includes/useful_links.php'; ?>
    </div>
    <div id="right_content">
      <div id="right_top">
        <div id="slider_and_flash">
          <div id="flash">
            <marquee>

              <div id="placements_holder">
                <div id="flash_heading">
                  Placments 2014-15 
                </div>
                <div id="placments">
                  <b style="color:black;">
                    B.Tech:
                  </b>
                  CE-29,CSE-88,IT-43,ECE-71,EEE-54,EIE-45,ME-37,MCA-26,MBA-24,M.Tech-10|TOTAL: 429
                </div>
              </div>

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
<div class="clearfix"></div>
</div>
<div id="clearfix"></div>
<div id="latest_news" class="cast_shadow border border_dark_blue">
  <div class="content_title shade_blue">
    LATEST NEWS
  </div>
  <div class="content">
    <ul class="list_of_links">
      <marquee direction="up"  scrollamount="3" height="365">
      <!-- Some sphagetti code -->
  <?php
  $result = $dbh->prepare('SELECT * FROM news ORDER BY id DESC');
  $result-> execute();
  for($i=0; $row = $result->fetch(); $i++){
  ?>
        <a href="<?php echo $row['url']; ?>">
          <li title="">
                    <?php echo $row['title']; ?>
          </li>
        </a>
  <?php
    }
  ?>
    </marquee>
    </ul>
  </div>
</div>
</div>
<div id="right_middle">
  <div id="vision_and_mission">
    <div id="vision" class="cast_shadow">
      <div id="vision_mission_title">
        VISION
      </div>
      <hr>
      <p align="justify">
        To provide rich ambience for academic and professional excellence,
        Research, Employability skills, Entrepreneurship and Social responsibility.
      </p>
    </div>
    <div id="mission" class="cast_shadow">
      <div id="vision_mission_title">
        MISSION
      </div>
      <hr>
      <p>
        To empower the students with :
      </p>
      <b>
        >
      </b>
      Technical Knowledge
      <br>
      <b>
        >
      </b>
      Awareness of up-to-date technical trends
      <br>
      <b>
        >
      </b>
      Inclination for research in the areas of human needs
      <br>
      <b>
        >
      </b>
      Capacity building for employment/ entrepreneurship
      <br>
      <b>
        >
      </b>
      Application of technology for societal needs
      <br>
    </div>
  </div>
  <div class="clearfix">
  </div>
  <div id="right_bottom">
    <div id="events" class="cast_shadow border border_blue">
      <div class="content_title shade_blue">
        Events
      </div>
      <div class="content">
        <ul class="list_of_links">
          <?php
  $result = $dbh->prepare('SELECT * FROM events ORDER BY id DESC');
  $result-> execute();
  for($i=0; $row = $result->fetch(); $i++){
  ?>
        <a href="<?php echo $row['url']; ?>">
          <li title="">
                    <?php echo $row['title']; ?>
          </li>
        </a>
  <?php
    }
  ?>


        </ul>
      </div>
    </div>
    <div id="examination_notice_board" class="cast_shadow border border_blue">
      <div class="content_title shade_blue">
        Examinations Notice Board
      </div>
      <div class="content">
        <ul class="list_of_links">
          <?php
  $result = $dbh->prepare('SELECT * FROM exam_boards ORDER BY id DESC');
  $result-> execute();
  for($i=0; $row = $result->fetch(); $i++){
  ?>
        <a href="<?php echo $row['url']; ?>">
          <li title="">
                    <?php echo $row['title']; ?>
          </li>
        </a>
  <?php
    }
  ?>

        </ul>
      </div>
    </div>
  </div>
</div>
</div>
<div class="clearfix"></div>
</div>
<?php include 'includes/footer.php' ?>
<div class="search">
  <img class="searchimg" src="img/search.png" >
</img>
<div class="searchbox cast_shadow">
  Enter search term
  <input type="text">
</div>
</div>
</body>
</html>
