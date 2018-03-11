<?php
require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php';
session_start();
// if (!$_SESSION['key']='9a399ef9f92a1d5436e12cc1130df4f0')
if(!isset($_SESSION['key']))
{
  header('Location: login.php');
}

?>
<!DOCTYPE html>
<?php include SERVER_ROOT.'admin/admin_theming.php';?>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="jumbotron well">
        <h2>
          Admin Page !!
        </h2>
        <p>
        <span>Welcome to the admin page. You need to be logged in before making any changes or creating new pages. You can also update News, Exam Board and Events.</span>
        </p>
        <p>
          <a class="btn btn-primary btn-large" href="#">Learn more</a>
        </p>
      </div>
    </div>
  </div>
</div>



</div>

</body>
</html>
