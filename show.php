<?php
	include "connection.php"; // include a file with mysql-connection, request for contacts into database

  include "login.php";

  if($_SESSION["loggedin"] == 1){

       // $contact = "select * from contacts where contact_id = ".$_REQUEST['contact_id']." ";
    $contact = "select * from contacts ";
  
    $sql_contact = $conn->query($contact); // display contacts which arrive due to request
    
    while($row = mysqli_fetch_assoc($sql_contact)) {

 
       // echo "<td> $row["contact_address"]; </td>";
      
          echo "<thead>";
                echo "<tr>";
                  echo "<th>ADDRESS</th>";
                  echo "<th>PHONE NUMBERS</th>";
                  echo "<th>EMAILS</th>";
                echo "</tr>";
          echo "</thead>";

          echo "<tbody>";
                echo "<tr>12</tr>";
                    // echo $row['contact_fname'];
          echo "</tbody>";
     }
  }
  ?>
	
 