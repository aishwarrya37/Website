<?php include("header/header.php");?> 
<section id="One" class="wrapper style3">
   <div class="inner">
      <header class="align-center">
         <p>MANAGE</p>
         <h2>Payment Details</h2>
      </header>
   </div>
</section>
<section id="two" class="wrapper style2">
<a href="javascript:;" style="padding: 0px 0;color:#000;margin-right: 3em;">

                  
   <div class="content" style="overflow-x:auto"><?php
      if(isset($_POST['search'])){
              echo "<script> 
            $(document).ready(function(){
            $('.alllist').hide();
            });
            </script>";
            	$sr=$_POST['paydate'];
                 $sr1=$_POST['paydate1'];
            // display by selected item.
            	$run=mysqli_query($con, "select * from payment_info where date between '$sr' and '$sr1'");
            		if (mysqli_num_rows($run) >0){	
               // output data of each row
                echo "<table class='container divform'>
      	<tr>	
      <th>Booking Art Id</mmth>
      <th> Customer Id</th>
      <th>Art Id</th>
      <th>Amount</th>
      <th>Date</th>
      	</tr>";
      while ( $result = mysqli_fetch_array( $run ) ) {
      	echo "<tr>
      <td>$result[0]</td>
      <td>$result[1]</td>
      <td>$result[2]</td>
      <td>$result[9]</td>
      <td>$result[8]</td>
      		</tr>";
      }
      echo "</table>";
            }	
                else {
                echo "<script> window.alert('Not Found ');
            window.location.assign('view_payment_detail.php');
            </script>";
            }
            }
      $sql = "select * from booking_info"; // this is query for displaying all payment details
      $run = mysqli_query( $con, $sql );
      if (mysqli_num_rows($run) >0){
      echo "<table class='container divform'>
      	<tr>
      	
      <th>Booking Art Id</mmth>
      <th> Customer Id</th>
      <th>Art Id</th>
      <th>Amount</th>
      <th>Date</th>
      	</tr>";
      while ( $result = mysqli_fetch_array( $run ) ) {
      	echo "<tr>
      <td>$result[0]</td>
      <td>$result[1]</td>
      <td>$result[2]</td>
      <td>$result[9]</td>
      <td>$result[8]</td>
      		</tr>";
      }
      echo "</table>";
}
      mysqli_close( $con );
      ?> </div>
</section>
<?php include( "../footer/footer.php" );?>