<?php

function logIn($username, $password, $ip){

  require_once('connect.php');
  //use mysqli only, need to connect to server then variable inside brackets
  $username = mysqli_real_escape_string($link, $username);
  $password = mysqli_real_escape_string($link, $password);

    $loginstring = "SELECT * FROM tbl_user WHERE user_name = '{$username}' AND user_pw= '{$password}'";

    //echo $loginstring;

    $user_set = mysqli_query($link, $loginstring);
    if (mysqli_num_rows($user_set)) {
      $found_user = mysqli_fetch_array($user_set, MYSQLI_ASSOC);
      $id = $found_user['user_id'];
      //echo $id;

      $_SESSION['user_id'] = $id;
      $_SESSION['user_name'] = $found_user['user_fname'];

      if (mysqli_query($link, $loginstring)) {
        $updatestring = "UPDATE tbl_user SET user_ip = '$ip' WHERE user_id = {$id}";
        $updatequery = mysqli_query($link, $updatestring);
      }

      redirect_to('admin_index.php');
    }else {
      $message = "username and or password is incorrect. <br>Please make sure your caps lock key is turned off. ";
      return $message;
    }



  mysqli_close($link);
}



 ?>
