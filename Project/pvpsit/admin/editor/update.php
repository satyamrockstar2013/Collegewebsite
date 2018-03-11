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


<?php
// Using output buffers
ob_start();
include SERVER_ROOT.'pages/'.$_GET['file_name']; 
ob_end_clean();
?>


<div class="row">
<div class="col-md-12">
<h1>Update Page</h1>
</div>
</div>
<hr>
  <div class="row">
    <div class="col-md-12">
      <form method="POST" action="<?php echo APPLICATION_ROOT.'admin/editor/create_file.php'; ?>">
        Filename : <input type="text" name="file_name" value="<?php echo $_GET['file_name']; ?>">
        <br><br><br>
        Page title : <input type="text" name="page_title" value="<?php echo $page_title; ?>">
        <br><br><br>
        Template type :
        <select name="template_type">
          <option>-- SELECT --</option>
          <option value="template1">Template 1</option>
          <option value="template2">Template 2</option>
        </select>
        <br><br><br>
        <div id="editor">
          <?php echo stripslashes($page_content); ?>
        </div>
        <input type="hidden" id="crude_code" name="crude_code">
        <button type="submit" id="save" class="btn btn-default btn-primary">Save</button>
      </form>


    </div>
  </div>
</div>
<!-- Initiate the summernote plugin -->
<script>
  $(document).ready(function() {
    $('#editor').summernote();
  });
</script>

<!-- Desbribe what happens when save button is clicked -->
<script>
  $('#save').click(function(){
    var markup = $('#editor').summernote('code');
// $('#summernote').summernote('destroy');
$('#crude_code').attr("value",markup);
});
</script>
</html>
