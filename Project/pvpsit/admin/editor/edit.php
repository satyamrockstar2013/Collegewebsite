<?php
require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php';
session_start();
if(!isset($_SESSION['key']))
{
  header('Location: ../login.php');
}
?>
<!DOCTYPE html>
<?php include SERVER_ROOT.'admin/admin_theming.php';?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h1>Edit Page</h1>
		</div>
	</div>
	<hr>

	<div class="row">
		<div class="col-md-12">
			<form method="GET" action="update.php">
				Filename: <input type="text" name="file_name">
				<input type="submit" value="Edit">
			</form>
		</div>
	</div>	

</div>
