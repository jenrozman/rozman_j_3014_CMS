<?php
	// Set up connection credentials
	$user = "root";
	$pass = ""; //root for mac
	$url = "localhost";
	$db = "db_movies";

	//$link = mysqli_connect($url, $user, $pass, $db, "8889"); //Mac
	$link = mysqli_connect($url, $user, $pass, $db); //PC

	/* check connection */
	if(mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}
?>
