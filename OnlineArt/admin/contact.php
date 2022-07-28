<?php include("header/header.php");?> 
<section id="One" class="wrapper style3">
   <div class="inner">
      <header class="align-center">
         <p>CUSTOMER</p>
         <h2>Queries</h2>
      </header>
   </div>
</section>
<section id="two" class="wrapper style2">
   <div class="content" style="overflow-x:auto">					
      <?php
         $sql = "select * from contact"; // this is query for displaying  all booking details
         $run = mysqli_query( $con, $sql );
         echo "
         <div class='container divform'>
         <table class='table table-bordered'  >
         	<tr>
         <th>Srno.</mmth>
         <th> Name</th>
         <th>E-mail</th>
         <th>Category</th>
         <th>Priority</th>
         <th>Message</th>	
         	</tr>";
         while ( $result = mysqli_fetch_array( $run ) ) {
         	echo "<tr>
         		<td>$result[0]</td>
         <td>$result[1]</td>
         <td>$result[2]</td>
         <td>$result[3]</td>
         <td>$result[4]</td>
         <td>$result[5]</td>
         </tr>";
         }
         echo "</table> 
         </div>";
         mysqli_close( $con );
         ?>
   </div>
</section>
<?php include( "../footer/footer.php" );?>