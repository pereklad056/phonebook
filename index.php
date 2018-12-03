<?php 
	session_start();

	require "connection.php";

	$contact = "select * from contacts ";
	$sql_contact = $conn->query($contact); 

	//if(isset($_POST[""])
	

	if(isset($_SESSION)) {
		$username = $_SESSION["username"];
	}

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  	<title>Phonebook</title>
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="script.js"></script>
</head>
<body>
    <header>
        <div class="left"><a href="index.php">Phonebook</a></div>
        <div class="right"><a href="logout.php" name= 'logout'><?php echo $username . ' log out' ?></a></div>
    </header>

    <div id="tabs">

      <ul>
        <li><a id="publicPhonebookTab" href="#tabs-1">Public phonebook</a></li>
      	<li><a id="loginTab" href="#tabs-2">Login</a></li>
      </ul>

  
    <div id="tabs-1">   
        
        <!-- <?php while($row = mysqli_fetch_assoc($sql_contact)) {?> -->

    	<a class="contact" class="left"><?php echo $row['contact_fname'] . " ". $row['contact_lname']; ?></a>
    	<a class='hide_view_details hide' class="right" id="<?php echo $row['contact_id']; ?>" >View Details</a>
    	 		

    	<table id="tableoutput">
        	 
       	</table>

  		 <!-- <?php } ?> -->
    </div>

    
    <div>

    	<div id="tabs-2">
    </div>
    
    </div>
</body>
</html>
