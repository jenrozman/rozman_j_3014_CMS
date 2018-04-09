<?php
require_once('admin/phpscripts/config.php');
if(isset($_GET['id'])){
	$id = $_GET['id'];
	$tbl ="tbl_movies";
	$col = "movies_id";
	//needs to be in same order as the other pages its linked to i.e. ($tbl,$col,$id)
	$getSingle = getSingle($tbl,$col,$id);
}

?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
  <link rel="stylesheet" href="admin/css/main.css">
	</head>
<body>

<?php
if(!is_string($getSingle)){
		$row = mysqli_fetch_array($getSingle);
		echo "
		<video class=\"trailer\" controls src=\"video/{$row['movies_trailer']}\" poster=\"{$row['movies_title']}\">
		</video>
		<br>

		<h2 class=\"title\">{$row['movies_title']} ({$row['movies_year']})</h2>
		<p class=\"storyline\">{$row['movies_storyline']}</p>
			<a href=\"admin/editall.php\" class=\"edit\"> Edit Movie</a>
		<a href=\"index.php\" class=\"back\"> Back... </a>
		";
		}else{
			echo "<p class=\"error\"> {$getSingle}</p>";
		}



 ?>



</body>
</html>
