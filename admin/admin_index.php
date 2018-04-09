<?php
//init_set('display_errors', 1);//mac
//error_reporting(E_All); //mac

require_once('phpscripts/config.php');
 confirm_logged_in();



 ?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>CMS Portal</title>
        <link rel="stylesheet" href="css/main.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
  </head>
  <body>
    <h1 class="welcome">Welcome to your user settings! </h1>
    <?php
    echo "<h2 class=\"greeting\"> Hello {$_SESSION['user_name']}!</h2>";
    ?>
    <div class="usersettings">
<a href="admin_edituser.php">Edit User</a><br><br>
<a href="admin_deleteuser.php">Delete User</a><br><br>
<a href="admin_addmovie.php">Add movie</a><br><br>
<a href="phpscripts/caller.php?caller_id=logout">Logout</a><br><br>
<a href="../index.php" class=\"back\"> Back... </a>
  </div>


  </body>
</html>
