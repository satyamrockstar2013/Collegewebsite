<?php
// Include the paths
require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php';

// Include the db config file 
require SERVER_ROOT.'config/db.php';

try {
	$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PASSWORD) or die('Cannot connect');
	
}
catch(PDOException $e)
{
	echo $e->getMessage();
}

?>