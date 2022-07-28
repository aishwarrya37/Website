<?php include("header/header.php");?>
<section id="One" class="wrapper style3">
   <div class="inner">
      <header class="align-center">
         <p>MANAGE</p>
         <h2>All Products</h2>
      </header>
   </div>
</section>
<style>
.form input{
  position:absolute;
  margin-left: 25%;
}
</style>
<section id="two" class="wrapper style2">
<a href="javascript:;" style="padding: 0px 0;color:#000;margin-right: 3em;">

                  <form class="navbar-form navbar-left" action="delete_modify_product.php" method="post">

                    <div class="input-group" >

                      <input list="pay" name="payname" type="text" class="form-control" style="
    color: black; width: 200px; position:absolute; margin-left: 40%;
" placeholder="Search Art" required>

                      <datalist id="pay">

                        <option value="Art Deco">

                        <option value="Fine Art">

                        <option value="Folk">

                        <option value="Pop Art">

                        <option value="Street Art">

                      </datalist>

                      <div class="input-group-btn">

                      <button class="btn btn-default" type="submit" style="
    max-height: 35px; margin-bottom: 10px; margin-left: 55%
" name="search" > Q

                      <i class="glyphicon glyphicon-search"></i>

                      </button>

                      </div>

                    </div>

                  </form>

                </a>
   <div class="content" style="overflow-x:auto">
      <?php
         if(isset($_POST['search'])){
              echo "<script> 
            $(document).ready(function(){
            $('.alllist').hide();
            });
            </script>";
            	$sr=$_POST['payname'];
            // display by selected item.
            	$run=mysqli_query($con, "select * from 	art_info where art_id='$sr'");
            		if (mysqli_num_rows($run) >0){	
               // output data of each row
                echo "<table class='container divform'>
         <tr>
         <th>Art ID:</th>
         <th>Art Name</th>
         <th>Art Category</th>
         <th>Art Price(Rs.)</th>
         <th>Art Discount(Rs.)</th>
         <th>Art Photo</th>
         <th>Art Detail</th>
         <th>Delete</th>
         <th>Edit</th>
         
         </tr>";

            	while($result=mysqli_fetch_array($run))
            {
            	echo "<tr>
         	<td>$result[0]</td>
         <td>$result[1]</td>
         <td>$result[2]</td>
         <td>$result[3]</td>
         <td>$result[4]</td>
         <td><img src='$result[5]' class='img-responsive dp'></td>
         <td><div style='width:300px'>$result[6]</div></td>
         <td><a class='button special-red' href='delete_product_now.php?id=$result[0]' class='btn btn-danger'>delete</a></td>
         <td><a class='button special' href='update_product_now.php?id=$result[0]' class='btn btn-danger'>Edit</a></td>
         	</tr>";
         }

         echo "</table>";
            }	
                else {
                echo "<script> window.alert('Not Found ');
            window.location.assign('delete_modify_product.php');
            </script>";
            }
            }
         $sql="select * from art_info"; // this is query for displaying all product
         $run=mysqli_query($con,$sql);
         // this table  of all arts 
         if (mysqli_num_rows($run) >0){
         echo "<table class='container divform'>
         <tr>
         <th>Art ID:</th>
         <th>Art Name</th>
         <th>Art Category</th>
         <th>Art Price(Rs.)</th>
         <th>Art Discount(Rs.)</th>
         <th>Art Photo</th>
         <th>Art Detail</th>
         <th>Delete</th>
         <th>Edit</th>
         
         </tr>";
         while($result=mysqli_fetch_array($run))
         {
         	echo "<tr>
         	<td>$result[0]</td>
         <td>$result[1]</td>
         <td>$result[2]</td>
         <td>$result[3]</td>
         <td>$result[4]</td>
         <td><img src='$result[5]' class='img-responsive dp'></td>
         <td><div style='width:300px'>$result[6]</div></td>
         <td><a class='button special-red' href='delete_product_now.php?id=$result[0]' class='btn btn-danger'>delete</a></td>
         <td><a class='button special' href='update_product_now.php?id=$result[0]' class='btn btn-danger'>Edit</a></td>
         	</tr>";
         }
         echo "</table>";
}
         mysqli_close($con);
         ?>
   </div>
</div>
</div>
</section>
<?php include("../footer/footer.php");?>