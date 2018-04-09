<?php
  require_once('phpscripts/config.php');

   ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>CMS Edit Control Page!</title>
        <link rel="stylesheet" href="css/main.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
  </head>
  <body>
  <?php
    $tbl = "tbl_movies";//just have to change this and col to edit any content you want it to.
    $col = "movies_id";
    $id = 1;
  echo single_edit($tbl, $col, $id);
  ?>

  </body>
</html>
