<?php
require_once('phpscripts/config.php');
  $result = multiReturns(17);
  list($add, $multiply)  = multiReturns(24567);
   ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>CMS Portal Login</title>
      <link rel="stylesheet" href="css/main.css">
  </head>
  <body>
    <?php
      echo "Result 1: {$result[0]}<br>";
      echo "Result 2: {$result[1]}<br>";
      echo "Result 1 from list: {$add}<br>";
      echo "Result 2 from list: {$multiply}";
    ?>
  </body>
</html>
