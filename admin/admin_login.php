<?php
//init_set('display_errors', 1);//mac
//error_reporting(E_All); //mac

require_once('phpscripts/config.php');

//what ip address youre signing in at
//test it localhost/MMED_3014_18/admin/admin_login.php
//php.net there are $_SERVER options
$ip = $_SERVER['REMOTE_ADDR'];
//echo $ip;

if (isset($_POST['submit'])) {
  //trim gets rid of whitespace
  $username = trim($_POST['username']);
  $password = trim($_POST['password']);

  if ($username !=="" && $password !=="") {
  //  echo "you can type";
  $result = logIn($username, $password, $ip);
  $message = $result;
  }else{
    $message ="please fill in the required fields";
    //echo $message;
  }
}



 ?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Fauxflix Login Page</title>
        <link rel="stylesheet" href="css/main.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
  </head>
  <body>
    <h1 class="welcome">Welcome To Fauxflix!</h1>
    <h2 class="greeting">Please sign in below.</h2>
    <?php
      if(!empty($message)){
        echo $message;
      }

     ?>
      <form action="admin_login.php" method="post">
        <input type="text" name="username" value="" class="input" placeholder="Username">
          <br><br>
        <input type="password" name="password" value="" class="input" placeholder="Password">
          <br><br>
        <input type="submit" name="submit" class="submit" value="Login to Fauxflix">




      </form>
  </body>
</html>
