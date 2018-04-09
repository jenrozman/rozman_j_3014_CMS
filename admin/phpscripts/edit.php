<?php
include('connect.php');

$tbl = $_POST['tbl'];
$col = $_POST['col'];
$id = $_POST['id'];

unset($_POST['tbl']);
unset($_POST['col']);
unset($_POST['id']);
unset($_POST['submit']);

$count = 0;
$num = count($_POST);
//echo count($_POST);
$qstring = "UPDATE {$tbl} SET ";//need the space after set

foreach($_POST as $key => $value){ //post array is associative array, what it holds as key, and what it holds as value
  $count++;//count up
  if($count != $num){ //removing the extra ,
       $qstring .= $key." = '".htmlspecialchars($value, ENT_QUOTES)."', "; //takes quotes and turns it into ascii for you
     }else{
       $qstring .= $key." = '".htmlspecialchars($value, ENT_QUOTES)."' "; //the htmlspecialchar sanitizes the c+paste the client puts
     }
}

$qstring .= "WHERE {$col}={$id}"; // .= is concat, adds to the string
//echo $qstring;
$updatequery = mysqli_query($link, $qstring);
if($updatequery){
  header("Location:../../index.php");
}else{
  echo "There was a problem changing this content. Contact your web admin";
}
mysqli_close($link);

 ?>
