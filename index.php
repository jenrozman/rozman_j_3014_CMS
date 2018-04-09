<?php

//ini_set('display_errors',1); //MAC
//error_reporting(E_All); //MAC
require_once('admin/phpscripts/config.php');
if(isset($_GET['filter'])){
  $tbl = "tbl_movies";
  $tbl2 ="tbl_genre";
  $tbl3 = "tbl_mov_genre";
  $col="movies_id";
  $col2 = "genre_id";
  $col3 = "genre_name";
  $filter= $_GET['filter'];

  $getMovies = filterType($tbl,$tbl2, $tbl3, $col, $col2, $col3, $filter);

}else{
  $tbl= "tbl_movies";
  $getMovies= getAll($tbl);
}
?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Fauxflix!</title>
  <link rel="stylesheet" href="admin/css/main.css">
</head>
<body>
  <?php
include('includes/nav.html');
if(!is_string($getMovies)){
  while($row= mysqli_fetch_array($getMovies)){
    echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
    <h2 class=\"maintitle\">{$row['movies_title']}</h2>
    <p class=\"movies_year\">{$row['movies_year']}</p>
    <a class=\"maindetails\" href=\"details.php?id={$row['movies_id']}\">More details ...</a>
    <br><br>
    ";
  }
}else{
echo "<p class=\"error\">{$getMovies} </p>";
}
?>


</body>
</html>
