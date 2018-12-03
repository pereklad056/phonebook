<?php

	include 'connection.php';

	if(isset($_POST["login"])){
		
		$username = $conn->real_escape_string($_POST["username"]);

		$salt = 'qwerty';
		
		$password = $_POST["password"] . $salt;

		$password = $conn->real_escape_string($password);

		$data = $conn->query(" SELECT username FROM users WHERE username = '$username' AND password = '$password' ");

		if($data->num_rows > 0) {
			$_SESSION["username"] = $username;
			$_SESSION["loggedin"] = 1;			
			header("Location: index.php");
			exit();
		} else {
			echo 'enter correct username and password';
			exit();
		}
	}
?>


	<div class="container">
		<form method="POST">
     	   <h3>USERNAME</h3>
     	   <input type="text" name="username">
     	   <br>
     	   <h3>PASSWORD</h3>
     	   <input type="password" name="password">
    	   <br>
    	   <input type="submit" name="login" value="LOGIN">	
		</form>
	</div>


