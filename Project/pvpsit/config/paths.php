<!-- Include this config file in all the pages -->
<?php
// Define the name of the folder in the web root
defined("APPLICATION_ROOT") or define("APPLICATION_ROOT",'/pvpsit/');

defined("SERVER_ROOT") or define("SERVER_ROOT",$_SERVER['DOCUMENT_ROOT'].'/pvpsit/');

defined("CSS_PATH")or define("CSS_PATH",APPLICATION_ROOT.'css/');
     
defined("JS_PATH") or define("JS_PATH",APPLICATION_ROOT.'js/');

defined("IMAGES_PATH") or define("IMAGES_PATH",APPLICATION_ROOT.'img/');
?>