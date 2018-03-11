<?php
require $_SERVER['DOCUMENT_ROOT'].'/pvpsit/config/paths.php'; 

// Get the file name
$file_name = $_POST['file_name'];
// Get the page title and capitalize the first letter
$page_title = ucfirst($_POST['page_title']);
// Get the type of template
$template_type = $_POST['template_type'];
// Get the page content a.k.a crude code
$crude_code = $_POST['crude_code'];

// Require these files to run
require 'page_editor.php';

$pe = new PageEditor($file_name,$page_title,$template_type,$crude_code);

// Give confiramtion to the user
echo "<script>alert('File created successfully !! ');</script>";
?>