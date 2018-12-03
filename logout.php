<?php

include "index.php";
include "connection.php";
include "login.php";

if(($_SESSION["loggedin"] == 1) && isset($_POST["logout"])){
	session_destroy();
	header("Location: index.php");
}

?>

