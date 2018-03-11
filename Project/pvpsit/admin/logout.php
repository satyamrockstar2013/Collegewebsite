<?php
session_start(); // init session vars

if(isset($_COOKIE[session_name()])) {
    setcookie(session_name(),'',time()-3600); # unset session id/cookies
}

unset($_SESSION['email']); // this is the key to unsetting your session.
session_destroy(); // destroy session
session_commit();  // commit session write (optional)


header('Location: login.php');
?>