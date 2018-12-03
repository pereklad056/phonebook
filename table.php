<?php
include"connection.php"; 

// $contact = "select * from contacts ";
// $contact = "select * from contacts where contact_id = ".$_REQUEST['contact_id']." ";

$contact = "select * from contacts where contact_id = 29"; // временно ввыводить одного из юзеров, пока не решен вывод нужного id

$sql_contact = $conn->query($contact); 

?>

<!-- <?php while($row = mysqli_fetch_assoc($sql_contact)) {?> -->
  <!-- <div id="accordion"> -->
    <!-- <a id="contact" class="left"><?php echo $row['contact_fname'] . " ". $row['contact_lname'];?></a> -->
    <!-- <a id='hide_view_details' class="right">View Details</a> -->
      <!-- <h3 id="contact"><input type="button" class="right" value="View Details"></h3> -->
        <table>
          <thead>
            <tr>
               <th>ADDRESS</th>
               <th>PHONE NUMBERS</th>
               <th>EMAILS</th>
            </tr>
          </thead>
          <tbody>
             <tr>
               <td><?php echo $row['contact_address'] .'<br>'. $row['contact_city'] .', '. $row['contact_country'] .'<br>'. $row['contact_zipcode']; ?></td>
               <td><?php echo $row['contact_cphone'] . '<br>'. $row['contact_hphone']; ?></td>
               <td><?php echo $row['contact_email']?></td>

             </tr>
          </tbody> 
        </table>
<!-- </div> -->
<!-- <?php } ?> -->