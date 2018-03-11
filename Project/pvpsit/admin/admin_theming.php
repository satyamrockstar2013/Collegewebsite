<head>
  <!-- include libraries(jQuery, bootstrap) -->
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

  <!-- include summernote css/js-->
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
  <!-- include summernote css/js-->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
</head>
<body>
     <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
            <div class="navbar-header">

              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
              </button> <a class="navbar-brand" href="#">PVPSIT</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

              <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Update<strong class="caret"></strong></a>
                  <ul class="dropdown-menu">
                    <li>
                      <a href="<?php echo APPLICATION_ROOT.'admin/editor/new.php'; ?>">Latest News</a>
                    </li>
                    <li>
                      <a href="<?php echo APPLICATION_ROOT.'admin/editor/edit.php'; ?>">Events</a>
                    </li>
                    <li>
                      <a href="<?php echo APPLICATION_ROOT.'admin/editor/edit.php'; ?>">Examination Board</a>
                    </li>
                    </
                  </ul>
                </li>
                </ul>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Page Editor<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="<?php echo APPLICATION_ROOT.'admin/editor/new.php'; ?>">New Page</a>
                  </li>
                  <li>
                    <a href="<?php echo APPLICATION_ROOT.'admin/editor/edit.php'; ?>">Edit existing</a>
                  </li>
                </ul>
              </li>

              <li>
              <a href="<?php echo APPLICATION_ROOT.'admin/logout.php'; ?>">Sing Out</a>
              </li>
            </ul>
          </div>

        </nav>
      </div>
    </div>
  </div>
  <br><br><br><br>